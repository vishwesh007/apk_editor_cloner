.class public final Landroidx/exifinterface/media/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:[B

.field private static final B:[B

.field private static final C:[B

.field static final D:[Ljava/lang/String;

.field static final E:[I

.field static final F:[B

.field private static final G:Landroidx/exifinterface/media/d;

.field static final H:[[Landroidx/exifinterface/media/d;

.field private static final I:[Landroidx/exifinterface/media/d;

.field private static final J:[Ljava/util/HashMap;

.field private static final K:[Ljava/util/HashMap;

.field private static final L:Ljava/util/HashSet;

.field private static final M:Ljava/util/HashMap;

.field static final N:Ljava/nio/charset/Charset;

.field static final O:[B

.field private static final P:[B

.field private static final l:Z

.field private static final m:Ljava/util/List;

.field private static final n:Ljava/util/List;

.field public static final o:[I

.field public static final p:[I

.field static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B

.field private static final x:[B

.field private static final y:[B

.field private static final z:[B


# instance fields
.field private a:Ljava/io/FileDescriptor;

.field private b:Landroid/content/res/AssetManager$AssetInputStream;

.field private c:I

.field private final d:[Ljava/util/HashMap;

.field private e:Ljava/util/HashSet;

.field private f:Ljava/nio/ByteOrder;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ExifInterface"

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Landroidx/exifinterface/media/g;->l:Z

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v1, v3, v8

    const/16 v10, 0x8

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v0

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/g;->m:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v0

    .line 10
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/g;->n:Ljava/util/List;

    .line 11
    filled-new-array {v10, v10, v10}, [I

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/g;->o:[I

    .line 12
    filled-new-array {v10}, [I

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/g;->p:[I

    new-array v3, v0, [B

    .line 13
    fill-array-data v3, :array_0

    sput-object v3, Landroidx/exifinterface/media/g;->q:[B

    new-array v3, v2, [B

    .line 14
    fill-array-data v3, :array_1

    sput-object v3, Landroidx/exifinterface/media/g;->r:[B

    new-array v3, v2, [B

    .line 15
    fill-array-data v3, :array_2

    sput-object v3, Landroidx/exifinterface/media/g;->s:[B

    new-array v3, v2, [B

    .line 16
    fill-array-data v3, :array_3

    sput-object v3, Landroidx/exifinterface/media/g;->t:[B

    new-array v3, v7, [B

    .line 17
    fill-array-data v3, :array_4

    sput-object v3, Landroidx/exifinterface/media/g;->u:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 18
    fill-array-data v12, :array_5

    sput-object v12, Landroidx/exifinterface/media/g;->v:[B

    new-array v12, v10, [B

    .line 19
    fill-array-data v12, :array_6

    sput-object v12, Landroidx/exifinterface/media/g;->w:[B

    new-array v12, v2, [B

    .line 20
    fill-array-data v12, :array_7

    sput-object v12, Landroidx/exifinterface/media/g;->x:[B

    new-array v12, v2, [B

    .line 21
    fill-array-data v12, :array_8

    sput-object v12, Landroidx/exifinterface/media/g;->y:[B

    new-array v12, v2, [B

    .line 22
    fill-array-data v12, :array_9

    sput-object v12, Landroidx/exifinterface/media/g;->z:[B

    new-array v12, v2, [B

    .line 23
    fill-array-data v12, :array_a

    sput-object v12, Landroidx/exifinterface/media/g;->A:[B

    new-array v12, v2, [B

    .line 24
    fill-array-data v12, :array_b

    sput-object v12, Landroidx/exifinterface/media/g;->B:[B

    new-array v12, v2, [B

    .line 25
    fill-array-data v12, :array_c

    sput-object v12, Landroidx/exifinterface/media/g;->C:[B

    const-string v12, "VP8X"

    .line 26
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v3, "VP8L"

    .line 27
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v3, "VP8 "

    .line 28
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v3, "ANIM"

    .line 29
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v3, "ANMF"

    .line 30
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 31
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroidx/exifinterface/media/g;->D:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 32
    fill-array-data v12, :array_d

    sput-object v12, Landroidx/exifinterface/media/g;->E:[I

    new-array v12, v10, [B

    .line 33
    fill-array-data v12, :array_e

    sput-object v12, Landroidx/exifinterface/media/g;->F:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Landroidx/exifinterface/media/d;

    .line 34
    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v7, v2, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v10, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v3, v12, v4

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v10, v0, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    aput-object v3, v12, v8

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v10, v0, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    aput-object v3, v12, v0

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v3, v12, v2

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v3, v12, v14

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v7, v0, v2, v10}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "SamplesPerPixel"

    const/16 v10, 0x115

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "RowsPerStrip"

    const/16 v10, 0x116

    invoke-direct {v3, v10, v0, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "StripByteCounts"

    const/16 v10, 0x117

    invoke-direct {v3, v10, v0, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v10, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "YResolution"

    const/16 v10, 0x11b

    invoke-direct {v3, v10, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "PlanarConfiguration"

    const/16 v10, 0x11c

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "ResolutionUnit"

    const/16 v10, 0x128

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "TransferFunction"

    const/16 v10, 0x12d

    invoke-direct {v3, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "Software"

    const/16 v10, 0x131

    invoke-direct {v3, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v7, "DateTime"

    const/16 v10, 0x132

    invoke-direct {v3, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "Artist"

    const/16 v7, 0x13b

    invoke-direct {v3, v7, v8, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "WhitePoint"

    const/16 v7, 0x13e

    invoke-direct {v3, v7, v14, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v6, v14, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "SubIFDPointer"

    const/16 v6, 0x14a

    invoke-direct {v3, v6, v2, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "JPEGInterchangeFormat"

    const/16 v6, 0x201

    invoke-direct {v3, v6, v2, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "JPEGInterchangeFormatLength"

    const/16 v6, 0x202

    invoke-direct {v3, v6, v2, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "YCbCrCoefficients"

    const/16 v6, 0x211

    invoke-direct {v3, v6, v14, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "YCbCrSubSampling"

    const/16 v6, 0x212

    invoke-direct {v3, v6, v0, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "YCbCrPositioning"

    const/16 v6, 0x213

    invoke-direct {v3, v6, v0, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "ReferenceBlackWhite"

    const/16 v6, 0x214

    invoke-direct {v3, v6, v14, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v10, "Copyright"

    const v6, 0x8298

    invoke-direct {v3, v6, v8, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v10, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v10, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v2, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v14, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v10, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v10, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "ISO"

    invoke-direct {v3, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Landroidx/exifinterface/media/d;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v7, v4, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    const/16 v3, 0x4a

    new-array v3, v3, [Landroidx/exifinterface/media/d;

    .line 35
    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v10, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v10, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v4

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v8

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v10, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v0

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v2

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v10, v4, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v14

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v10, v0, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v10, v2, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v3, v4

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v7, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v7, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v7, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v7, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v7, v0, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v7, v0, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v7, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v7, v10, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Landroidx/exifinterface/media/d;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v7, v0, v2, v6}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    const/16 v4, 0x20

    new-array v4, v4, [Landroidx/exifinterface/media/d;

    .line 36
    new-instance v6, Landroidx/exifinterface/media/d;

    const-string v7, "GPSVersionID"

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-direct {v6, v2, v10, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v6, v4, v2

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSLatitudeRef"

    invoke-direct {v2, v10, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v10

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSLatitude"

    const/16 v7, 0xa

    invoke-direct {v2, v8, v14, v7, v6}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    aput-object v2, v4, v8

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v2, v0, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v0

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v2, v10, v14, v7, v6}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    aput-object v2, v4, v10

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v2, v14, v7, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v14

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0xb

    const-string v7, "GPSDOP"

    invoke-direct {v2, v6, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0xc

    const-string v7, "GPSSpeedRef"

    invoke-direct {v2, v6, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0xd

    const-string v7, "GPSSpeed"

    invoke-direct {v2, v6, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0xf

    const-string v7, "GPSTrack"

    invoke-direct {v2, v6, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x10

    const-string v7, "GPSImgDirectionRef"

    invoke-direct {v2, v6, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x11

    const-string v7, "GPSImgDirection"

    invoke-direct {v2, v6, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x12

    const-string v7, "GPSMapDatum"

    invoke-direct {v2, v6, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x13

    const-string v7, "GPSDestLatitudeRef"

    invoke-direct {v2, v6, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x14

    const-string v7, "GPSDestLatitude"

    invoke-direct {v2, v6, v14, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const/16 v6, 0x17

    const-string v7, "GPSDestBearingRef"

    invoke-direct {v2, v6, v8, v7}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v6

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSProcessingMethod"

    const/4 v7, 0x7

    const/16 v10, 0x1b

    invoke-direct {v2, v10, v7, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v10

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSAreaInformation"

    const/16 v10, 0x1c

    invoke-direct {v2, v10, v7, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v10

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v2, v7, v8, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v2, v7, v0, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v2, v7, v14, v6}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v4, v7

    const/4 v2, 0x1

    new-array v6, v2, [Landroidx/exifinterface/media/d;

    .line 37
    new-instance v7, Landroidx/exifinterface/media/d;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v2, v8, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v7, v6, v2

    const/16 v7, 0x26

    new-array v7, v7, [Landroidx/exifinterface/media/d;

    .line 38
    new-instance v10, Landroidx/exifinterface/media/d;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v0, 0x4

    invoke-direct {v10, v8, v0, v14}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v10, v7, v2

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v2, v10, v0, v8}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x1

    aput-object v2, v7, v8

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v2, v10, v14, v0, v8}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x2

    aput-object v2, v7, v8

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v2, v10, v14, v0, v8}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    aput-object v2, v7, v14

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v2, v10, v14, v8}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v7, v0

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v8, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v8, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v8, v10, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v14, 0x4

    invoke-direct {v0, v8, v10, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v8, v10, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x19

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Xmp"

    const/16 v8, 0x2bc

    const/4 v10, 0x1

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x20

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x21

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x22

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x23

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x24

    aput-object v0, v7, v2

    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x3

    const/4 v14, 0x4

    invoke-direct {v0, v8, v10, v14, v2}, Landroidx/exifinterface/media/d;-><init>(IIILjava/lang/String;)V

    const/16 v2, 0x25

    aput-object v0, v7, v2

    .line 39
    new-instance v0, Landroidx/exifinterface/media/d;

    const-string v2, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v8, v10, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroidx/exifinterface/media/g;->G:Landroidx/exifinterface/media/d;

    new-array v0, v10, [Landroidx/exifinterface/media/d;

    .line 40
    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v2, v10, v14, v8}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x0

    aput-object v2, v0, v8

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v2, v10, v14, v8}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x1

    aput-object v2, v0, v8

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v2, v10, v14, v8}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x2

    aput-object v2, v0, v8

    new-array v2, v8, [Landroidx/exifinterface/media/d;

    .line 41
    new-instance v8, Landroidx/exifinterface/media/d;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v11, v14, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v10, 0x0

    aput-object v8, v2, v10

    new-instance v8, Landroidx/exifinterface/media/d;

    const-string v11, "PreviewImageLength"

    const/16 v10, 0x102

    invoke-direct {v8, v10, v14, v11}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v10, 0x1

    aput-object v8, v2, v10

    new-array v8, v10, [Landroidx/exifinterface/media/d;

    .line 42
    new-instance v11, Landroidx/exifinterface/media/d;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v10, v13, v14}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    const/4 v11, 0x1

    new-array v14, v11, [Landroidx/exifinterface/media/d;

    .line 43
    new-instance v11, Landroidx/exifinterface/media/d;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v1

    const/16 v1, 0x37

    invoke-direct {v11, v1, v13, v10}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v11, v14, v1

    const/16 v10, 0xa

    new-array v11, v10, [[Landroidx/exifinterface/media/d;

    aput-object v12, v11, v1

    const/4 v1, 0x1

    aput-object v3, v11, v1

    const/4 v1, 0x2

    aput-object v4, v11, v1

    aput-object v6, v11, v13

    const/4 v1, 0x4

    aput-object v7, v11, v1

    const/4 v3, 0x5

    aput-object v12, v11, v3

    const/4 v3, 0x6

    aput-object v0, v11, v3

    const/4 v0, 0x7

    aput-object v2, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v14, v11, v0

    .line 44
    sput-object v11, Landroidx/exifinterface/media/g;->H:[[Landroidx/exifinterface/media/d;

    new-array v0, v3, [Landroidx/exifinterface/media/d;

    .line 45
    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v2, v4, v1, v3}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v2, v4, v1, v3}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v4, v1, v3}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v4, v1, v3}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Landroidx/exifinterface/media/d;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v3}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Landroidx/exifinterface/media/d;

    const-string v2, "ImageProcessingIFDPointer"

    const/16 v3, 0x2040

    invoke-direct {v1, v3, v6, v2}, Landroidx/exifinterface/media/d;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroidx/exifinterface/media/g;->I:[Landroidx/exifinterface/media/d;

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/util/HashMap;

    .line 46
    sput-object v1, Landroidx/exifinterface/media/g;->J:[Ljava/util/HashMap;

    new-array v0, v0, [Ljava/util/HashMap;

    .line 47
    sput-object v0, Landroidx/exifinterface/media/g;->K:[Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "DigitalZoomRatio"

    const-string v2, "ExposureTime"

    const-string v3, "FNumber"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v3, v1, v2, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/exifinterface/media/g;->L:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/exifinterface/media/g;->M:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 50
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/g;->N:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/g;->O:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/g;->P:[B

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "UTC"

    .line 54
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 56
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 57
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/g;->H:[[Landroidx/exifinterface/media/d;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 58
    sget-object v1, Landroidx/exifinterface/media/g;->J:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 59
    sget-object v1, Landroidx/exifinterface/media/g;->K:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 60
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 61
    sget-object v4, Landroidx/exifinterface/media/g;->J:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v4, Landroidx/exifinterface/media/g;->K:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/g;->M:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/g;->I:[Landroidx/exifinterface/media/d;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 64
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 65
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 66
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 67
    aget-object v2, v1, v2

    iget v2, v2, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 68
    aget-object v1, v1, v2

    iget v1, v1, Landroidx/exifinterface/media/d;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 70
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_8
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_a
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/exifinterface/media/g;->H:[[Landroidx/exifinterface/media/d;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    new-array v1, v1, [Ljava/util/HashMap;

    .line 8
    .line 9
    iput-object v1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/exifinterface/media/g;->e:Ljava/util/HashSet;

    .line 18
    .line 19
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    .line 21
    iput-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    if-eqz p1, :cond_11

    .line 24
    .line 25
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    sget-boolean v5, Landroidx/exifinterface/media/g;->l:Z

    .line 31
    .line 32
    const-string v6, "ExifInterface"

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    .line 39
    iput-object v1, p0, Landroidx/exifinterface/media/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 40
    .line 41
    iput-object v4, p0, Landroidx/exifinterface/media/g;->a:Ljava/io/FileDescriptor;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    move-object v1, p1

    .line 49
    check-cast v1, Ljava/io/FileInputStream;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    :try_start_0
    sget v8, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 56
    .line 57
    const-wide/16 v9, 0x0

    .line 58
    .line 59
    invoke-static {v7, v9, v10, v8}, Landroidx/exifinterface/media/h;->c(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    const/4 v7, 0x1

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    nop

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    const-string v7, "The file descriptor for the given input is not seekable"

    .line 68
    .line 69
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 v7, 0x0

    .line 73
    :goto_0
    if-eqz v7, :cond_2

    .line 74
    .line 75
    iput-object v4, p0, Landroidx/exifinterface/media/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, p0, Landroidx/exifinterface/media/g;->a:Ljava/io/FileDescriptor;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iput-object v4, p0, Landroidx/exifinterface/media/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 85
    .line 86
    iput-object v4, p0, Landroidx/exifinterface/media/g;->a:Ljava/io/FileDescriptor;

    .line 87
    .line 88
    :goto_1
    const/4 v1, 0x0

    .line 89
    :goto_2
    :try_start_1
    array-length v4, v0

    .line 90
    if-ge v1, v4, :cond_3

    .line 91
    .line 92
    iget-object v4, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 93
    .line 94
    new-instance v7, Ljava/util/HashMap;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v7, v4, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 105
    .line 106
    const/16 v1, 0x1388

    .line 107
    .line 108
    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/g;->g(Ljava/io/BufferedInputStream;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Landroidx/exifinterface/media/g;->c:I

    .line 116
    .line 117
    const/16 v1, 0xe

    .line 118
    .line 119
    const/16 v4, 0xd

    .line 120
    .line 121
    const/16 v7, 0x9

    .line 122
    .line 123
    const/4 v8, 0x4

    .line 124
    if-eq p1, v8, :cond_4

    .line 125
    .line 126
    if-eq p1, v7, :cond_4

    .line 127
    .line 128
    if-eq p1, v4, :cond_4

    .line 129
    .line 130
    if-ne p1, v1, :cond_5

    .line 131
    .line 132
    :cond_4
    const/4 v2, 0x0

    .line 133
    :cond_5
    if-eqz v2, :cond_9

    .line 134
    .line 135
    new-instance p1, Landroidx/exifinterface/media/f;

    .line 136
    .line 137
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/f;-><init>(Ljava/io/InputStream;)V

    .line 138
    .line 139
    .line 140
    iget v0, p0, Landroidx/exifinterface/media/g;->c:I

    .line 141
    .line 142
    const/16 v1, 0xc

    .line 143
    .line 144
    if-ne v0, v1, :cond_6

    .line 145
    .line 146
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->e(Landroidx/exifinterface/media/f;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const/4 v1, 0x7

    .line 151
    if-ne v0, v1, :cond_7

    .line 152
    .line 153
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->h(Landroidx/exifinterface/media/f;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    const/16 v1, 0xa

    .line 158
    .line 159
    if-ne v0, v1, :cond_8

    .line 160
    .line 161
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->l(Landroidx/exifinterface/media/f;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->k(Landroidx/exifinterface/media/f;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    iget v0, p0, Landroidx/exifinterface/media/g;->h:I

    .line 169
    .line 170
    int-to-long v0, v0

    .line 171
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/f;->d(J)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->v(Landroidx/exifinterface/media/b;)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    new-instance p1, Landroidx/exifinterface/media/b;

    .line 179
    .line 180
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/b;-><init>(Ljava/io/InputStream;)V

    .line 181
    .line 182
    .line 183
    iget v0, p0, Landroidx/exifinterface/media/g;->c:I

    .line 184
    .line 185
    if-ne v0, v8, :cond_a

    .line 186
    .line 187
    invoke-direct {p0, p1, v3, v3}, Landroidx/exifinterface/media/g;->f(Landroidx/exifinterface/media/b;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    if-ne v0, v4, :cond_b

    .line 192
    .line 193
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->i(Landroidx/exifinterface/media/b;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    if-ne v0, v7, :cond_c

    .line 198
    .line 199
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->j(Landroidx/exifinterface/media/b;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    if-ne v0, v1, :cond_d

    .line 204
    .line 205
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->m(Landroidx/exifinterface/media/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .line 207
    .line 208
    :cond_d
    :goto_4
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->a()V

    .line 209
    .line 210
    .line 211
    if-eqz v5, :cond_10

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    goto :goto_6

    .line 216
    :catch_1
    move-exception p1

    .line 217
    goto :goto_5

    .line 218
    :catch_2
    move-exception p1

    .line 219
    :goto_5
    if-eqz v5, :cond_f

    .line 220
    .line 221
    :try_start_2
    const-string v0, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 222
    .line 223
    invoke-static {v6, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :goto_6
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->a()V

    .line 228
    .line 229
    .line 230
    if-eqz v5, :cond_e

    .line 231
    .line 232
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->q()V

    .line 233
    .line 234
    .line 235
    :cond_e
    throw p1

    .line 236
    :cond_f
    :goto_7
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->a()V

    .line 237
    .line 238
    .line 239
    if-eqz v5, :cond_10

    .line 240
    .line 241
    :goto_8
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->q()V

    .line 242
    .line 243
    .line 244
    :cond_10
    return-void

    .line 245
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    .line 246
    .line 247
    const-string v0, "inputStream cannot be null"

    .line 248
    .line 249
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
.end method

.method private a()V
    .locals 7

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/exifinterface/media/c;->a(Ljava/lang/String;)Landroidx/exifinterface/media/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v0, "ImageWidth"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    aget-object v3, v2, v1

    .line 40
    .line 41
    iget-object v6, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 42
    .line 43
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v0, "ImageLength"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    aget-object v3, v2, v1

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    const-string v0, "Orientation"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    aget-object v1, v2, v1

    .line 78
    .line 79
    iget-object v3, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_3
    const-string v0, "LightSource"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aget-object v1, v2, v1

    .line 98
    .line 99
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 100
    .line 101
    invoke-static {v4, v5, v2}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method private d(Ljava/lang/String;)Landroidx/exifinterface/media/c;
    .locals 2

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean p1, Landroidx/exifinterface/media/g;->l:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "ExifInterface"

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/g;->H:[[Landroidx/exifinterface/media/d;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method private e(Landroidx/exifinterface/media/f;)V
    .locals 13

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    const-string v1, "Heif meta: "

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-lt v2, v3, :cond_e

    .line 10
    .line 11
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v3, Landroidx/exifinterface/media/a;

    .line 17
    .line 18
    invoke-direct {v3, p1}, Landroidx/exifinterface/media/a;-><init>(Landroidx/exifinterface/media/f;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroidx/exifinterface/media/i;->a(Landroid/media/MediaMetadataRetriever;Landroid/media/MediaDataSource;)V

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x21

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/16 v4, 0x22

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/16 v5, 0x1a

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/16 v6, 0x11

    .line 43
    .line 44
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    const/16 v0, 0x1d

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v5, 0x1e

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/16 v6, 0x1f

    .line 67
    .line 68
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    const/16 v0, 0x12

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v5, 0x13

    .line 86
    .line 87
    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const/16 v6, 0x18

    .line 92
    .line 93
    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    move-object v5, v0

    .line 100
    move-object v6, v5

    .line 101
    :goto_0
    iget-object v7, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    :try_start_1
    aget-object v9, v7, v8

    .line 107
    .line 108
    const-string v10, "ImageWidth"

    .line 109
    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    iget-object v12, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-static {v11, v12}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_2
    if-eqz v5, :cond_3

    .line 124
    .line 125
    aget-object v9, v7, v8

    .line 126
    .line 127
    const-string v10, "ImageLength"

    .line 128
    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    iget-object v12, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-static {v11, v12}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    :cond_3
    const/4 v9, 0x6

    .line 143
    if-eqz v6, :cond_7

    .line 144
    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    const/16 v11, 0x5a

    .line 150
    .line 151
    if-eq v10, v11, :cond_6

    .line 152
    .line 153
    const/16 v11, 0xb4

    .line 154
    .line 155
    if-eq v10, v11, :cond_5

    .line 156
    .line 157
    const/16 v11, 0x10e

    .line 158
    .line 159
    if-eq v10, v11, :cond_4

    .line 160
    .line 161
    const/4 v10, 0x1

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    const/16 v10, 0x8

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    const/4 v10, 0x3

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    const/4 v10, 0x6

    .line 169
    :goto_1
    aget-object v7, v7, v8

    .line 170
    .line 171
    const-string v11, "Orientation"

    .line 172
    .line 173
    iget-object v12, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 174
    .line 175
    invoke-static {v10, v12}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_7
    if-eqz v3, :cond_c

    .line 183
    .line 184
    if-eqz v4, :cond_c

    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-le v4, v9, :cond_b

    .line 195
    .line 196
    int-to-long v10, v3

    .line 197
    invoke-virtual {p1, v10, v11}, Landroidx/exifinterface/media/f;->d(J)V

    .line 198
    .line 199
    .line 200
    new-array v7, v9, [B

    .line 201
    .line 202
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-ne v10, v9, :cond_a

    .line 207
    .line 208
    add-int/2addr v3, v9

    .line 209
    add-int/lit8 v4, v4, -0x6

    .line 210
    .line 211
    sget-object v9, Landroidx/exifinterface/media/g;->O:[B

    .line 212
    .line 213
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_9

    .line 218
    .line 219
    new-array v7, v4, [B

    .line 220
    .line 221
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-ne p1, v4, :cond_8

    .line 226
    .line 227
    iput v3, p0, Landroidx/exifinterface/media/g;->h:I

    .line 228
    .line 229
    invoke-direct {p0, v7, v8}, Landroidx/exifinterface/media/g;->s([BI)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 234
    .line 235
    const-string v0, "Can\'t read exif"

    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1

    .line 241
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 242
    .line 243
    const-string v0, "Invalid identifier"

    .line 244
    .line 245
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p1

    .line 249
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 250
    .line 251
    const-string v0, "Can\'t read identifier"

    .line 252
    .line 253
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 258
    .line 259
    const-string v0, "Invalid exif length"

    .line 260
    .line 261
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p1

    .line 265
    :cond_c
    :goto_2
    sget-boolean p1, Landroidx/exifinterface/media/g;->l:Z

    .line 266
    .line 267
    if-eqz p1, :cond_d

    .line 268
    .line 269
    const-string p1, "ExifInterface"

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v0, "x"

    .line 280
    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v0, ", rotation "

    .line 288
    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .line 301
    .line 302
    :cond_d
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :catchall_0
    move-exception p1

    .line 307
    goto :goto_3

    .line 308
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 309
    .line 310
    const-string v0, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 311
    .line 312
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :goto_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 317
    .line 318
    .line 319
    throw p1

    .line 320
    :cond_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 321
    .line 322
    const-string v0, "Reading EXIF from HEIF files is supported from SDK 28 and above"

    .line 323
    .line 324
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p1
.end method

.method private f(Landroidx/exifinterface/media/b;II)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, Landroidx/exifinterface/media/g;->l:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readByte()B

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, -0x1

    .line 40
    const-string v7, "Invalid marker: "

    .line 41
    .line 42
    if-ne v5, v6, :cond_19

    .line 43
    .line 44
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readByte()B

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/16 v9, -0x28

    .line 49
    .line 50
    if-ne v8, v9, :cond_18

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    const/4 v7, 0x2

    .line 54
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readByte()B

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-ne v8, v6, :cond_17

    .line 59
    .line 60
    const/4 v8, 0x1

    .line 61
    add-int/2addr v7, v8

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readByte()B

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v11, "Found JPEG segment indicator: "

    .line 71
    .line 72
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    and-int/lit16 v11, v9, 0xff

    .line 76
    .line 77
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    add-int/2addr v7, v8

    .line 92
    const/16 v10, -0x27

    .line 93
    .line 94
    if-eq v9, v10, :cond_16

    .line 95
    .line 96
    const/16 v10, -0x26

    .line 97
    .line 98
    if-ne v9, v10, :cond_2

    .line 99
    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    sub-int/2addr v10, v5

    .line 107
    add-int/2addr v7, v5

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v12, "JPEG segment: "

    .line 113
    .line 114
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    and-int/lit16 v12, v9, 0xff

    .line 118
    .line 119
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v12, " (length: "

    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v12, v10, 0x2

    .line 132
    .line 133
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v12, ")"

    .line 137
    .line 138
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_3
    const-string v11, "Invalid length"

    .line 149
    .line 150
    if-ltz v10, :cond_15

    .line 151
    .line 152
    const/4 v12, 0x0

    .line 153
    const/16 v13, -0x1f

    .line 154
    .line 155
    iget-object v14, v0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 156
    .line 157
    if-eq v9, v13, :cond_8

    .line 158
    .line 159
    const/4 v13, -0x2

    .line 160
    if-eq v9, v13, :cond_6

    .line 161
    .line 162
    packed-switch v9, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    packed-switch v9, :pswitch_data_1

    .line 166
    .line 167
    .line 168
    packed-switch v9, :pswitch_data_2

    .line 169
    .line 170
    .line 171
    packed-switch v9, :pswitch_data_3

    .line 172
    .line 173
    .line 174
    goto/16 :goto_b

    .line 175
    .line 176
    :pswitch_0
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/b;->b(I)V

    .line 177
    .line 178
    .line 179
    aget-object v8, v14, v2

    .line 180
    .line 181
    const/4 v9, 0x4

    .line 182
    if-eq v2, v9, :cond_4

    .line 183
    .line 184
    const-string v12, "ImageLength"

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    const-string v12, "ThumbnailImageLength"

    .line 188
    .line 189
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    int-to-long v5, v13

    .line 194
    iget-object v13, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 195
    .line 196
    invoke-static {v5, v6, v13}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-virtual {v8, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    aget-object v5, v14, v2

    .line 204
    .line 205
    if-eq v2, v9, :cond_5

    .line 206
    .line 207
    const-string v6, "ImageWidth"

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    const-string v6, "ThumbnailImageWidth"

    .line 211
    .line 212
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    int-to-long v8, v8

    .line 217
    iget-object v12, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 218
    .line 219
    invoke-static {v8, v9, v12}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    add-int/lit8 v10, v10, -0x5

    .line 227
    .line 228
    goto/16 :goto_b

    .line 229
    .line 230
    :cond_6
    new-array v5, v10, [B

    .line 231
    .line 232
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-ne v6, v10, :cond_7

    .line 237
    .line 238
    const-string v6, "UserComment"

    .line 239
    .line 240
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    if-nez v9, :cond_13

    .line 245
    .line 246
    aget-object v8, v14, v8

    .line 247
    .line 248
    new-instance v9, Ljava/lang/String;

    .line 249
    .line 250
    sget-object v10, Landroidx/exifinterface/media/g;->N:Ljava/nio/charset/Charset;

    .line 251
    .line 252
    invoke-direct {v9, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v9}, Landroidx/exifinterface/media/c;->a(Ljava/lang/String;)Landroidx/exifinterface/media/c;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    goto/16 :goto_a

    .line 263
    .line 264
    :cond_7
    new-instance v1, Ljava/io/IOException;

    .line 265
    .line 266
    const-string v2, "Invalid exif"

    .line 267
    .line 268
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v1

    .line 272
    :cond_8
    new-array v5, v10, [B

    .line 273
    .line 274
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/b;->readFully([B)V

    .line 275
    .line 276
    .line 277
    add-int v6, v7, v10

    .line 278
    .line 279
    sget-object v9, Landroidx/exifinterface/media/g;->O:[B

    .line 280
    .line 281
    if-nez v9, :cond_9

    .line 282
    .line 283
    :goto_3
    const/4 v8, 0x0

    .line 284
    goto :goto_5

    .line 285
    :cond_9
    array-length v13, v9

    .line 286
    if-ge v10, v13, :cond_a

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_a
    const/4 v13, 0x0

    .line 290
    :goto_4
    array-length v8, v9

    .line 291
    if-ge v13, v8, :cond_c

    .line 292
    .line 293
    aget-byte v8, v5, v13

    .line 294
    .line 295
    aget-byte v15, v9, v13

    .line 296
    .line 297
    if-eq v8, v15, :cond_b

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_c
    const/4 v8, 0x1

    .line 304
    :goto_5
    if-eqz v8, :cond_d

    .line 305
    .line 306
    array-length v8, v9

    .line 307
    invoke-static {v5, v8, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    add-int v7, p2, v7

    .line 312
    .line 313
    array-length v8, v9

    .line 314
    add-int/2addr v7, v8

    .line 315
    iput v7, v0, Landroidx/exifinterface/media/g;->h:I

    .line 316
    .line 317
    invoke-direct {v0, v5, v2}, Landroidx/exifinterface/media/g;->s([BI)V

    .line 318
    .line 319
    .line 320
    new-instance v7, Landroidx/exifinterface/media/b;

    .line 321
    .line 322
    invoke-direct {v7, v5}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v0, v7}, Landroidx/exifinterface/media/g;->v(Landroidx/exifinterface/media/b;)V

    .line 326
    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_d
    sget-object v8, Landroidx/exifinterface/media/g;->P:[B

    .line 330
    .line 331
    if-nez v8, :cond_e

    .line 332
    .line 333
    :goto_6
    const/16 v16, 0x0

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_e
    array-length v9, v8

    .line 337
    if-ge v10, v9, :cond_f

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_f
    const/4 v9, 0x0

    .line 341
    :goto_7
    array-length v13, v8

    .line 342
    if-ge v9, v13, :cond_11

    .line 343
    .line 344
    aget-byte v13, v5, v9

    .line 345
    .line 346
    aget-byte v15, v8, v9

    .line 347
    .line 348
    if-eq v13, v15, :cond_10

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_11
    const/16 v16, 0x1

    .line 355
    .line 356
    :goto_8
    if-eqz v16, :cond_12

    .line 357
    .line 358
    array-length v9, v8

    .line 359
    add-int/2addr v9, v7

    .line 360
    array-length v7, v8

    .line 361
    invoke-static {v5, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    const-string v7, "Xmp"

    .line 366
    .line 367
    invoke-virtual {v0, v7}, Landroidx/exifinterface/media/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    if-nez v8, :cond_12

    .line 372
    .line 373
    aget-object v8, v14, v12

    .line 374
    .line 375
    new-instance v10, Landroidx/exifinterface/media/c;

    .line 376
    .line 377
    const/16 v21, 0x1

    .line 378
    .line 379
    array-length v13, v5

    .line 380
    int-to-long v14, v9

    .line 381
    move-object/from16 v17, v10

    .line 382
    .line 383
    move-wide/from16 v18, v14

    .line 384
    .line 385
    move-object/from16 v20, v5

    .line 386
    .line 387
    move/from16 v22, v13

    .line 388
    .line 389
    invoke-direct/range {v17 .. v22}, Landroidx/exifinterface/media/c;-><init>(J[BII)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    :cond_12
    :goto_9
    move v7, v6

    .line 396
    :cond_13
    :goto_a
    const/4 v10, 0x0

    .line 397
    :goto_b
    if-ltz v10, :cond_14

    .line 398
    .line 399
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/b;->b(I)V

    .line 400
    .line 401
    .line 402
    add-int/2addr v7, v10

    .line 403
    const/4 v5, 0x2

    .line 404
    const/4 v6, -0x1

    .line 405
    goto/16 :goto_0

    .line 406
    .line 407
    :cond_14
    new-instance v1, Ljava/io/IOException;

    .line 408
    .line 409
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    throw v1

    .line 413
    :cond_15
    new-instance v1, Ljava/io/IOException;

    .line 414
    .line 415
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v1

    .line 419
    :cond_16
    :goto_c
    iget-object v2, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :cond_17
    new-instance v1, Ljava/io/IOException;

    .line 426
    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    const-string v3, "Invalid marker:"

    .line 430
    .line 431
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    and-int/lit16 v3, v8, 0xff

    .line 435
    .line 436
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v1

    .line 451
    :cond_18
    new-instance v1, Ljava/io/IOException;

    .line 452
    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    and-int/lit16 v3, v5, 0xff

    .line 459
    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v1

    .line 475
    :cond_19
    new-instance v1, Ljava/io/IOException;

    .line 476
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    and-int/lit16 v3, v5, 0xff

    .line 483
    .line 484
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v1

    .line 499
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private g(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v5, Landroidx/exifinterface/media/g;->q:[B

    .line 21
    .line 22
    array-length v6, v5

    .line 23
    if-ge v0, v6, :cond_1

    .line 24
    .line 25
    aget-byte v6, v3, v0

    .line 26
    .line 27
    aget-byte v5, v5, v0

    .line 28
    .line 29
    if-eq v6, v5, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_1
    const/4 v5, 0x4

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return v5

    .line 41
    :cond_2
    const-string v0, "FUJIFILMCCD-RAW"

    .line 42
    .line 43
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v6, 0x0

    .line 52
    :goto_2
    array-length v8, v0

    .line 53
    if-ge v6, v8, :cond_4

    .line 54
    .line 55
    aget-byte v8, v3, v6

    .line 56
    .line 57
    aget-byte v9, v0, v6

    .line 58
    .line 59
    if-eq v8, v9, :cond_3

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/4 v0, 0x1

    .line 67
    :goto_3
    if-eqz v0, :cond_5

    .line 68
    .line 69
    const/16 v0, 0x9

    .line 70
    .line 71
    return v0

    .line 72
    :cond_5
    :try_start_0
    new-instance v8, Landroidx/exifinterface/media/b;

    .line 73
    .line 74
    invoke-direct {v8, v3}, Landroidx/exifinterface/media/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v8}, Landroidx/exifinterface/media/b;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-long v9, v0

    .line 82
    new-array v0, v5, [B

    .line 83
    .line 84
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 85
    .line 86
    .line 87
    sget-object v11, Landroidx/exifinterface/media/g;->r:[B

    .line 88
    .line 89
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_6
    const-wide/16 v11, 0x8

    .line 98
    .line 99
    const-wide/16 v13, 0x1

    .line 100
    .line 101
    cmp-long v0, v9, v13

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v8}, Landroidx/exifinterface/media/b;->readLong()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    const-wide/16 v15, 0x10

    .line 110
    .line 111
    cmp-long v0, v9, v15

    .line 112
    .line 113
    if-gez v0, :cond_8

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_7
    move-wide v15, v11

    .line 117
    :cond_8
    int-to-long v6, v2

    .line 118
    cmp-long v0, v9, v6

    .line 119
    .line 120
    if-lez v0, :cond_9

    .line 121
    .line 122
    move-wide v9, v6

    .line 123
    :cond_9
    sub-long/2addr v9, v15

    .line 124
    cmp-long v0, v9, v11

    .line 125
    .line 126
    if-gez v0, :cond_a

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_a
    new-array v0, v5, [B

    .line 130
    .line 131
    const-wide/16 v6, 0x0

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    const/4 v11, 0x0

    .line 135
    :goto_4
    const-wide/16 v15, 0x4

    .line 136
    .line 137
    div-long v15, v9, v15

    .line 138
    .line 139
    cmp-long v12, v6, v15

    .line 140
    .line 141
    if-gez v12, :cond_11

    .line 142
    .line 143
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-eq v12, v5, :cond_b

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_b
    cmp-long v12, v6, v13

    .line 151
    .line 152
    if-nez v12, :cond_c

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_c
    sget-object v12, Landroidx/exifinterface/media/g;->s:[B

    .line 156
    .line 157
    invoke-static {v0, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_d

    .line 162
    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_5

    .line 165
    :cond_d
    sget-object v12, Landroidx/exifinterface/media/g;->t:[B

    .line 166
    .line 167
    invoke-static {v0, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 168
    .line 169
    .line 170
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v12, :cond_e

    .line 172
    .line 173
    const/4 v11, 0x1

    .line 174
    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    .line 175
    .line 176
    if-eqz v11, :cond_f

    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    goto :goto_9

    .line 183
    :cond_f
    :goto_6
    add-long/2addr v6, v13

    .line 184
    goto :goto_4

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    goto/16 :goto_1a

    .line 187
    .line 188
    :catch_0
    move-exception v0

    .line 189
    goto :goto_7

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    const/4 v6, 0x0

    .line 192
    goto/16 :goto_19

    .line 193
    .line 194
    :catch_1
    move-exception v0

    .line 195
    const/4 v8, 0x0

    .line 196
    :goto_7
    :try_start_2
    sget-boolean v2, Landroidx/exifinterface/media/g;->l:Z

    .line 197
    .line 198
    if-eqz v2, :cond_10

    .line 199
    .line 200
    const-string v2, "ExifInterface"

    .line 201
    .line 202
    const-string v6, "Exception parsing HEIF file type box."

    .line 203
    .line 204
    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 205
    .line 206
    .line 207
    :cond_10
    if-eqz v8, :cond_12

    .line 208
    .line 209
    :cond_11
    :goto_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 210
    .line 211
    .line 212
    :cond_12
    const/4 v0, 0x0

    .line 213
    :goto_9
    if-eqz v0, :cond_13

    .line 214
    .line 215
    const/16 v0, 0xc

    .line 216
    .line 217
    return v0

    .line 218
    :cond_13
    :try_start_3
    new-instance v2, Landroidx/exifinterface/media/b;

    .line 219
    .line 220
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/b;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 221
    .line 222
    .line 223
    :try_start_4
    invoke-static {v2}, Landroidx/exifinterface/media/g;->r(Landroidx/exifinterface/media/b;)Ljava/nio/ByteOrder;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object v0, v1, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Landroidx/exifinterface/media/b;->readShort()S

    .line 233
    .line 234
    .line 235
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 236
    const/16 v6, 0x4f52

    .line 237
    .line 238
    if-eq v0, v6, :cond_15

    .line 239
    .line 240
    const/16 v6, 0x5352

    .line 241
    .line 242
    if-ne v0, v6, :cond_14

    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_14
    const/4 v0, 0x0

    .line 246
    goto :goto_b

    .line 247
    :cond_15
    :goto_a
    const/4 v0, 0x1

    .line 248
    :goto_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 249
    .line 250
    .line 251
    goto :goto_e

    .line 252
    :catchall_2
    move-exception v0

    .line 253
    move-object v6, v2

    .line 254
    goto :goto_c

    .line 255
    :catch_2
    nop

    .line 256
    goto :goto_d

    .line 257
    :catchall_3
    move-exception v0

    .line 258
    const/4 v6, 0x0

    .line 259
    :goto_c
    if-eqz v6, :cond_16

    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 262
    .line 263
    .line 264
    :cond_16
    throw v0

    .line 265
    :catch_3
    nop

    .line 266
    const/4 v2, 0x0

    .line 267
    :goto_d
    if-eqz v2, :cond_17

    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 270
    .line 271
    .line 272
    :cond_17
    const/4 v0, 0x0

    .line 273
    :goto_e
    if-eqz v0, :cond_18

    .line 274
    .line 275
    const/4 v0, 0x7

    .line 276
    return v0

    .line 277
    :cond_18
    :try_start_5
    new-instance v2, Landroidx/exifinterface/media/b;

    .line 278
    .line 279
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/b;-><init>([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 280
    .line 281
    .line 282
    :try_start_6
    invoke-static {v2}, Landroidx/exifinterface/media/g;->r(Landroidx/exifinterface/media/b;)Ljava/nio/ByteOrder;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iput-object v0, v1, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Landroidx/exifinterface/media/b;->readShort()S

    .line 292
    .line 293
    .line 294
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 295
    const/16 v6, 0x55

    .line 296
    .line 297
    if-ne v0, v6, :cond_19

    .line 298
    .line 299
    const/4 v0, 0x1

    .line 300
    goto :goto_f

    .line 301
    :cond_19
    const/4 v0, 0x0

    .line 302
    :goto_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 303
    .line 304
    .line 305
    goto :goto_12

    .line 306
    :catchall_4
    move-exception v0

    .line 307
    move-object v6, v2

    .line 308
    goto :goto_10

    .line 309
    :catch_4
    nop

    .line 310
    move-object v6, v2

    .line 311
    goto :goto_11

    .line 312
    :catchall_5
    move-exception v0

    .line 313
    const/4 v6, 0x0

    .line 314
    :goto_10
    if-eqz v6, :cond_1a

    .line 315
    .line 316
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 317
    .line 318
    .line 319
    :cond_1a
    throw v0

    .line 320
    :catch_5
    nop

    .line 321
    const/4 v6, 0x0

    .line 322
    :goto_11
    if-eqz v6, :cond_1b

    .line 323
    .line 324
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 325
    .line 326
    .line 327
    :cond_1b
    const/4 v0, 0x0

    .line 328
    :goto_12
    if-eqz v0, :cond_1c

    .line 329
    .line 330
    const/16 v0, 0xa

    .line 331
    .line 332
    return v0

    .line 333
    :cond_1c
    const/4 v0, 0x0

    .line 334
    :goto_13
    sget-object v2, Landroidx/exifinterface/media/g;->w:[B

    .line 335
    .line 336
    array-length v6, v2

    .line 337
    if-ge v0, v6, :cond_1e

    .line 338
    .line 339
    aget-byte v6, v3, v0

    .line 340
    .line 341
    aget-byte v2, v2, v0

    .line 342
    .line 343
    if-eq v6, v2, :cond_1d

    .line 344
    .line 345
    const/4 v0, 0x0

    .line 346
    goto :goto_14

    .line 347
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 348
    .line 349
    goto :goto_13

    .line 350
    :cond_1e
    const/4 v0, 0x1

    .line 351
    :goto_14
    if-eqz v0, :cond_1f

    .line 352
    .line 353
    const/16 v0, 0xd

    .line 354
    .line 355
    return v0

    .line 356
    :cond_1f
    const/4 v0, 0x0

    .line 357
    :goto_15
    sget-object v2, Landroidx/exifinterface/media/g;->A:[B

    .line 358
    .line 359
    array-length v6, v2

    .line 360
    if-ge v0, v6, :cond_21

    .line 361
    .line 362
    aget-byte v6, v3, v0

    .line 363
    .line 364
    aget-byte v2, v2, v0

    .line 365
    .line 366
    if-eq v6, v2, :cond_20

    .line 367
    .line 368
    goto :goto_17

    .line 369
    :cond_20
    add-int/lit8 v0, v0, 0x1

    .line 370
    .line 371
    goto :goto_15

    .line 372
    :cond_21
    const/4 v0, 0x0

    .line 373
    :goto_16
    sget-object v6, Landroidx/exifinterface/media/g;->B:[B

    .line 374
    .line 375
    array-length v7, v6

    .line 376
    if-ge v0, v7, :cond_23

    .line 377
    .line 378
    array-length v7, v2

    .line 379
    add-int/2addr v7, v0

    .line 380
    add-int/2addr v7, v5

    .line 381
    aget-byte v7, v3, v7

    .line 382
    .line 383
    aget-byte v6, v6, v0

    .line 384
    .line 385
    if-eq v7, v6, :cond_22

    .line 386
    .line 387
    :goto_17
    const/4 v7, 0x0

    .line 388
    goto :goto_18

    .line 389
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 390
    .line 391
    goto :goto_16

    .line 392
    :cond_23
    const/4 v7, 0x1

    .line 393
    :goto_18
    if-eqz v7, :cond_24

    .line 394
    .line 395
    const/16 v0, 0xe

    .line 396
    .line 397
    return v0

    .line 398
    :cond_24
    return v4

    .line 399
    :catchall_6
    move-exception v0

    .line 400
    move-object v6, v8

    .line 401
    :goto_19
    move-object v8, v6

    .line 402
    :goto_1a
    if-eqz v8, :cond_25

    .line 403
    .line 404
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 405
    .line 406
    .line 407
    :cond_25
    throw v0
.end method

.method private h(Landroidx/exifinterface/media/f;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->k(Landroidx/exifinterface/media/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Landroidx/exifinterface/media/f;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/exifinterface/media/c;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/f;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroidx/exifinterface/media/g;->u:[B

    .line 32
    .line 33
    array-length v3, v1

    .line 34
    new-array v3, v3, [B

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/b;->readFully([B)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/f;->d(J)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Landroidx/exifinterface/media/g;->v:[B

    .line 45
    .line 46
    array-length v5, v4

    .line 47
    new-array v5, v5, [B

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/b;->readFully([B)V

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    const-wide/16 v3, 0x8

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/f;->d(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    const-wide/16 v3, 0xc

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/f;->d(J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 76
    invoke-direct {p0, v2, v1}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x7

    .line 80
    aget-object v2, p1, v1

    .line 81
    .line 82
    const-string v3, "PreviewImageStart"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroidx/exifinterface/media/c;

    .line 89
    .line 90
    aget-object v1, p1, v1

    .line 91
    .line 92
    const-string v3, "PreviewImageLength"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 99
    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const/4 v3, 0x5

    .line 105
    aget-object v4, p1, v3

    .line 106
    .line 107
    const-string v5, "JPEGInterchangeFormat"

    .line 108
    .line 109
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    aget-object v2, p1, v3

    .line 113
    .line 114
    const-string v3, "JPEGInterchangeFormatLength"

    .line 115
    .line 116
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_2
    const/16 v1, 0x8

    .line 120
    .line 121
    aget-object v1, p1, v1

    .line 122
    .line 123
    const-string v2, "AspectFrame"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, [I

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    array-length v2, v1

    .line 144
    const/4 v3, 0x4

    .line 145
    if-eq v2, v3, :cond_3

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const/4 v2, 0x2

    .line 149
    aget v2, v1, v2

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    aget v4, v1, v3

    .line 153
    .line 154
    if-le v2, v4, :cond_6

    .line 155
    .line 156
    const/4 v5, 0x3

    .line 157
    aget v5, v1, v5

    .line 158
    .line 159
    aget v1, v1, v0

    .line 160
    .line 161
    if-le v5, v1, :cond_6

    .line 162
    .line 163
    sub-int/2addr v2, v4

    .line 164
    add-int/2addr v2, v0

    .line 165
    sub-int/2addr v5, v1

    .line 166
    add-int/2addr v5, v0

    .line 167
    if-ge v2, v5, :cond_4

    .line 168
    .line 169
    add-int/2addr v2, v5

    .line 170
    sub-int v5, v2, v5

    .line 171
    .line 172
    sub-int/2addr v2, v5

    .line 173
    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 174
    .line 175
    invoke-static {v2, v0}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 180
    .line 181
    invoke-static {v5, v1}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    aget-object v2, p1, v3

    .line 186
    .line 187
    const-string v4, "ImageWidth"

    .line 188
    .line 189
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    aget-object p1, p1, v3

    .line 193
    .line 194
    const-string v0, "ImageLength"

    .line 195
    .line 196
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Invalid aspect frame values. frame="

    .line 203
    .line 204
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string v0, "ExifInterface"

    .line 219
    .line 220
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    :cond_6
    :goto_2
    return-void
.end method

.method private i(Landroidx/exifinterface/media/b;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getPngAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroidx/exifinterface/media/g;->w:[B

    .line 30
    .line 31
    array-length v1, v0

    .line 32
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/b;->b(I)V

    .line 33
    .line 34
    .line 35
    array-length v0, v0

    .line 36
    const/4 v1, 0x0

    .line 37
    add-int/2addr v0, v1

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x4

    .line 43
    add-int/2addr v0, v3

    .line 44
    new-array v4, v3, [B

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v3, :cond_7

    .line 51
    .line 52
    add-int/2addr v0, v3

    .line 53
    const/16 v3, 0x10

    .line 54
    .line 55
    if-ne v0, v3, :cond_2

    .line 56
    .line 57
    sget-object v3, Landroidx/exifinterface/media/g;->y:[B

    .line 58
    .line 59
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    :goto_1
    sget-object v3, Landroidx/exifinterface/media/g;->z:[B

    .line 75
    .line 76
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    sget-object v3, Landroidx/exifinterface/media/g;->x:[B

    .line 84
    .line 85
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    new-array v3, v2, [B

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-ne v5, v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    new-instance v2, Ljava/util/zip/CRC32;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    long-to-int v5, v4

    .line 119
    if-ne v5, p1, :cond_4

    .line 120
    .line 121
    iput v0, p0, Landroidx/exifinterface/media/g;->h:I

    .line 122
    .line 123
    invoke-direct {p0, v3, v1}, Landroidx/exifinterface/media/g;->s([BI)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->y()V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroidx/exifinterface/media/b;

    .line 130
    .line 131
    invoke-direct {p1, v3}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->v(Landroidx/exifinterface/media/b;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    return-void

    .line 138
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ", calculated CRC value: "

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v0

    .line 173
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Landroidx/exifinterface/media/j;->a([B)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/b;->b(I)V

    .line 203
    .line 204
    .line 205
    add-int/2addr v0, v2

    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 209
    .line 210
    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    .line 211
    .line 212
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 217
    .line 218
    const-string v0, "Encountered corrupt PNG file."

    .line 219
    .line 220
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1
.end method

.method private j(Landroidx/exifinterface/media/b;)V
    .locals 9

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, Landroidx/exifinterface/media/g;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/b;->b(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, Landroidx/exifinterface/media/b;->f:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/b;->b(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 79
    .line 80
    .line 81
    new-instance v5, Landroidx/exifinterface/media/b;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-direct {p0, v5, v3, v4}, Landroidx/exifinterface/media/g;->f(Landroidx/exifinterface/media/b;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, Landroidx/exifinterface/media/b;->f:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/b;->b(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v4, "numberOfDirectoryEntry: "

    .line 110
    .line 111
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    :cond_1
    const/4 v3, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    :goto_0
    if-ge v4, v2, :cond_4

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    sget-object v7, Landroidx/exifinterface/media/g;->G:Landroidx/exifinterface/media/d;

    .line 137
    .line 138
    iget v7, v7, Landroidx/exifinterface/media/d;->a:I

    .line 139
    .line 140
    if-ne v5, v7, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readShort()S

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readShort()S

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object v4, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 151
    .line 152
    invoke-static {v2, v4}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    iget-object v5, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 157
    .line 158
    invoke-static {p1, v5}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    iget-object v6, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 163
    .line 164
    aget-object v7, v6, v3

    .line 165
    .line 166
    const-string v8, "ImageLength"

    .line 167
    .line 168
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    aget-object v3, v6, v3

    .line 172
    .line 173
    const-string v4, "ImageWidth"

    .line 174
    .line 175
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    if-eqz v1, :cond_2

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v3, "Updated to length: "

    .line 183
    .line 184
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, ", width: "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    :cond_2
    return-void

    .line 206
    :cond_3
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/b;->b(I)V

    .line 207
    .line 208
    .line 209
    add-int/lit8 v4, v4, 0x1

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_4
    return-void
.end method

.method private k(Landroidx/exifinterface/media/f;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->p(Landroidx/exifinterface/media/b;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/g;->x(Landroidx/exifinterface/media/f;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/g;->x(Landroidx/exifinterface/media/f;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/g;->x(Landroidx/exifinterface/media/f;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/exifinterface/media/g;->y()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/g;->c:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Landroidx/exifinterface/media/f;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/exifinterface/media/c;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/f;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 53
    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/b;->b(I)V

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x9

    .line 60
    .line 61
    invoke-direct {p0, v2, v1}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 62
    .line 63
    .line 64
    aget-object v1, p1, v1

    .line 65
    .line 66
    const-string v2, "ColorSpace"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    aget-object p1, p1, v0

    .line 77
    .line 78
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method private l(Landroidx/exifinterface/media/f;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->k(Landroidx/exifinterface/media/f;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/exifinterface/media/b;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/exifinterface/media/c;->d:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, Landroidx/exifinterface/media/c;->c:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-direct {p0, v2, v1, v3}, Landroidx/exifinterface/media/g;->f(Landroidx/exifinterface/media/b;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object v0, p1, v0

    .line 57
    .line 58
    const-string v1, "ISO"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/exifinterface/media/c;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v2, p1, v1

    .line 68
    .line 69
    const-string v3, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/exifinterface/media/c;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v1

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method private m(Landroidx/exifinterface/media/b;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/g;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroidx/exifinterface/media/g;->A:[B

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/b;->b(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x8

    .line 40
    .line 41
    sget-object v1, Landroidx/exifinterface/media/g;->B:[B

    .line 42
    .line 43
    array-length v2, v1

    .line 44
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/b;->b(I)V

    .line 45
    .line 46
    .line 47
    array-length v1, v1

    .line 48
    add-int/lit8 v1, v1, 0x8

    .line 49
    .line 50
    :goto_0
    const/4 v2, 0x4

    .line 51
    :try_start_0
    new-array v3, v2, [B

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v4, v2, :cond_6

    .line 58
    .line 59
    add-int/2addr v1, v2

    .line 60
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    add-int/2addr v1, v2

    .line 65
    sget-object v2, Landroidx/exifinterface/media/g;->C:[B

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    new-array v0, v4, [B

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-ne p1, v4, :cond_1

    .line 80
    .line 81
    iput v1, p0, Landroidx/exifinterface/media/g;->h:I

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/g;->s([BI)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroidx/exifinterface/media/b;

    .line 88
    .line 89
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->v(Landroidx/exifinterface/media/b;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Failed to read given length for given PNG chunk type: "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, Landroidx/exifinterface/media/j;->a([B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_2
    rem-int/lit8 v2, v4, 0x2

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    if-ne v2, v3, :cond_3

    .line 127
    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    :cond_3
    add-int/2addr v1, v4

    .line 131
    if-ne v1, v0, :cond_4

    .line 132
    .line 133
    :goto_1
    return-void

    .line 134
    :cond_4
    if-gt v1, v0, :cond_5

    .line 135
    .line 136
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/b;->b(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 141
    .line 142
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 149
    .line 150
    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    new-instance p1, Ljava/io/IOException;

    .line 157
    .line 158
    const-string v0, "Encountered corrupt WebP file."

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method

.method private n(Landroidx/exifinterface/media/b;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/c;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/c;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/g;->c:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/g;->i:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/exifinterface/media/g;->b:Landroid/content/res/AssetManager$AssetInputStream;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/exifinterface/media/g;->a:Ljava/io/FileDescriptor;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    new-array v1, p2, [B

    .line 54
    .line 55
    int-to-long v2, v0

    .line 56
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-boolean p1, Landroidx/exifinterface/media/g;->l:Z

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", length: "

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "ExifInterface"

    .line 89
    .line 90
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method private o(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/c;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/c;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method private p(Landroidx/exifinterface/media/b;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/exifinterface/media/g;->r(Landroidx/exifinterface/media/b;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/b;->a(Ljava/nio/ByteOrder;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/exifinterface/media/g;->c:I

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x2a

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Invalid start code: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x8

    .line 57
    .line 58
    if-lt v0, v1, :cond_3

    .line 59
    .line 60
    add-int/lit8 v0, v0, -0x8

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/b;->b(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void

    .line 68
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 69
    .line 70
    const-string v1, "Invalid first Ifd offset: "

    .line 71
    .line 72
    invoke-static {v1, v0}, LB/g;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private q()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "The size of tag group["

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, "]: "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    aget-object v3, v1, v0

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "ExifInterface"

    .line 36
    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    aget-object v1, v1, v0

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroidx/exifinterface/media/c;

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "tagName: "

    .line 71
    .line 72
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", tagType: "

    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Landroidx/exifinterface/media/c;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ", tagValue: \'"

    .line 97
    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, "\'"

    .line 111
    .line 112
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method private static r(Landroidx/exifinterface/media/b;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/exifinterface/media/b;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, Landroidx/exifinterface/media/g;->l:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid byte order: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    return-object p0
.end method

.method private s([BI)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/f;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/f;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/g;->p(Landroidx/exifinterface/media/b;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private t(Landroidx/exifinterface/media/f;I)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/exifinterface/media/g;->e:Ljava/util/HashSet;

    .line 8
    .line 9
    iget v4, v1, Landroidx/exifinterface/media/b;->f:I

    .line 10
    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readShort()S

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const-string v4, "ExifInterface"

    .line 23
    .line 24
    sget-boolean v5, Landroidx/exifinterface/media/g;->l:Z

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v7, "numberOfDirectoryEntry: "

    .line 31
    .line 32
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    if-gtz v3, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v7, 0x0

    .line 49
    :goto_0
    const/4 v12, 0x5

    .line 50
    iget-object v13, v0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 51
    .line 52
    if-ge v7, v3, :cond_2d

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 55
    .line 56
    .line 57
    move-result v14

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget v9, v1, Landroidx/exifinterface/media/b;->f:I

    .line 67
    .line 68
    int-to-long v10, v9

    .line 69
    const-wide/16 v20, 0x4

    .line 70
    .line 71
    add-long v10, v10, v20

    .line 72
    .line 73
    sget-object v9, Landroidx/exifinterface/media/g;->J:[Ljava/util/HashMap;

    .line 74
    .line 75
    aget-object v9, v9, v2

    .line 76
    .line 77
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Landroidx/exifinterface/media/d;

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    new-array v12, v12, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v24

    .line 95
    const/16 v22, 0x0

    .line 96
    .line 97
    aput-object v24, v12, v22

    .line 98
    .line 99
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v24

    .line 103
    const/16 v19, 0x1

    .line 104
    .line 105
    aput-object v24, v12, v19

    .line 106
    .line 107
    if-eqz v6, :cond_2

    .line 108
    .line 109
    iget-object v9, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 v9, 0x0

    .line 113
    :goto_1
    const/16 v23, 0x2

    .line 114
    .line 115
    aput-object v9, v12, v23

    .line 116
    .line 117
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const/16 v24, 0x3

    .line 122
    .line 123
    aput-object v9, v12, v24

    .line 124
    .line 125
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    const/16 v18, 0x4

    .line 130
    .line 131
    aput-object v9, v12, v18

    .line 132
    .line 133
    const-string v9, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 134
    .line 135
    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_3
    if-nez v6, :cond_5

    .line 143
    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v12, "Skip the tag entry since tag number is not defined: "

    .line 149
    .line 150
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_4
    move/from16 v25, v3

    .line 164
    .line 165
    move/from16 v26, v7

    .line 166
    .line 167
    goto/16 :goto_5

    .line 168
    .line 169
    :cond_5
    if-lez v15, :cond_16

    .line 170
    .line 171
    sget-object v9, Landroidx/exifinterface/media/g;->E:[I

    .line 172
    .line 173
    array-length v12, v9

    .line 174
    if-lt v15, v12, :cond_6

    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_6
    iget v12, v6, Landroidx/exifinterface/media/d;->c:I

    .line 179
    .line 180
    move/from16 v25, v3

    .line 181
    .line 182
    const/4 v3, 0x7

    .line 183
    if-eq v12, v3, :cond_f

    .line 184
    .line 185
    if-ne v15, v3, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    if-eq v12, v15, :cond_f

    .line 189
    .line 190
    iget v3, v6, Landroidx/exifinterface/media/d;->d:I

    .line 191
    .line 192
    if-ne v3, v15, :cond_8

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_8
    move/from16 v26, v7

    .line 196
    .line 197
    const/4 v7, 0x4

    .line 198
    if-eq v12, v7, :cond_9

    .line 199
    .line 200
    if-ne v3, v7, :cond_a

    .line 201
    .line 202
    :cond_9
    const/4 v7, 0x3

    .line 203
    if-ne v15, v7, :cond_a

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_a
    const/16 v7, 0x9

    .line 207
    .line 208
    if-eq v12, v7, :cond_b

    .line 209
    .line 210
    if-ne v3, v7, :cond_c

    .line 211
    .line 212
    :cond_b
    const/16 v7, 0x8

    .line 213
    .line 214
    if-ne v15, v7, :cond_c

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_c
    const/16 v7, 0xc

    .line 218
    .line 219
    if-eq v12, v7, :cond_d

    .line 220
    .line 221
    if-ne v3, v7, :cond_e

    .line 222
    .line 223
    :cond_d
    const/16 v3, 0xb

    .line 224
    .line 225
    if-ne v15, v3, :cond_e

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_e
    const/4 v3, 0x0

    .line 229
    goto :goto_4

    .line 230
    :cond_f
    :goto_2
    move/from16 v26, v7

    .line 231
    .line 232
    :goto_3
    const/4 v3, 0x1

    .line 233
    :goto_4
    if-nez v3, :cond_11

    .line 234
    .line 235
    if-eqz v5, :cond_10

    .line 236
    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v7, "Skip the tag entry since data format ("

    .line 240
    .line 241
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    sget-object v7, Landroidx/exifinterface/media/g;->D:[Ljava/lang/String;

    .line 245
    .line 246
    aget-object v7, v7, v15

    .line 247
    .line 248
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v7, ") is unexpected for tag: "

    .line 252
    .line 253
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v7, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :cond_10
    :goto_5
    move-object v3, v13

    .line 269
    move v9, v14

    .line 270
    goto :goto_8

    .line 271
    :cond_11
    const/4 v3, 0x7

    .line 272
    if-ne v15, v3, :cond_12

    .line 273
    .line 274
    move v15, v12

    .line 275
    :cond_12
    move-object v3, v13

    .line 276
    int-to-long v12, v8

    .line 277
    aget v7, v9, v15

    .line 278
    .line 279
    move v9, v14

    .line 280
    move/from16 v27, v15

    .line 281
    .line 282
    int-to-long v14, v7

    .line 283
    mul-long v12, v12, v14

    .line 284
    .line 285
    const-wide/16 v14, 0x0

    .line 286
    .line 287
    cmp-long v7, v12, v14

    .line 288
    .line 289
    if-ltz v7, :cond_14

    .line 290
    .line 291
    const-wide/32 v14, 0x7fffffff

    .line 292
    .line 293
    .line 294
    cmp-long v7, v12, v14

    .line 295
    .line 296
    if-lez v7, :cond_13

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_13
    move/from16 v15, v27

    .line 300
    .line 301
    const/4 v7, 0x1

    .line 302
    goto :goto_a

    .line 303
    :cond_14
    :goto_6
    if-eqz v5, :cond_15

    .line 304
    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    const-string v14, "Skip the tag entry since the number of components is invalid: "

    .line 308
    .line 309
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    :cond_15
    move/from16 v15, v27

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_16
    :goto_7
    move/from16 v25, v3

    .line 326
    .line 327
    move/from16 v26, v7

    .line 328
    .line 329
    move-object v3, v13

    .line 330
    move v9, v14

    .line 331
    if-eqz v5, :cond_17

    .line 332
    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v12, "Skip the tag entry since data format is invalid: "

    .line 336
    .line 337
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    :cond_17
    :goto_8
    const-wide/16 v12, 0x0

    .line 351
    .line 352
    :goto_9
    const/4 v7, 0x0

    .line 353
    :goto_a
    if-nez v7, :cond_18

    .line 354
    .line 355
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/f;->d(J)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_12

    .line 359
    .line 360
    :cond_18
    const-string v7, "Compression"

    .line 361
    .line 362
    cmp-long v14, v12, v20

    .line 363
    .line 364
    if-lez v14, :cond_1c

    .line 365
    .line 366
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    move-wide/from16 v27, v10

    .line 371
    .line 372
    if-eqz v5, :cond_19

    .line 373
    .line 374
    new-instance v10, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v11, "seek to data offset: "

    .line 377
    .line 378
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v10

    .line 388
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    :cond_19
    iget v10, v0, Landroidx/exifinterface/media/g;->c:I

    .line 392
    .line 393
    const/4 v11, 0x7

    .line 394
    if-ne v10, v11, :cond_1b

    .line 395
    .line 396
    iget-object v10, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 397
    .line 398
    const-string v11, "MakerNote"

    .line 399
    .line 400
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    if-eqz v10, :cond_1a

    .line 405
    .line 406
    iput v14, v0, Landroidx/exifinterface/media/g;->i:I

    .line 407
    .line 408
    goto :goto_b

    .line 409
    :cond_1a
    const/4 v10, 0x6

    .line 410
    if-ne v2, v10, :cond_1b

    .line 411
    .line 412
    const-string v11, "ThumbnailImage"

    .line 413
    .line 414
    iget-object v10, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_1b

    .line 421
    .line 422
    iput v14, v0, Landroidx/exifinterface/media/g;->j:I

    .line 423
    .line 424
    iput v8, v0, Landroidx/exifinterface/media/g;->k:I

    .line 425
    .line 426
    iget-object v10, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 427
    .line 428
    const/4 v11, 0x6

    .line 429
    invoke-static {v11, v10}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 430
    .line 431
    .line 432
    move-result-object v10

    .line 433
    iget v11, v0, Landroidx/exifinterface/media/g;->j:I

    .line 434
    .line 435
    move-wide/from16 v20, v12

    .line 436
    .line 437
    int-to-long v11, v11

    .line 438
    iget-object v13, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 439
    .line 440
    invoke-static {v11, v12, v13}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 441
    .line 442
    .line 443
    move-result-object v11

    .line 444
    iget v12, v0, Landroidx/exifinterface/media/g;->k:I

    .line 445
    .line 446
    int-to-long v12, v12

    .line 447
    iget-object v2, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 448
    .line 449
    invoke-static {v12, v13, v2}, Landroidx/exifinterface/media/c;->b(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    const/4 v12, 0x4

    .line 454
    aget-object v13, v3, v12

    .line 455
    .line 456
    invoke-virtual {v13, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    aget-object v10, v3, v12

    .line 460
    .line 461
    const-string v13, "JPEGInterchangeFormat"

    .line 462
    .line 463
    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    aget-object v10, v3, v12

    .line 467
    .line 468
    const-string v11, "JPEGInterchangeFormatLength"

    .line 469
    .line 470
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    goto :goto_c

    .line 474
    :cond_1b
    :goto_b
    move-wide/from16 v20, v12

    .line 475
    .line 476
    :goto_c
    int-to-long v10, v14

    .line 477
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/f;->d(J)V

    .line 478
    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_1c
    move-wide/from16 v27, v10

    .line 482
    .line 483
    move-wide/from16 v20, v12

    .line 484
    .line 485
    :goto_d
    sget-object v2, Landroidx/exifinterface/media/g;->M:Ljava/util/HashMap;

    .line 486
    .line 487
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Ljava/lang/Integer;

    .line 496
    .line 497
    if-eqz v5, :cond_1d

    .line 498
    .line 499
    new-instance v9, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    const-string v10, "nextIfdType: "

    .line 502
    .line 503
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v10, " byteCount: "

    .line 510
    .line 511
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    move-wide/from16 v12, v20

    .line 515
    .line 516
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    goto :goto_e

    .line 527
    :cond_1d
    move-wide/from16 v12, v20

    .line 528
    .line 529
    :goto_e
    if-eqz v2, :cond_26

    .line 530
    .line 531
    const/4 v9, 0x3

    .line 532
    if-eq v15, v9, :cond_21

    .line 533
    .line 534
    const/4 v3, 0x4

    .line 535
    if-eq v15, v3, :cond_20

    .line 536
    .line 537
    const/16 v3, 0x8

    .line 538
    .line 539
    if-eq v15, v3, :cond_1f

    .line 540
    .line 541
    const/16 v3, 0x9

    .line 542
    .line 543
    if-eq v15, v3, :cond_1e

    .line 544
    .line 545
    const/16 v3, 0xd

    .line 546
    .line 547
    if-eq v15, v3, :cond_1e

    .line 548
    .line 549
    const-wide/16 v7, -0x1

    .line 550
    .line 551
    goto :goto_10

    .line 552
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    goto :goto_f

    .line 557
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readShort()S

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    goto :goto_f

    .line 562
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    int-to-long v7, v3

    .line 567
    const-wide v9, 0xffffffffL

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    and-long/2addr v7, v9

    .line 573
    goto :goto_10

    .line 574
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readUnsignedShort()I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    :goto_f
    int-to-long v7, v3

    .line 579
    :goto_10
    if-eqz v5, :cond_22

    .line 580
    .line 581
    const/4 v3, 0x2

    .line 582
    new-array v3, v3, [Ljava/lang/Object;

    .line 583
    .line 584
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    const/4 v10, 0x0

    .line 589
    aput-object v9, v3, v10

    .line 590
    .line 591
    iget-object v6, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 592
    .line 593
    const/4 v9, 0x1

    .line 594
    aput-object v6, v3, v9

    .line 595
    .line 596
    const-string v6, "Offset: %d, tagName: %s"

    .line 597
    .line 598
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    :cond_22
    const-wide/16 v9, 0x0

    .line 606
    .line 607
    cmp-long v3, v7, v9

    .line 608
    .line 609
    if-lez v3, :cond_24

    .line 610
    .line 611
    iget-object v3, v0, Landroidx/exifinterface/media/g;->e:Ljava/util/HashSet;

    .line 612
    .line 613
    long-to-int v6, v7

    .line 614
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    if-nez v3, :cond_23

    .line 623
    .line 624
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/f;->d(J)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 628
    .line 629
    .line 630
    move-result v2

    .line 631
    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 632
    .line 633
    .line 634
    goto :goto_11

    .line 635
    :cond_23
    if-eqz v5, :cond_25

    .line 636
    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    .line 640
    .line 641
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    const-string v2, " (at "

    .line 648
    .line 649
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string v2, ")"

    .line 656
    .line 657
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_24
    if-eqz v5, :cond_25

    .line 669
    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    .line 673
    .line 674
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    :cond_25
    :goto_11
    move-wide/from16 v10, v27

    .line 688
    .line 689
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/f;->d(J)V

    .line 690
    .line 691
    .line 692
    goto :goto_12

    .line 693
    :cond_26
    move-wide/from16 v10, v27

    .line 694
    .line 695
    iget v2, v1, Landroidx/exifinterface/media/b;->f:I

    .line 696
    .line 697
    iget v9, v0, Landroidx/exifinterface/media/g;->h:I

    .line 698
    .line 699
    add-int/2addr v2, v9

    .line 700
    long-to-int v9, v12

    .line 701
    new-array v9, v9, [B

    .line 702
    .line 703
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/b;->readFully([B)V

    .line 704
    .line 705
    .line 706
    new-instance v12, Landroidx/exifinterface/media/c;

    .line 707
    .line 708
    int-to-long v13, v2

    .line 709
    move-object/from16 v16, v12

    .line 710
    .line 711
    move-wide/from16 v17, v13

    .line 712
    .line 713
    move-object/from16 v19, v9

    .line 714
    .line 715
    move/from16 v20, v15

    .line 716
    .line 717
    move/from16 v21, v8

    .line 718
    .line 719
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/c;-><init>(J[BII)V

    .line 720
    .line 721
    .line 722
    aget-object v2, v3, p2

    .line 723
    .line 724
    iget-object v3, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 725
    .line 726
    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    const-string v2, "DNGVersion"

    .line 730
    .line 731
    iget-object v3, v6, Landroidx/exifinterface/media/d;->b:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    if-eqz v2, :cond_27

    .line 738
    .line 739
    const/4 v2, 0x3

    .line 740
    iput v2, v0, Landroidx/exifinterface/media/g;->c:I

    .line 741
    .line 742
    :cond_27
    const-string v2, "Make"

    .line 743
    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-nez v2, :cond_28

    .line 749
    .line 750
    const-string v2, "Model"

    .line 751
    .line 752
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    if-eqz v2, :cond_29

    .line 757
    .line 758
    :cond_28
    iget-object v2, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 759
    .line 760
    invoke-virtual {v12, v2}, Landroidx/exifinterface/media/c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v2

    .line 764
    const-string v6, "PENTAX"

    .line 765
    .line 766
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-nez v2, :cond_2a

    .line 771
    .line 772
    :cond_29
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    if-eqz v2, :cond_2b

    .line 777
    .line 778
    iget-object v2, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 779
    .line 780
    invoke-virtual {v12, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    const v3, 0xffff

    .line 785
    .line 786
    .line 787
    if-ne v2, v3, :cond_2b

    .line 788
    .line 789
    :cond_2a
    const/16 v2, 0x8

    .line 790
    .line 791
    iput v2, v0, Landroidx/exifinterface/media/g;->c:I

    .line 792
    .line 793
    :cond_2b
    iget v2, v1, Landroidx/exifinterface/media/b;->f:I

    .line 794
    .line 795
    int-to-long v2, v2

    .line 796
    cmp-long v6, v2, v10

    .line 797
    .line 798
    if-eqz v6, :cond_2c

    .line 799
    .line 800
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/f;->d(J)V

    .line 801
    .line 802
    .line 803
    :cond_2c
    :goto_12
    add-int/lit8 v7, v26, 0x1

    .line 804
    .line 805
    int-to-short v7, v7

    .line 806
    move/from16 v2, p2

    .line 807
    .line 808
    move/from16 v3, v25

    .line 809
    .line 810
    goto/16 :goto_0

    .line 811
    .line 812
    :cond_2d
    move-object v3, v13

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/b;->readInt()I

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    if-eqz v5, :cond_2e

    .line 818
    .line 819
    const/4 v6, 0x1

    .line 820
    new-array v6, v6, [Ljava/lang/Object;

    .line 821
    .line 822
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 823
    .line 824
    .line 825
    move-result-object v7

    .line 826
    const/4 v8, 0x0

    .line 827
    aput-object v7, v6, v8

    .line 828
    .line 829
    const-string v7, "nextIfdOffset: %d"

    .line 830
    .line 831
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v6

    .line 835
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    :cond_2e
    int-to-long v6, v2

    .line 839
    const-wide/16 v8, 0x0

    .line 840
    .line 841
    cmp-long v10, v6, v8

    .line 842
    .line 843
    if-lez v10, :cond_31

    .line 844
    .line 845
    iget-object v8, v0, Landroidx/exifinterface/media/g;->e:Ljava/util/HashSet;

    .line 846
    .line 847
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 848
    .line 849
    .line 850
    move-result-object v9

    .line 851
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v8

    .line 855
    if-nez v8, :cond_30

    .line 856
    .line 857
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/f;->d(J)V

    .line 858
    .line 859
    .line 860
    const/4 v2, 0x4

    .line 861
    aget-object v4, v3, v2

    .line 862
    .line 863
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 864
    .line 865
    .line 866
    move-result v4

    .line 867
    if-eqz v4, :cond_2f

    .line 868
    .line 869
    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 870
    .line 871
    .line 872
    goto :goto_13

    .line 873
    :cond_2f
    aget-object v2, v3, v12

    .line 874
    .line 875
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 876
    .line 877
    .line 878
    move-result v2

    .line 879
    if-eqz v2, :cond_32

    .line 880
    .line 881
    invoke-direct {v0, v1, v12}, Landroidx/exifinterface/media/g;->t(Landroidx/exifinterface/media/f;I)V

    .line 882
    .line 883
    .line 884
    goto :goto_13

    .line 885
    :cond_30
    if-eqz v5, :cond_32

    .line 886
    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    .line 888
    .line 889
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 890
    .line 891
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .line 903
    .line 904
    goto :goto_13

    .line 905
    :cond_31
    if-eqz v5, :cond_32

    .line 906
    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 910
    .line 911
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    .line 923
    .line 924
    :cond_32
    :goto_13
    return-void
.end method

.method private u(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    aget-object p1, v0, p1

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private v(Landroidx/exifinterface/media/b;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/exifinterface/media/c;

    .line 17
    .line 18
    if-eqz v3, :cond_12

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x6

    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    if-eq v3, v5, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/g;->n(Landroidx/exifinterface/media/b;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    const-string v3, "BitsPerSample"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroidx/exifinterface/media/c;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const-string v7, "ExifInterface"

    .line 52
    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    iget-object v8, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 56
    .line 57
    invoke-virtual {v3, v8}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, [I

    .line 62
    .line 63
    sget-object v8, Landroidx/exifinterface/media/g;->o:[I

    .line 64
    .line 65
    invoke-static {v8, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget v9, v0, Landroidx/exifinterface/media/g;->c:I

    .line 73
    .line 74
    const/4 v10, 0x3

    .line 75
    if-ne v9, v10, :cond_5

    .line 76
    .line 77
    const-string v9, "PhotometricInterpretation"

    .line 78
    .line 79
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroidx/exifinterface/media/c;

    .line 84
    .line 85
    if-eqz v9, :cond_5

    .line 86
    .line 87
    iget-object v10, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-virtual {v9, v10}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-ne v9, v4, :cond_3

    .line 94
    .line 95
    sget-object v10, Landroidx/exifinterface/media/g;->p:[I

    .line 96
    .line 97
    invoke-static {v3, v10}, Ljava/util/Arrays;->equals([I[I)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_4

    .line 102
    .line 103
    :cond_3
    if-ne v9, v5, :cond_5

    .line 104
    .line 105
    invoke-static {v3, v8}, Ljava/util/Arrays;->equals([I[I)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_5
    sget-boolean v3, Landroidx/exifinterface/media/g;->l:Z

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string v3, "Unsupported data type value"

    .line 118
    .line 119
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_6
    const/4 v3, 0x0

    .line 123
    :goto_1
    if-eqz v3, :cond_13

    .line 124
    .line 125
    const-string v3, "StripOffsets"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Landroidx/exifinterface/media/c;

    .line 132
    .line 133
    const-string v5, "StripByteCounts"

    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroidx/exifinterface/media/c;

    .line 140
    .line 141
    if-eqz v3, :cond_13

    .line 142
    .line 143
    if-eqz v2, :cond_13

    .line 144
    .line 145
    iget-object v5, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 146
    .line 147
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Landroidx/exifinterface/media/j;->b(Ljava/io/Serializable;)[J

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iget-object v5, v0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 156
    .line 157
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2}, Landroidx/exifinterface/media/j;->b(Ljava/io/Serializable;)[J

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-eqz v3, :cond_11

    .line 166
    .line 167
    array-length v5, v3

    .line 168
    if-nez v5, :cond_7

    .line 169
    .line 170
    goto/16 :goto_5

    .line 171
    .line 172
    :cond_7
    if-eqz v2, :cond_10

    .line 173
    .line 174
    array-length v5, v2

    .line 175
    if-nez v5, :cond_8

    .line 176
    .line 177
    goto/16 :goto_4

    .line 178
    .line 179
    :cond_8
    array-length v5, v3

    .line 180
    array-length v8, v2

    .line 181
    if-eq v5, v8, :cond_9

    .line 182
    .line 183
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 184
    .line 185
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    goto/16 :goto_6

    .line 189
    .line 190
    :cond_9
    array-length v5, v2

    .line 191
    const-wide/16 v8, 0x0

    .line 192
    .line 193
    const/4 v10, 0x0

    .line 194
    :goto_2
    if-ge v10, v5, :cond_a

    .line 195
    .line 196
    aget-wide v11, v2, v10

    .line 197
    .line 198
    add-long/2addr v8, v11

    .line 199
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_a
    long-to-int v5, v8

    .line 203
    new-array v5, v5, [B

    .line 204
    .line 205
    iput-boolean v4, v0, Landroidx/exifinterface/media/g;->g:Z

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    const/4 v9, 0x0

    .line 209
    const/4 v10, 0x0

    .line 210
    :goto_3
    array-length v11, v3

    .line 211
    if-ge v8, v11, :cond_f

    .line 212
    .line 213
    aget-wide v11, v3, v8

    .line 214
    .line 215
    long-to-int v12, v11

    .line 216
    aget-wide v13, v2, v8

    .line 217
    .line 218
    long-to-int v11, v13

    .line 219
    array-length v13, v3

    .line 220
    sub-int/2addr v13, v4

    .line 221
    if-ge v8, v13, :cond_b

    .line 222
    .line 223
    add-int v13, v12, v11

    .line 224
    .line 225
    int-to-long v13, v13

    .line 226
    add-int/lit8 v15, v8, 0x1

    .line 227
    .line 228
    aget-wide v15, v3, v15

    .line 229
    .line 230
    cmp-long v17, v13, v15

    .line 231
    .line 232
    if-eqz v17, :cond_b

    .line 233
    .line 234
    iput-boolean v6, v0, Landroidx/exifinterface/media/g;->g:Z

    .line 235
    .line 236
    :cond_b
    sub-int/2addr v12, v9

    .line 237
    if-gez v12, :cond_c

    .line 238
    .line 239
    const-string v1, "Invalid strip offset value"

    .line 240
    .line 241
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_c
    int-to-long v13, v12

    .line 246
    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J

    .line 247
    .line 248
    .line 249
    move-result-wide v15

    .line 250
    const-string v4, " bytes."

    .line 251
    .line 252
    cmp-long v18, v15, v13

    .line 253
    .line 254
    if-eqz v18, :cond_d

    .line 255
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v2, "Failed to skip "

    .line 259
    .line 260
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_d
    add-int/2addr v9, v12

    .line 278
    new-array v12, v11, [B

    .line 279
    .line 280
    invoke-virtual {v1, v12}, Ljava/io/InputStream;->read([B)I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-eq v13, v11, :cond_e

    .line 285
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    const-string v2, "Failed to read "

    .line 289
    .line 290
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_e
    add-int/2addr v9, v11

    .line 308
    invoke-static {v12, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    .line 310
    .line 311
    add-int/2addr v10, v11

    .line 312
    add-int/lit8 v8, v8, 0x1

    .line 313
    .line 314
    const/4 v4, 0x1

    .line 315
    goto :goto_3

    .line 316
    :cond_f
    iget-boolean v1, v0, Landroidx/exifinterface/media/g;->g:Z

    .line 317
    .line 318
    if-eqz v1, :cond_13

    .line 319
    .line 320
    aget-wide v1, v3, v6

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_10
    :goto_4
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 324
    .line 325
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_11
    :goto_5
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 330
    .line 331
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_12
    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/g;->n(Landroidx/exifinterface/media/b;Ljava/util/HashMap;)V

    .line 336
    .line 337
    .line 338
    :cond_13
    :goto_6
    return-void
.end method

.method private w(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, Landroidx/exifinterface/media/g;->l:Z

    .line 12
    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/exifinterface/media/c;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/exifinterface/media/c;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroidx/exifinterface/media/c;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v3, :cond_5

    .line 95
    .line 96
    if-ge v2, v4, :cond_5

    .line 97
    .line 98
    aget-object v1, v0, p1

    .line 99
    .line 100
    aget-object v2, v0, p2

    .line 101
    .line 102
    aput-object v2, v0, p1

    .line 103
    .line 104
    aput-object v1, v0, p2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 108
    .line 109
    const-string p1, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 116
    .line 117
    const-string p1, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_2
    return-void

    .line 123
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 124
    .line 125
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_7
    return-void
.end method

.method private x(Landroidx/exifinterface/media/f;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/c;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/exifinterface/media/c;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/exifinterface/media/c;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/exifinterface/media/c;

    .line 52
    .line 53
    const-string v6, "ImageWidth"

    .line 54
    .line 55
    const-string v7, "ImageLength"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Landroidx/exifinterface/media/c;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x2

    .line 65
    const-string v8, "Invalid crop size values. cropSize="

    .line 66
    .line 67
    const-string v9, "ExifInterface"

    .line 68
    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/e;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v5, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v4

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-static {v1, v2}, Landroidx/exifinterface/media/c;->c(Landroidx/exifinterface/media/e;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object p1, p1, v3

    .line 94
    .line 95
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {p1, v2}, Landroidx/exifinterface/media/c;->c(Landroidx/exifinterface/media/e;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [I

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    array-length v1, p1

    .line 133
    if-eq v1, v5, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    aget v1, p1, v4

    .line 137
    .line 138
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget p1, p1, v3

    .line 145
    .line 146
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {p1, v2}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    aget-object v2, v0, p2

    .line 153
    .line 154
    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget-object p2, v0, p2

    .line 158
    .line 159
    invoke-virtual {p2, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_5
    if-eqz v2, :cond_6

    .line 185
    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    if-eqz v4, :cond_6

    .line 189
    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 193
    .line 194
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 199
    .line 200
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 205
    .line 206
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    iget-object v4, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 211
    .line 212
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-le v1, p1, :cond_8

    .line 217
    .line 218
    if-le v2, v3, :cond_8

    .line 219
    .line 220
    sub-int/2addr v1, p1

    .line 221
    sub-int/2addr v2, v3

    .line 222
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 223
    .line 224
    invoke-static {v1, p1}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object v1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 229
    .line 230
    invoke-static {v2, v1}, Landroidx/exifinterface/media/c;->d(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/c;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    aget-object v2, v0, p2

    .line 235
    .line 236
    invoke-virtual {v2, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    aget-object p1, v0, p2

    .line 240
    .line 241
    invoke-virtual {p1, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    aget-object v1, v0, p2

    .line 246
    .line 247
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 252
    .line 253
    aget-object v2, v0, p2

    .line 254
    .line 255
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Landroidx/exifinterface/media/c;

    .line 260
    .line 261
    if-eqz v1, :cond_7

    .line 262
    .line 263
    if-nez v2, :cond_8

    .line 264
    .line 265
    :cond_7
    aget-object v1, v0, p2

    .line 266
    .line 267
    const-string v2, "JPEGInterchangeFormat"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    check-cast v1, Landroidx/exifinterface/media/c;

    .line 274
    .line 275
    aget-object v0, v0, p2

    .line 276
    .line 277
    const-string v2, "JPEGInterchangeFormatLength"

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Landroidx/exifinterface/media/c;

    .line 284
    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    iget-object v0, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    int-to-long v2, v0

    .line 302
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/f;->d(J)V

    .line 303
    .line 304
    .line 305
    new-array v1, v1, [B

    .line 306
    .line 307
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 308
    .line 309
    .line 310
    new-instance p1, Landroidx/exifinterface/media/b;

    .line 311
    .line 312
    invoke-direct {p1, v1}, Landroidx/exifinterface/media/b;-><init>([B)V

    .line 313
    .line 314
    .line 315
    invoke-direct {p0, p1, v0, p2}, Landroidx/exifinterface/media/g;->f(Landroidx/exifinterface/media/b;II)V

    .line 316
    .line 317
    .line 318
    :cond_8
    :goto_3
    return-void
.end method

.method private y()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/g;->w(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/g;->w(II)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/g;->w(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/g;->d:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/exifinterface/media/c;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/exifinterface/media/c;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-direct {p0, v4}, Landroidx/exifinterface/media/g;->o(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-direct {p0, v3}, Landroidx/exifinterface/media/g;->o(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-direct {p0, v0, v3, v4}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-direct {p0, v0, v5, v6}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-direct {p0, v0, v8, v7}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v1, v3, v4}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v1, v5, v6}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v1, v8, v7}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v2, v4, v3}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v2, v6, v5}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v2, v7, v8}, Landroidx/exifinterface/media/g;->u(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/g;->d(Ljava/lang/String;)Landroidx/exifinterface/media/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    sget-object v2, Landroidx/exifinterface/media/g;->L:Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/c;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    const/4 p1, 0x5

    .line 32
    const-string v2, "ExifInterface"

    .line 33
    .line 34
    iget v3, v0, Landroidx/exifinterface/media/c;->a:I

    .line 35
    .line 36
    if-eq v3, p1, :cond_1

    .line 37
    .line 38
    const/16 p1, 0xa

    .line 39
    .line 40
    if-eq v3, p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/c;->h(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Landroidx/exifinterface/media/e;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    array-length v0, p1

    .line 71
    const/4 v3, 0x3

    .line 72
    if-eq v0, v3, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    aget-object v2, p1, v1

    .line 79
    .line 80
    iget-wide v3, v2, Landroidx/exifinterface/media/e;->a:J

    .line 81
    .line 82
    long-to-float v3, v3

    .line 83
    iget-wide v4, v2, Landroidx/exifinterface/media/e;->b:J

    .line 84
    .line 85
    long-to-float v2, v4

    .line 86
    div-float/2addr v3, v2

    .line 87
    float-to-int v2, v3

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    aput-object v2, v0, v1

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    aget-object v2, p1, v1

    .line 96
    .line 97
    iget-wide v3, v2, Landroidx/exifinterface/media/e;->a:J

    .line 98
    .line 99
    long-to-float v3, v3

    .line 100
    iget-wide v4, v2, Landroidx/exifinterface/media/e;->b:J

    .line 101
    .line 102
    long-to-float v2, v4

    .line 103
    div-float/2addr v3, v2

    .line 104
    float-to-int v2, v3

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    aput-object v2, v0, v1

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    aget-object p1, p1, v1

    .line 113
    .line 114
    iget-wide v2, p1, Landroidx/exifinterface/media/e;->a:J

    .line 115
    .line 116
    long-to-float v2, v2

    .line 117
    iget-wide v3, p1, Landroidx/exifinterface/media/e;->b:J

    .line 118
    .line 119
    long-to-float p1, v3

    .line 120
    div-float/2addr v2, p1

    .line 121
    float-to-int p1, v2

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    aput-object p1, v0, v1

    .line 127
    .line 128
    const-string p1, "%02d:%02d:%02d"

    .line 129
    .line 130
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v3, "Invalid GPS Timestamp array. array="

    .line 138
    .line 139
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-object v1

    .line 157
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/c;->e(Ljava/nio/ByteOrder;)D

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object p1

    .line 168
    :catch_0
    :cond_5
    return-object v1
.end method

.method public final c()I
    .locals 3

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/g;->d(Ljava/lang/String;)Landroidx/exifinterface/media/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroidx/exifinterface/media/g;->f:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/c;->f(Ljava/nio/ByteOrder;)I

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    return v1
.end method
