# ApkRepacker Complete Method Implementations
## For Android Kotlin Service Integration

---

## 1. DECOMPILE/DECODE METHODS

### 1.1 Main Decode Entry Point
**Location:** `apktool/src/main/java/brut/androlib/ApkDecoder.java`

#### Decode Method (Main)
```java
public void decode(Context context) throws AndrolibException {
    try {
        File outDir = getOutDir();
        AndrolibResources.sKeepBroken = mKeepBrokenResources;

        if (!mForceDelete && outDir.exists()) {
            throw new OutDirExistsException();
        }

        if (!mApkFile.isFile() || !mApkFile.canRead()) {
            throw new InFileNotFoundException();
        }

        OS.rmdir(outDir);
        outDir.mkdirs();

        LOGGER.info(R.string.log_using_apktool, Androlib.getVersion(), getApkName(context, mApkFile.getAbsolutePath()));

        if (hasResources()) {
            switch (mDecodeResources) {
                case DECODE_RESOURCES_NONE:
                    mAndrolib.decodeResourcesRaw(mApkFile, outDir);
                    if (mForceDecodeManifest == FORCE_DECODE_MANIFEST_FULL) {
                        // Handle manifest decoding
                    }
                    break;
                case DECODE_RESOURCES_FULL:
                    setTargetSdkVersion();
                    setAnalysisMode(mAnalysisMode, true);

                    if (hasManifest()) {
                        mAndrolib.decodeManifestWithResources(mApkFile, outDir, getResTable());
                    }
                    mAndrolib.decodeResourcesFull(mApkFile, outDir, getResTable());
                    break;
            }
        }

        if (hasSources()) {
            switch (mDecodeSources) {
                case DECODE_SOURCES_NONE:
                    mAndrolib.decodeSourcesRaw(mApkFile, outDir, "classes.dex");
                    break;
                case DECODE_SOURCES_SMALI:
                case DECODE_SOURCES_SMALI_ONLY_MAIN_CLASSES:
                    mAndrolib.decodeSourcesSmali(mApkFile, outDir, "classes.dex", mBakDeb, mApi);
                    break;
            }
        }

        if (hasMultipleSources()) {
            Set<String> files = mApkFile.getDirectory().getFiles(true);
            for (String file : files) {
                if (file.endsWith(".dex")) {
                    if (!file.equalsIgnoreCase("classes.dex")) {
                        switch (mDecodeSources) {
                            case DECODE_SOURCES_NONE:
                                mAndrolib.decodeSourcesRaw(mApkFile, outDir, file);
                                break;
                            case DECODE_SOURCES_SMALI:
                                mAndrolib.decodeSourcesSmali(mApkFile, outDir, file, mBakDeb, mApi);
                                break;
                            case DECODE_SOURCES_SMALI_ONLY_MAIN_CLASSES:
                                if (file.startsWith("classes") && file.endsWith(".dex")) {
                                    mAndrolib.decodeSourcesSmali(mApkFile, outDir, file, mBakDeb, mApi);
                                } else {
                                    mAndrolib.decodeSourcesRaw(mApkFile, outDir, file);
                                }
                                break;
                        }
                    }
                }
            }
        }

        mAndrolib.decodeRawFiles(mApkFile, outDir, mDecodeAssets);
        mAndrolib.decodeUnknownFiles(mApkFile, outDir, mResTable);
        mUncompressedFiles = new ArrayList<String>();
        mAndrolib.recordUncompressedFiles(mApkFile, mUncompressedFiles);
        mAndrolib.writeOriginalFiles(mApkFile, outDir);
        writeMetaFile(context);
    } catch (Exception ex) {
        throw new AndrolibException(ex);
    } finally {
        try {
            mApkFile.close();
        } catch (IOException ignored) {
        }
    }
}
```

#### Constructor Variants
```java
public ApkDecoder(Logger LOGGER) {
    this(new Androlib(LOGGER), LOGGER);
}

public ApkDecoder(File apkFile, Logger LOGGER) {
    this(apkFile, new Androlib(LOGGER), LOGGER);
}

public ApkDecoder(File apkFile, Androlib androlib, Logger LOGGER) {
    mAndrolib = androlib;
    setApkFile(apkFile);
    this.LOGGER = LOGGER;
}
```

#### Configuration Methods
```java
public void setDecodeSources(short mode) {
    mDecodeSources = mode;
}

public void setDecodeResources(short mode) {
    mDecodeResources = mode;
}

public void setForceDecodeManifest(short mode) {
    mForceDecodeManifest = mode;
}

public void setDecodeAssets(short mode) {
    mDecodeAssets = mode;
}

public void setBaksmaliDebugMode(boolean bakdeb) {
    mBakDeb = bakdeb;
}

public void setForceDelete(boolean forceDelete) {
    mForceDelete = forceDelete;
}

public void setTargetSdkVersion() throws AndrolibException, IOException {
    if (mResTable == null) {
        mResTable = mAndrolib.getResTable(mApkFile);
    }

    Map<String, String> sdkInfo = mResTable.getSdkInfo();
    if (sdkInfo.get("targetSdkVersion") != null) {
        mApi = Integer.parseInt(sdkInfo.get("targetSdkVersion"));
    }
}

public void setApi(int api) {
    mApi = api;
}
```

#### Decode Mode Constants
```java
public final static short DECODE_SOURCES_NONE = 0x0000;
public final static short DECODE_SOURCES_SMALI = 0x0001;
public final static short DECODE_SOURCES_SMALI_ONLY_MAIN_CLASSES = 0x0010;

public final static short DECODE_RESOURCES_NONE = 0x0100;
public final static short DECODE_RESOURCES_FULL = 0x0101;

public final static short FORCE_DECODE_MANIFEST_NONE = 0x0000;
public final static short FORCE_DECODE_MANIFEST_FULL = 0x0001;

public final static short DECODE_ASSETS_NONE = 0x0000;
public final static short DECODE_ASSETS_FULL = 0x0001;
```

---

### 1.2 Smali Decoder (DEX to Smali)
**Location:** `apktool/src/main/java/brut/androlib/src/SmaliDecoder.java`

```java
public class SmaliDecoder {

    public static void decode(File apkFile, File outDir, String dexName, boolean bakdeb, int api)
            throws AndrolibException {
        new SmaliDecoder(apkFile, outDir, dexName, bakdeb, api).decode();
    }

    private SmaliDecoder(File apkFile, File outDir, String dexName, boolean bakdeb, int api) {
        mApkFile = apkFile;
        mOutDir  = outDir;
        mDexFile = dexName;
        mBakDeb  = bakdeb;
        mApi     = api;
    }

    private void decode() throws AndrolibException {
        try {
            final BaksmaliOptions options = new BaksmaliOptions();

            // options
            options.deodex = false;
            options.implicitReferences = false;
            options.parameterRegisters = true;
            options.localsDirective = false;
            options.sequentialLabels = false;
            options.debugInfo = mBakDeb;
            options.codeOffsets = false;
            options.accessorComments = true;
            options.registerInfo = 0;
            options.inlineResolver = null;

            // set jobs automatically
            int jobs = Runtime.getRuntime().availableProcessors();
            if (jobs > 6) {
                jobs = 6;
            }

            // create the container
            DexFileFactory.MultiDexContainer container = DexFileFactory.loadDexContainer(mApkFile, null);
            DexFileFactory.MultiDexContainer.DexEntry dexEntry = container.getEntry(mDexFile);
            DexFile dexFile = dexEntry.getDexFile();

            if (dexFile.supportsOptimizedOpcodes()) {
                throw new AndrolibException("Warning: You are disassembling an odex file without deodexing it.");
            }

            if (dexFile instanceof DexBackedOdexFile) {
                options.inlineResolver =
                        InlineMethodResolver.createInlineMethodResolver(((DexBackedOdexFile)dexFile).getOdexVersion());
            }

            Baksmali.disassembleDexFile(dexFile, mOutDir, jobs, options);
        } catch (IOException ex) {
            throw new AndrolibException(ex);
        }
    }

    private final File mApkFile;
    private final File mOutDir;
    private final String mDexFile;
    private final boolean mBakDeb;
    private final int mApi;
}
```

---

### 1.3 Helper Methods (Androlib Decode)
**Location:** `apktool/src/main/java/brut/androlib/Androlib.java`

```java
public void decodeSourcesRaw(ExtFile apkFile, File outDir, String filename)
        throws AndrolibException {
    try {
        LOGGER.info(R.string.log_text,"Copying raw " + filename + " file...");
        apkFile.getDirectory().copyToDir(outDir, filename);
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public void decodeSourcesSmali(File apkFile, File outDir, String filename, boolean bakdeb, int api)
        throws AndrolibException {
    try {
        File smaliDir;
        if (filename.equalsIgnoreCase("classes.dex")) {
            smaliDir = new File(outDir, SMALI_DIRNAME);
        } else {
            smaliDir = new File(outDir, SMALI_DIRNAME + "_" + filename.substring(0, filename.indexOf(".")));
        }
        OS.rmdir(smaliDir);
        smaliDir.mkdirs();
        LOGGER.info(R.string.log_text,"Baksmaling " + filename + "...");
        SmaliDecoder.decode(apkFile, smaliDir, filename, bakdeb, api);
    } catch (BrutException ex) {
        throw new AndrolibException(ex);
    }
}

public void decodeManifestRaw(ExtFile apkFile, File outDir)
        throws AndrolibException {
    try {
        LOGGER.info(R.string.log_text,"Copying raw manifest...");
        apkFile.getDirectory().copyToDir(outDir, APK_MANIFEST_FILENAMES);
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public void decodeManifestFull(ExtFile apkFile, File outDir, ResTable resTable)
        throws AndrolibException {
    mAndRes.decodeManifest(resTable, apkFile, outDir);
}

public void decodeResourcesRaw(ExtFile apkFile, File outDir)
        throws AndrolibException {
    try {
        LOGGER.info(R.string.log_text,"Copying raw resources...");
        apkFile.getDirectory().copyToDir(outDir, APK_RESOURCES_FILENAMES);
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public void decodeResourcesFull(ExtFile apkFile, File outDir, ResTable resTable)
        throws AndrolibException {
    mAndRes.decode(resTable, apkFile, outDir);
}

public void decodeManifestWithResources(ExtFile apkFile, File outDir, ResTable resTable)
        throws AndrolibException {
    mAndRes.decodeManifestWithResources(resTable, apkFile, outDir);
}

public ResTable getResTable(ExtFile apkFile)
        throws AndrolibException {
    return mAndRes.getResTable(apkFile, true);
}

public ResTable getResTable(ExtFile apkFile, boolean loadMainPkg)
        throws AndrolibException {
    return mAndRes.getResTable(apkFile, loadMainPkg);
}
```

---

## 2. BUILD/RECOMPILE METHODS

### 2.1 Main Build Entry Point
**Location:** `apktool/src/main/java/brut/androlib/Androlib.java`

```java
public MetaInfo build(ExtFile appDir, File outFile)
        throws BrutException {
    LOGGER.info(R.string.log_text,"Using Apktool " + Androlib.getVersion());

    MetaInfo meta = readMetaFile(appDir);
    apkOptions.isFramework = meta.isFrameworkApk;
    apkOptions.resourcesAreCompressed = meta.compressionType;
    apkOptions.doNotCompress = meta.doNotCompress;

    mAndRes.setSdkInfo(meta.sdkInfo);
    mAndRes.setPackageId(meta.packageInfo);
    mAndRes.setPackageRenamed(meta.packageInfo);
    mAndRes.setVersionInfo(meta.versionInfo);
    mAndRes.setSharedLibrary(meta.sharedLibrary);
    mAndRes.setSparseResources(meta.sparseResources);

    if (meta.sdkInfo != null && meta.sdkInfo.get("minSdkVersion") != null) {
        String minSdkVersion = meta.sdkInfo.get("minSdkVersion");
        mMinSdkVersion = mAndRes.getMinSdkVersionFromAndroidCodename(meta, minSdkVersion);
    }

    if (outFile == null) {
        String outFileName = meta.apkFileName;
        outFile = new File(appDir, "dist" + File.separator + (outFileName == null ? "out.apk" : outFileName));
    }

    new File(appDir, APK_DIRNAME).mkdirs();
    File manifest = new File(appDir, "AndroidManifest.xml");
    File manifestOriginal = new File(appDir, "AndroidManifest.xml.orig");

    buildSources(appDir);
    buildNonDefaultSources(appDir);
    buildManifestFile(appDir, manifest, manifestOriginal);
    buildResources(appDir, meta.usesFramework);
    buildLibs(appDir);
    buildCopyOriginalFiles(appDir);
    buildApk(appDir, outFile);

    // we must go after the Apk is built, and copy the files in via Zip
    // this is because Aapt won't add files it doesn't know (ex unknown files)
    buildUnknownFiles(appDir, outFile, meta);

    // we copied the AndroidManifest.xml to AndroidManifest.xml.orig so we can edit it
    // lets restore the unedited one, to not change the original
    if (manifest.isFile() && manifest.exists() && manifestOriginal.isFile()) {
        try {
            if (new File(appDir, "AndroidManifest.xml").delete()) {
                FileUtils.moveFile(manifestOriginal, manifest);
            }
        } catch (IOException ex) {
            throw new AndrolibException(ex.getMessage());
        }
    }
    LOGGER.info(R.string.log_text,"Built apk...");
    return meta;
}

public MetaInfo readMetaFile(ExtFile appDir)
        throws AndrolibException {
    try {
        InputStream in = appDir.getDirectory().getFileInput("apktool.json");
        MetaInfo meta = MetaInfo.load(in);
        in.close();
        return meta;
    } catch (DirectoryException | IOException |JSONException ex) {
        throw new AndrolibException(ex);
    }
}

public void writeMetaFile(File mOutDir, MetaInfo meta)
        throws AndrolibException {
    try {
        meta.save(new File(mOutDir, "apktool.json"));
    } catch (IOException|JSONException ex) {
        throw new AndrolibException(ex);
    }
}
```

---

### 2.2 Build Source Methods
**Location:** `apktool/src/main/java/brut/androlib/Androlib.java`

```java
public void buildSources(File appDir)
        throws AndrolibException {
    if (!buildSourcesRaw(appDir, "classes.dex") && !buildSourcesSmali(appDir, "smali", "classes.dex")) {
        LOGGER.warning(R.string.log_text,"Could not find sources");
    }
}

public void buildNonDefaultSources(ExtFile appDir)
        throws AndrolibException {
    File smaliDir;
    for (int i = 2; i <= 99; i++) {
        smaliDir = new File(appDir, SMALI_DIRNAME + "_" + i);
        if (!smaliDir.exists()) {
            continue;
        }
        buildSourcesSmali(appDir, SMALI_DIRNAME + "_" + i, "classes" + i + ".dex");
    }
}

public boolean buildSourcesRaw(File appDir, String filename)
        throws AndrolibException {
    File working = new File(appDir, filename);
    if (!working.exists()) {
        return false;
    }
    File stored = new File(appDir, APK_DIRNAME + "/" + filename);
    if (apkOptions.forceBuildAll || isModified(working, stored)) {
        LOGGER.info(R.string.log_text,"Copying " + appDir.toString() + " " + filename + " file...");
        try {
            BrutIO.copyAndClose(new FileInputStream(working), new FileOutputStream(stored));
            return true;
        } catch (IOException ex) {
            throw new AndrolibException(ex);
        }
    }
    return true;
}

public boolean buildSourcesSmali(File appDir, String folder, String filename)
        throws AndrolibException {
    ExtFile smaliDir = new ExtFile(appDir, folder);
    if (!smaliDir.exists()) {
        return false;
    }
    File dex = new File(appDir, APK_DIRNAME + "/" + filename);
    if (! apkOptions.forceBuildAll) {
        LOGGER.info(R.string.log_text,"Checking whether sources has changed...");
    }
    if (apkOptions.forceBuildAll || isModified(smaliDir, dex)) {
        LOGGER.info(R.string.log_text,"Smaling " + folder + " folder into " + filename + "...");
        dex.delete();
        SmaliBuilder.build(smaliDir, dex, apkOptions.forceApi > 0 ? apkOptions.forceApi : mMinSdkVersion);
    }
    return true;
}
```

---

### 2.3 Build Resources Methods
**Location:** `apktool/src/main/java/brut/androlib/Androlib.java`

```java
public void buildResources(ExtFile appDir, UsesFramework usesFramework)
        throws BrutException {
    if (!buildResourcesRaw(appDir) && !buildResourcesFull(appDir, usesFramework)
            && !buildManifest(appDir, usesFramework)) {
        LOGGER.warning(R.string.log_text,"Could not find resources");
    }
}

public boolean buildResourcesRaw(ExtFile appDir)
        throws AndrolibException {
    try {
        if (!new File(appDir, "resources.arsc").exists()) {
            return false;
        }
        File apkDir = new File(appDir, APK_DIRNAME);
        if (! apkOptions.forceBuildAll) {
            LOGGER.info(R.string.log_text,"Checking whether resources has changed...");
        }
        if (apkOptions.forceBuildAll || isModified(newFiles(APK_RESOURCES_FILENAMES, appDir),
                newFiles(APK_RESOURCES_FILENAMES, apkDir))) {
            LOGGER.info(R.string.log_text,"Copying raw resources...");
            appDir.getDirectory().copyToDir(apkDir, APK_RESOURCES_FILENAMES);
        }
        return true;
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public boolean buildResourcesFull(File appDir, UsesFramework usesFramework)
        throws AndrolibException {
    try {
        if (!new File(appDir, "res").exists()) {
            return false;
        }
        if (! apkOptions.forceBuildAll) {
            LOGGER.info(R.string.log_text,"Checking whether resources has changed...");
        }

        File apkDir = new File(appDir, APK_DIRNAME);

        if (apkOptions.forceBuildAll || isModified(newFiles(APK_RESOURCES_WITHOUT_RES_FILENAMES, appDir),
                newFiles(APK_RESOURCES_WITHOUT_RES_FILENAMES, apkDir))) {
            LOGGER.info(R.string.log_text,"Building resources...");

            if (apkOptions.debugMode) {
                ResXmlPatcher.removeApplicationDebugTag(new File(appDir, "AndroidManifest.xml"),LOGGER);
            }

            File apkFile = File.createTempFile("APKTOOL", null);
            apkFile.delete();

            File ninePatch = new File(appDir, "9patch");
            if (!ninePatch.exists()) {
                ninePatch = null;
            }
            mAndRes.aaptPackage(apkFile, new File(appDir,
                            "AndroidManifest.xml"), new File(appDir, "res"),
                    ninePatch, null, parseUsesFramework(usesFramework));

            Directory tmpDir = new ExtFile(apkFile).getDirectory();
            // Copy resources from temp to apk build directory
            apkDir.mkdirs();
            tmpDir.copyToDir(apkDir);
            apkFile.delete();
        }
        return true;
    } catch (Exception ex) {
        throw new AndrolibException(ex);
    }
}

public boolean buildManifestRaw(ExtFile appDir)
        throws AndrolibException {
    try {
        File apkDir = new File(appDir, APK_DIRNAME);
        LOGGER.info(R.string.log_text,"Copying raw AndroidManifest.xml...");
        appDir.getDirectory().copyToDir(apkDir, APK_MANIFEST_FILENAMES);
        return true;
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public boolean buildManifest(ExtFile appDir, UsesFramework usesFramework)
        throws BrutException {
    try {
        if (!new File(appDir, "AndroidManifest.xml").exists()) {
            return false;
        }
        if (! apkOptions.forceBuildAll) {
            LOGGER.info(R.string.log_text,"Checking whether resources has changed...");
        }

        File apkDir = new File(appDir, APK_DIRNAME);

        if (apkOptions.forceBuildAll || isModified(newFiles(APK_MANIFEST_FILENAMES, appDir),
                newFiles(APK_MANIFEST_FILENAMES, apkDir))) {
            LOGGER.info(R.string.log_text,"Building AndroidManifest.xml...");

            File apkFile = File.createTempFile("APKTOOL", null);
            apkFile.delete();

            File ninePatch = new File(appDir, "9patch");
            if (!ninePatch.exists()) {
                ninePatch = null;
            }

            mAndRes.aaptPackage(apkFile, new File(appDir, "AndroidManifest.xml"),
                    null, ninePatch, null, parseUsesFramework(usesFramework));

            Directory tmpDir = new ExtFile(apkFile).getDirectory();
            apkDir.mkdirs();
            tmpDir.copyToDir(apkDir);
            apkFile.delete();
        }
        return true;
    } catch (Exception ex) {
        throw new AndrolibException(ex);
    }
}
```

---

### 2.4 Smali Builder (Smali to DEX)
**Location:** `apktool/src/main/java/brut/androlib/src/SmaliBuilder.java`

```java
public class SmaliBuilder {
    public static void build(ExtFile smaliDir, File dexFile, int apiLevel) throws AndrolibException {
        new SmaliBuilder(smaliDir, dexFile, apiLevel).build();
    }

    public static void build(ExtFile smaliDir, File dexFile) throws AndrolibException {
        new SmaliBuilder(smaliDir, dexFile, 0).build();
    }

    private SmaliBuilder(ExtFile smaliDir, File dexFile, int apiLevel) {
        mSmaliDir = smaliDir;
        mDexFile = dexFile;
        mApiLevel = apiLevel;
    }

    private void build() throws AndrolibException {
        try {
            DexBuilder dexBuilder;
            if (mApiLevel > 0) {
                dexBuilder = new DexBuilder(Opcodes.forApi(mApiLevel));
            } else {
                dexBuilder = new DexBuilder(Opcodes.getDefault());
            }

            for (String fileName : mSmaliDir.getDirectory().getFiles(true)) {
                buildFile(fileName, dexBuilder);
            }
            dexBuilder.writeTo(new FileDataStore( new File(mDexFile.getAbsolutePath())));
        } catch (IOException | DirectoryException ex) {
            throw new AndrolibException(ex);
        }
    }

    private void buildFile(String fileName, DexBuilder dexBuilder)
            throws AndrolibException, IOException {
        try {
            if(!fileName.endsWith(".smali")) {
                return;
            }
            File smaliFile = new File(mSmaliDir, fileName);
            SmaliMod.assembleSmaliFile(smaliFile, dexBuilder, mApiLevel, verboseErrors, printTokens);
        } catch (RecognitionException ex) {
            throw new AndrolibException(ex);
        }
    }

    private final ExtFile mSmaliDir;
    private final File mDexFile;
    private int mApiLevel = 0;
    private final static Logger LOGGER = Logger.getLogger(SmaliBuilder.class.getName());
}
```

---

### 2.5 Build APK (Packaging)
**Location:** `apktool/src/main/java/brut/androlib/Androlib.java`

```java
public void buildApk(File appDir, File outApk) throws AndrolibException {
    LOGGER.info(R.string.log_text,"Building apk file...");
    if (outApk.exists()) {
        outApk.delete();
    } else {
        File outDir = outApk.getParentFile();
        if (outDir != null && !outDir.exists()) {
            outDir.mkdirs();
        }
    }
    File assetDir = new File(appDir, "assets");
    if (!assetDir.exists()) {
        assetDir = null;
    }
    mAndRes.zipPackage(outApk, new File(appDir, APK_DIRNAME), assetDir);
}

public void buildLibs(File appDir) throws AndrolibException {
    buildLibrary(appDir, "lib");
    buildLibrary(appDir, "libs");
    buildLibrary(appDir, "kotlin");
    buildLibrary(appDir, "META-INF/services");
}

public void buildLibrary(File appDir, String folder) throws AndrolibException {
    File working = new File(appDir, folder);

    if (! working.exists()) {
        return;
    }

    File stored = new File(appDir, APK_DIRNAME + "/" + folder);
    if (apkOptions.forceBuildAll || isModified(working, stored)) {
        LOGGER.info(R.string.log_text,"Copying libs... (/" + folder + ")");
        try {
            OS.rmdir(stored);
            OS.cpdir(working, stored);
        } catch (BrutException ex) {
            throw new AndrolibException(ex);
        }
    }
}

public void buildCopyOriginalFiles(File appDir)
        throws AndrolibException {
    try {
        LOGGER.info(R.string.log_text,"Copying original files...");
        appDir.getDirectory().copyToDir(new File(appDir, APK_DIRNAME), APK_STANDARD_ALL_FILENAMES);
    } catch (DirectoryException ex) {
        throw new AndrolibException(ex);
    }
}

public void buildUnknownFiles(File appDir, File outFile, MetaInfo meta)
        throws AndrolibException {
    try {
        LOGGER.info(R.string.log_text,"Copying unknown files...");
        File unknownDir = new File(appDir, UNK_DIRNAME);

        if (!unknownDir.exists()) {
            return;
        }

        File tempFile = File.createTempFile("APKTOOL", null);
        tempFile.delete();

        ZipUtils.zipDirs(unknownDir, tempFile);
        ZipFile inputFile = new ZipFile(outFile);
        ZipOutputStream outputFile = new ZipOutputStream(new FileOutputStream(tempFile));

        copyExistingFiles(inputFile, outputFile);
        copyUnknownFiles(appDir, outputFile, meta.unknownFiles);

        outputFile.close();
        inputFile.close();

        outFile.delete();
        tempFile.renameTo(outFile);
        tempFile.delete();
    } catch (Exception ex) {
        throw new AndrolibException(ex);
    }
}
```

---

### 2.6 ZIP Package Creation
**Location:** `apktool/src/main/java/brut/androlib/res/AndrolibResources.java`

```java
public void zipPackage(File apkFile, File rawDir, File assetDir)
        throws AndrolibException {

    try {
        ZipUtils.zipFolders(rawDir, apkFile, assetDir, apkOptions.doNotCompress);
    } catch (IOException | BrutException ex) {
        throw new AndrolibException(ex);
    }
}

public void aaptPackage(File apkFile, File manifest, File resDir, File rawDir, File assetDir, File[] include)
        throws AndrolibException {
    try {
        List<String> cmd = new ArrayList<String>();
        
        if (apkOptions.isAapt2()) {
            aapt2Package(apkFile, manifest, resDir, rawDir, assetDir, include, cmd, false);
        } else {
            aapt1Package(apkFile, manifest, resDir, rawDir, assetDir, include, cmd, false);
        }
    } catch (Exception ex) {
        throw new AndrolibException(ex);
    }
}
```

---

## 3. APK OPTIONS & CONFIGURATION

**Location:** `apktool/src/main/java/brut/androlib/ApkOptions.java`

```java
public class ApkOptions {
    public boolean forceBuildAll = false;
    public boolean forceDeleteFramework = false;
    public boolean debugMode = false;
    public boolean verbose = false;
    public boolean copyOriginalFiles = false;
    public boolean updateFiles = false;
    public boolean isFramework = false;
    public boolean resourcesAreCompressed = false;
    public boolean useAapt2 = false;
    public boolean noCrunch = false;
    public int forceApi = 0;
    public Collection<String> doNotCompress;

    public String frameworkFolderLocation = null;
    public String frameworkTag = null;
    public String aaptPath = "";

    public int aaptVersion = 1; // default to v1

    public boolean isAapt2() {
        return this.useAapt2 || this.aaptVersion == 2;
    }

    public ApkOptions(){}
    public static final ApkOptions INSTANCE = new ApkOptions();
}
```

---

## 4. SIGNING METHODS

**Location:** `app/src/main/java/com/mrikso/apkrepacker/utils/SignUtil.java`

```java
public boolean sign(File in, File out, int minSdk, Logger logger) throws Exception {
    if (msgId > 0)
        logger.warning(msgId, msgObj);
    if (out.exists()) {
        FileUtil.deleteFile(out);
    }
    ApkSigner.SignerConfig.Builder builder = new ApkSigner.SignerConfig.Builder("CERT", privateKey, ImmutableList.of(certificate));
    ApkSigner.SignerConfig signerConfig = builder.build();
    ApkSigner.Builder apksigner = new ApkSigner.Builder(ImmutableList.of(signerConfig));
    apksigner.setInputApk(in);
    apksigner.setOutputApk(out);
    apksigner.setCreatedBy("ApkRepacker by Mr Ikso");
    apksigner.setMinSdkVersion(minSdk);
    apksigner.setV1SigningEnabled(true);
    apksigner.setV2SigningEnabled(preferenceHelper.isV2SignatureEnabled());
    ApkSigner signer = apksigner.build();
    logger.info(R.string.log_text, String.format("Signing Apk: %s", in));
    try {
        signer.sign();
        logger.info(R.string.sign_done, out);
        return true;
    } catch (Exception e) {
        logger.log(Level.WARNING, "Signature failed! ", e);
        e.printStackTrace();
        return false;
    }
}

public boolean sign(File in, File out, int minSdk) throws Exception {
    if (out.exists()) {
        FileUtil.deleteFile(out);
    }
    ApkSigner.SignerConfig.Builder builder = new ApkSigner.SignerConfig.Builder("CERT", privateKey, ImmutableList.of(certificate));
    ApkSigner.SignerConfig signerConfig = builder.build();
    ApkSigner.Builder apksigner = new ApkSigner.Builder(ImmutableList.of(signerConfig));
    apksigner.setInputApk(in);
    apksigner.setOutputApk(out);
    apksigner.setCreatedBy("Apk Repacker by Mr Ikso");
    apksigner.setMinSdkVersion(minSdk);
    apksigner.setV1SigningEnabled(true);
    apksigner.setV2SigningEnabled(preferenceHelper.isV2SignatureEnabled());
    ApkSigner signer = apksigner.build();
    try {
        signer.sign();
        return true;
    } catch (Exception e) {
        e.printStackTrace();
        return false;
    }
}
```

---

## 5. KEY DEPENDENCIES & IMPORTS

### Baksmali/Smali (DEX Processing)
```
org.jf.baksmali:baksmali:2.3.4
org.jf.smali:smali:2.3.4
org.jf.dexlib2:dexlib2:2.3.4
```

### APK Signing
```
com.android.tools.apksig:apksig:6.0.0+
```

### Resource Processing
```
AAPT (Android Asset Packaging Tool) - via AaptManager
AAPT2 (newer version with compilation)
```

### XML Parsing
```
org.xmlpull:xpp3:1.1.4c
```

### File Operations
```
commons-io:commons-io:2.6+
```

---

## 6. INTEGRATION GUIDE FOR ANDROID KOTLIN SERVICE

### Minimal Complete Flow Example:

```kotlin
// 1. Initialize Decoder
val apkFile = File("/path/to/apk")
val outputDir = File("/path/to/output")
val logger = YourLogger() // Implement Logger interface

val androlib = Androlib(logger)
val decoder = ApkDecoder(apkFile, androlib, logger)

// 2. Configure Decode Options
decoder.setDecodeSources(ApkDecoder.DECODE_SOURCES_SMALI)
decoder.setDecodeResources(ApkDecoder.DECODE_RESOURCES_FULL)
decoder.setDecodeAssets(ApkDecoder.DECODE_ASSETS_FULL)
decoder.setBaksmaliDebugMode(true)
decoder.setOutDir(outputDir)
decoder.setForceDelete(true)

// 3. Execute Decode
decoder.decode(context)

// 4. For Building (Reverse Process)
val appDir = ExtFile(outputDir)
val outApk = File("/path/to/output.apk")
val buildAndrolib = Androlib(ApkOptions.INSTANCE, logger)
val meta = buildAndrolib.build(appDir, outApk)

// 5. Signing
val signUtil = SignUtil()
signUtil.sign(outApk, signedApk, 21) // minSdk=21
```

---

## 7. Important Notes

- **Apktool Version:** 2.4.1
- **Baksmali/Smali Version:** 2.3.4
- **Dexlib2 Version:** 2.3.4
- **Default API Level:** 15 (configurable)
- **Thread Pool:** Automatically uses available processors (max 6 for smali decoding)
- **Baksmali Options:** Debug info enabled by default, implicit references disabled
- **Resource Compression:** Respects original compression settings
- **V1/V2 Signing:** Both supported, V2 optional based on config

