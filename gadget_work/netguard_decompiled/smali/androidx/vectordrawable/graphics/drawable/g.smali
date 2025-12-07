.class public final Landroidx/vectordrawable/graphics/drawable/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 27

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v14, 0x0

    if-ne v1, v2, :cond_0

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v11, :cond_30

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_30

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "objectAnimator"

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    new-instance v6, Landroid/animation/ObjectAnimator;

    invoke-direct {v6}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object v4, v6

    move-object/from16 v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/g;->f(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Landroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    const-string v5, "animator"

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p3

    .line 8
    invoke-static/range {v0 .. v5}, Landroidx/vectordrawable/graphics/drawable/g;->f(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Landroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto/16 :goto_17

    :cond_3
    const-string v5, "set"

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/a;->h:[I

    move-object/from16 v6, p4

    invoke-static {v7, v8, v6, v0}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const-string v0, "ordering"

    .line 12
    invoke-static {v5, v9, v0, v14, v14}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v17, v5

    move-object v5, v15

    move/from16 v6, v16

    .line 13
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/g;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 14
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v15

    goto/16 :goto_17

    :cond_4
    const-string v5, "propertyValuesHolder"

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 16
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v6, 0x0

    .line 17
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    if-eq v15, v2, :cond_29

    if-eq v15, v3, :cond_29

    if-eq v15, v4, :cond_5

    .line 18
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2

    .line 19
    :cond_5
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28

    .line 21
    sget-object v15, Landroidx/vectordrawable/graphics/drawable/a;->i:[I

    invoke-static {v7, v8, v1, v15}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    const-string v12, "propertyName"

    .line 22
    invoke-static {v15, v9, v12, v2}, Landroidx/core/content/res/v;->f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "valueType"

    const/4 v3, 0x4

    .line 23
    invoke-static {v15, v9, v14, v4, v3}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v14

    move v4, v14

    const/16 v19, 0x0

    .line 24
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move-object/from16 v21, v1

    if-eq v3, v2, :cond_17

    const/4 v1, 0x1

    if-eq v3, v1, :cond_17

    .line 25
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "keyframe"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 27
    sget-object v1, Landroidx/vectordrawable/graphics/drawable/a;->j:[I

    const-string v3, "value"

    const/4 v2, 0x4

    if-ne v4, v2, :cond_9

    .line 28
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 29
    invoke-static {v7, v8, v2, v1}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 30
    invoke-static {v9, v3}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v23

    move-object/from16 v4, v23

    :goto_4
    if-eqz v4, :cond_7

    const/16 v23, 0x1

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    :goto_5
    if-eqz v23, :cond_8

    .line 32
    iget v4, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 33
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 35
    invoke-static {v7, v8, v2, v1}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v23, v5

    const-string v5, "fraction"

    const/4 v7, 0x3

    .line 36
    invoke-static {v1, v9, v5, v7, v2}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 37
    invoke-static {v9, v3}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    :goto_7
    if-eqz v7, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    const/4 v8, 0x4

    if-ne v4, v8, :cond_d

    if-eqz v5, :cond_c

    .line 39
    iget v7, v7, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x3

    goto :goto_9

    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    move v7, v4

    :goto_9
    if-eqz v5, :cond_10

    if-eqz v7, :cond_f

    const/4 v5, 0x1

    if-eq v7, v5, :cond_e

    const/4 v5, 0x3

    if-eq v7, v5, :cond_e

    const/4 v2, 0x0

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    .line 40
    invoke-static {v1, v9, v3, v5, v5}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 41
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 42
    invoke-static {v1, v9, v3, v5, v7}, Landroidx/core/content/res/v;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 43
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_a

    :cond_10
    if-nez v7, :cond_11

    .line 44
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_a

    .line 45
    :cond_11
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    :goto_a
    const-string v3, "interpolator"

    .line 46
    invoke-static {v9, v3}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v7, 0x0

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 47
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    :goto_b
    move-object/from16 v3, p0

    if-lez v7, :cond_13

    .line 48
    invoke-static {v3, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 49
    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    :cond_13
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v1, v19

    if-eqz v2, :cond_15

    if-nez v1, :cond_14

    .line 51
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v19

    .line 52
    :cond_14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v1

    .line 53
    :cond_15
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_c

    :cond_16
    const/4 v8, 0x4

    move-object/from16 v3, p0

    move-object/from16 v23, v5

    move-object/from16 v1, v19

    :goto_c
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, v21

    move-object/from16 v5, v23

    const/4 v2, 0x3

    goto/16 :goto_3

    :cond_17
    move-object/from16 v3, p0

    move-object/from16 v23, v5

    move-object/from16 v1, v19

    if-eqz v1, :cond_23

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    const/4 v5, 0x0

    .line 55
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    add-int/lit8 v5, v2, -0x1

    .line 56
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    .line 57
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    move-result v8

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v19, v8, v3

    if-gez v19, :cond_19

    const/16 v19, 0x0

    cmpg-float v8, v8, v19

    if-gez v8, :cond_18

    .line 58
    invoke-virtual {v5, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_d

    .line 59
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v5, v3}, Landroidx/vectordrawable/graphics/drawable/g;->b(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    .line 60
    :cond_19
    :goto_d
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v19, v5, v8

    if-eqz v19, :cond_1b

    cmpg-float v5, v5, v8

    if-gez v5, :cond_1a

    .line 61
    invoke-virtual {v7, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_e

    .line 62
    :cond_1a
    invoke-static {v7, v8}, Landroidx/vectordrawable/graphics/drawable/g;->b(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    .line 63
    :cond_1b
    :goto_e
    new-array v5, v2, [Landroid/animation/Keyframe;

    .line 64
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_22

    .line 65
    aget-object v7, v5, v1

    .line 66
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v8

    const/4 v3, 0x0

    cmpg-float v8, v8, v3

    if-gez v8, :cond_20

    if-nez v1, :cond_1c

    .line 67
    invoke-virtual {v7, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_13

    :cond_1c
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_1d

    const/high16 v8, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {v7, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_13

    :cond_1d
    const/high16 v8, 0x3f800000    # 1.0f

    add-int/lit8 v7, v1, 0x1

    move v8, v1

    :goto_10
    if-ge v7, v3, :cond_1f

    .line 69
    aget-object v20, v5, v7

    invoke-virtual/range {v20 .. v20}, Landroid/animation/Keyframe;->getFraction()F

    move-result v20

    const/16 v22, 0x0

    cmpl-float v20, v20, v22

    if-ltz v20, :cond_1e

    goto :goto_11

    :cond_1e
    add-int/lit8 v8, v7, 0x1

    move/from16 v26, v8

    move v8, v7

    move/from16 v7, v26

    goto :goto_10

    :cond_1f
    const/16 v22, 0x0

    :goto_11
    add-int/lit8 v3, v8, 0x1

    .line 70
    aget-object v3, v5, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    add-int/lit8 v7, v1, -0x1

    aget-object v7, v5, v7

    .line 71
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    sub-float/2addr v3, v7

    sub-int v7, v8, v1

    const/16 v18, 0x2

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-float/2addr v3, v7

    move v7, v1

    :goto_12
    move/from16 v20, v2

    if-gt v7, v8, :cond_21

    .line 72
    aget-object v2, v5, v7

    add-int/lit8 v24, v7, -0x1

    aget-object v24, v5, v24

    invoke-virtual/range {v24 .. v24}, Landroid/animation/Keyframe;->getFraction()F

    move-result v24

    move/from16 v25, v8

    add-float v8, v24, v3

    invoke-virtual {v2, v8}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v20

    move/from16 v8, v25

    goto :goto_12

    :cond_20
    :goto_13
    move/from16 v20, v2

    const/16 v18, 0x2

    const/16 v22, 0x0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v20

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_22
    const/16 v18, 0x2

    .line 73
    invoke-static {v12, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v4, v2, :cond_24

    .line 74
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/h;->a()Landroidx/vectordrawable/graphics/drawable/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_14

    :cond_23
    const/4 v2, 0x3

    const/16 v18, 0x2

    const/4 v1, 0x0

    :cond_24
    :goto_14
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_25

    .line 75
    invoke-static {v15, v14, v3, v4, v12}, Landroidx/vectordrawable/graphics/drawable/g;->c(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    :cond_25
    if-eqz v1, :cond_27

    if-nez v6, :cond_26

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    .line 77
    :cond_26
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_27
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_15

    :cond_28
    move-object/from16 v21, v1

    move-object/from16 v23, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v18, 0x2

    .line 79
    :goto_15
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, v21

    move-object/from16 v5, v23

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_29
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v6, :cond_2a

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 81
    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v1, :cond_2b

    .line 82
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    if-eqz v2, :cond_2c

    .line 83
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2c

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_2c
    const/4 v14, 0x1

    :goto_17
    if-eqz v10, :cond_2e

    if-nez v14, :cond_2e

    if-nez v13, :cond_2d

    .line 85
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :cond_2d
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 87
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v3, 0x0

    if-eqz v10, :cond_33

    if-eqz v13, :cond_33

    .line 88
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 89
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v14, 0x0

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v14, 0x1

    .line 90
    aput-object v3, v1, v14

    move v14, v4

    goto :goto_18

    :cond_31
    if-nez p6, :cond_32

    .line 91
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_19

    .line 92
    :cond_32
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_33
    :goto_19
    return-object v0
.end method

.method private static b(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    return-object p0
.end method

.method private static c(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    const/4 v5, 0x0

    .line 27
    :goto_2
    if-eqz v5, :cond_3

    .line 28
    .line 29
    iget v4, v4, Landroid/util/TypedValue;->type:I

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_3
    const/4 v4, 0x0

    .line 33
    :goto_3
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x3

    .line 35
    if-ne p1, v6, :cond_7

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_5

    .line 44
    .line 45
    :cond_4
    if-eqz v5, :cond_6

    .line 46
    .line 47
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    :cond_5
    const/4 p1, 0x3

    .line 54
    goto :goto_4

    .line 55
    :cond_6
    const/4 p1, 0x0

    .line 56
    :cond_7
    :goto_4
    if-nez p1, :cond_8

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    goto :goto_5

    .line 60
    :cond_8
    const/4 v6, 0x0

    .line 61
    :goto_5
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x2

    .line 63
    if-ne p1, v9, :cond_d

    .line 64
    .line 65
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p1}, Landroidx/core/graphics/g;->e(Ljava/lang/String;)[Landroidx/core/graphics/f;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p0}, Landroidx/core/graphics/g;->e(Ljava/lang/String;)[Landroidx/core/graphics/f;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    if-nez p2, :cond_9

    .line 82
    .line 83
    if-eqz p3, :cond_1e

    .line 84
    .line 85
    :cond_9
    if-eqz p2, :cond_c

    .line 86
    .line 87
    new-instance v0, Landroidx/vectordrawable/graphics/drawable/f;

    .line 88
    .line 89
    invoke-direct {v0}, Landroidx/vectordrawable/graphics/drawable/f;-><init>()V

    .line 90
    .line 91
    .line 92
    if-eqz p3, :cond_b

    .line 93
    .line 94
    invoke-static {p2, p3}, Landroidx/core/graphics/g;->c([Landroidx/core/graphics/f;[Landroidx/core/graphics/f;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_a

    .line 99
    .line 100
    new-array p0, v9, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object p2, p0, v2

    .line 103
    .line 104
    aput-object p3, p0, v1

    .line 105
    .line 106
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_6

    .line 111
    :cond_a
    new-instance p2, Landroid/view/InflateException;

    .line 112
    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p4, " Can\'t morph from "

    .line 116
    .line 117
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, " to "

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p2

    .line 139
    :cond_b
    new-array p0, v1, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object p2, p0, v2

    .line 142
    .line 143
    invoke-static {p4, v0, p0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    :goto_6
    move-object v8, p0

    .line 148
    goto/16 :goto_10

    .line 149
    .line 150
    :cond_c
    if-eqz p3, :cond_1e

    .line 151
    .line 152
    new-instance p0, Landroidx/vectordrawable/graphics/drawable/f;

    .line 153
    .line 154
    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/f;-><init>()V

    .line 155
    .line 156
    .line 157
    new-array p1, v1, [Ljava/lang/Object;

    .line 158
    .line 159
    aput-object p3, p1, v2

    .line 160
    .line 161
    invoke-static {p4, p0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    goto/16 :goto_10

    .line 166
    .line 167
    :cond_d
    if-ne p1, v7, :cond_e

    .line 168
    .line 169
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/h;->a()Landroidx/vectordrawable/graphics/drawable/h;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    goto :goto_7

    .line 174
    :cond_e
    move-object p1, v8

    .line 175
    :goto_7
    const/4 v7, 0x5

    .line 176
    const/4 v10, 0x0

    .line 177
    if-eqz v6, :cond_14

    .line 178
    .line 179
    if-eqz v3, :cond_12

    .line 180
    .line 181
    if-ne v0, v7, :cond_f

    .line 182
    .line 183
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    goto :goto_8

    .line 188
    :cond_f
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    :goto_8
    if-eqz v5, :cond_11

    .line 193
    .line 194
    if-ne v4, v7, :cond_10

    .line 195
    .line 196
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    goto :goto_9

    .line 201
    :cond_10
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    :goto_9
    new-array p3, v9, [F

    .line 206
    .line 207
    aput p2, p3, v2

    .line 208
    .line 209
    aput p0, p3, v1

    .line 210
    .line 211
    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    goto :goto_b

    .line 216
    :cond_11
    new-array p0, v1, [F

    .line 217
    .line 218
    aput p2, p0, v2

    .line 219
    .line 220
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    goto :goto_b

    .line 225
    :cond_12
    if-ne v4, v7, :cond_13

    .line 226
    .line 227
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    goto :goto_a

    .line 232
    :cond_13
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    :goto_a
    new-array p2, v1, [F

    .line 237
    .line 238
    aput p0, p2, v2

    .line 239
    .line 240
    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    :goto_b
    move-object v8, p0

    .line 245
    goto/16 :goto_f

    .line 246
    .line 247
    :cond_14
    if-eqz v3, :cond_1a

    .line 248
    .line 249
    if-ne v0, v7, :cond_15

    .line 250
    .line 251
    invoke-virtual {p0, p2, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    float-to-int p2, p2

    .line 256
    goto :goto_c

    .line 257
    :cond_15
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_16

    .line 262
    .line 263
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    goto :goto_c

    .line 268
    :cond_16
    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    :goto_c
    if-eqz v5, :cond_19

    .line 273
    .line 274
    if-ne v4, v7, :cond_17

    .line 275
    .line 276
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    float-to-int p0, p0

    .line 281
    goto :goto_d

    .line 282
    :cond_17
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_18

    .line 287
    .line 288
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    goto :goto_d

    .line 293
    :cond_18
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 294
    .line 295
    .line 296
    move-result p0

    .line 297
    :goto_d
    filled-new-array {p2, p0}, [I

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    goto :goto_f

    .line 306
    :cond_19
    filled-new-array {p2}, [I

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    goto :goto_f

    .line 315
    :cond_1a
    if-eqz v5, :cond_1d

    .line 316
    .line 317
    if-ne v4, v7, :cond_1b

    .line 318
    .line 319
    invoke-virtual {p0, p3, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    float-to-int p0, p0

    .line 324
    goto :goto_e

    .line 325
    :cond_1b
    invoke-static {v4}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    if-eqz p2, :cond_1c

    .line 330
    .line 331
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    goto :goto_e

    .line 336
    :cond_1c
    invoke-virtual {p0, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    :goto_e
    filled-new-array {p0}, [I

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    :cond_1d
    :goto_f
    if-eqz v8, :cond_1e

    .line 349
    .line 350
    if-eqz p1, :cond_1e

    .line 351
    .line 352
    invoke-virtual {v8, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 353
    .line 354
    .line 355
    :cond_1e
    :goto_10
    return-object v8
.end method

.method private static d(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v7, "Can\'t load animation resource ID #0x"

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 24
    .line 25
    .line 26
    move-result-object v8
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v0, p0

    .line 34
    move-object v3, v8

    .line 35
    invoke-static/range {v0 .. v6}, Landroidx/vectordrawable/graphics/drawable/g;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_4

    .line 45
    :catch_0
    move-exception p0

    .line 46
    move-object v0, v8

    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    move-object v0, v8

    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :catch_2
    move-exception p0

    .line 54
    :goto_1
    :try_start_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :catch_3
    move-exception p0

    .line 80
    :goto_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v1, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 102
    .line 103
    .line 104
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :goto_3
    move-object v8, v0

    .line 106
    :goto_4
    if-eqz v8, :cond_1

    .line 107
    .line 108
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 109
    .line 110
    .line 111
    :cond_1
    throw p0
.end method

.method private static f(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ObjectAnimator;Landroid/content/res/XmlResourceParser;)Landroid/animation/ValueAnimator;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    sget-object v4, Landroidx/vectordrawable/graphics/drawable/a;->g:[I

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget-object v5, Landroidx/vectordrawable/graphics/drawable/a;->k:[I

    .line 16
    .line 17
    invoke-static {v0, v1, v2, v5}, Landroidx/core/content/res/v;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez p4, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object/from16 v1, p4

    .line 30
    .line 31
    :goto_0
    const/16 v2, 0x12c

    .line 32
    .line 33
    const-string v5, "duration"

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-static {v4, v3, v5, v6, v2}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    int-to-long v7, v2

    .line 41
    const-string v2, "startOffset"

    .line 42
    .line 43
    const/4 v5, 0x2

    .line 44
    const/4 v9, 0x0

    .line 45
    invoke-static {v4, v3, v2, v5, v9}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    int-to-long v10, v2

    .line 50
    const-string v2, "valueType"

    .line 51
    .line 52
    const/4 v12, 0x7

    .line 53
    const/4 v13, 0x4

    .line 54
    invoke-static {v4, v3, v2, v12, v13}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v12, "valueFrom"

    .line 59
    .line 60
    invoke-static {v3, v12}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    const/4 v14, 0x3

    .line 65
    if-eqz v12, :cond_9

    .line 66
    .line 67
    const-string v12, "valueTo"

    .line 68
    .line 69
    invoke-static {v3, v12}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-eqz v12, :cond_9

    .line 74
    .line 75
    const/4 v12, 0x6

    .line 76
    const/4 v15, 0x5

    .line 77
    if-ne v2, v13, :cond_8

    .line 78
    .line 79
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    const/16 v16, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/16 v16, 0x0

    .line 89
    .line 90
    :goto_1
    if-eqz v16, :cond_2

    .line 91
    .line 92
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const/4 v2, 0x0

    .line 96
    :goto_2
    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    const/16 v17, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_3
    const/16 v17, 0x0

    .line 106
    .line 107
    :goto_3
    if-eqz v17, :cond_4

    .line 108
    .line 109
    iget v5, v5, Landroid/util/TypedValue;->type:I

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    const/4 v5, 0x0

    .line 113
    :goto_4
    if-eqz v16, :cond_5

    .line 114
    .line 115
    invoke-static {v2}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_6

    .line 120
    .line 121
    :cond_5
    if-eqz v17, :cond_7

    .line 122
    .line 123
    invoke-static {v5}, Landroidx/vectordrawable/graphics/drawable/g;->d(I)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    :cond_6
    const/4 v2, 0x3

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    const/4 v2, 0x0

    .line 132
    :cond_8
    :goto_5
    const-string v5, ""

    .line 133
    .line 134
    invoke-static {v4, v2, v15, v12, v5}, Landroidx/vectordrawable/graphics/drawable/g;->c(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    .line 141
    .line 142
    aput-object v2, v5, v9

    .line 143
    .line 144
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 145
    .line 146
    .line 147
    :cond_9
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 151
    .line 152
    .line 153
    const-string v2, "repeatCount"

    .line 154
    .line 155
    invoke-static {v4, v3, v2, v14, v9}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 160
    .line 161
    .line 162
    const-string v2, "repeatMode"

    .line 163
    .line 164
    invoke-static {v4, v3, v2, v13, v6}, Landroidx/core/content/res/v;->e(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 169
    .line 170
    .line 171
    if-eqz v0, :cond_14

    .line 172
    .line 173
    move-object v2, v1

    .line 174
    check-cast v2, Landroid/animation/ObjectAnimator;

    .line 175
    .line 176
    const-string v5, "pathData"

    .line 177
    .line 178
    invoke-static {v0, v3, v5, v6}, Landroidx/core/content/res/v;->f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    if-eqz v5, :cond_13

    .line 183
    .line 184
    const-string v7, "propertyXName"

    .line 185
    .line 186
    const/4 v8, 0x2

    .line 187
    invoke-static {v0, v3, v7, v8}, Landroidx/core/content/res/v;->f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const-string v8, "propertyYName"

    .line 192
    .line 193
    invoke-static {v0, v3, v8, v14}, Landroidx/core/content/res/v;->f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    if-nez v7, :cond_b

    .line 198
    .line 199
    if-eqz v8, :cond_a

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_a
    new-instance v1, Landroid/view/InflateException;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, " propertyXName or propertyYName is needed for PathData"

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-direct {v1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :cond_b
    :goto_6
    invoke-static {v5}, Landroidx/core/graphics/g;->f(Ljava/lang/String;)Landroid/graphics/Path;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-instance v10, Landroid/graphics/PathMeasure;

    .line 234
    .line 235
    invoke-direct {v10, v5, v9}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 236
    .line 237
    .line 238
    new-instance v11, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    const/4 v12, 0x0

    .line 244
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    :cond_c
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    .line 253
    .line 254
    .line 255
    move-result v14

    .line 256
    add-float/2addr v13, v14

    .line 257
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-nez v14, :cond_c

    .line 269
    .line 270
    new-instance v10, Landroid/graphics/PathMeasure;

    .line 271
    .line 272
    invoke-direct {v10, v5, v9}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 273
    .line 274
    .line 275
    const/high16 v5, 0x3f000000    # 0.5f

    .line 276
    .line 277
    div-float v5, v13, v5

    .line 278
    .line 279
    float-to-int v5, v5

    .line 280
    add-int/2addr v5, v6

    .line 281
    const/16 v14, 0x64

    .line 282
    .line 283
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    new-array v14, v5, [F

    .line 288
    .line 289
    new-array v15, v5, [F

    .line 290
    .line 291
    const/4 v12, 0x2

    .line 292
    new-array v6, v12, [F

    .line 293
    .line 294
    add-int/lit8 v12, v5, -0x1

    .line 295
    .line 296
    int-to-float v12, v12

    .line 297
    div-float/2addr v13, v12

    .line 298
    move-object/from16 v16, v1

    .line 299
    .line 300
    move-object/from16 v17, v4

    .line 301
    .line 302
    const/4 v1, 0x0

    .line 303
    const/4 v12, 0x0

    .line 304
    :goto_7
    const/4 v4, 0x0

    .line 305
    if-ge v9, v5, :cond_e

    .line 306
    .line 307
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v18

    .line 311
    check-cast v18, Ljava/lang/Float;

    .line 312
    .line 313
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result v18

    .line 317
    move/from16 v19, v5

    .line 318
    .line 319
    sub-float v5, v12, v18

    .line 320
    .line 321
    invoke-virtual {v10, v5, v6, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 322
    .line 323
    .line 324
    const/4 v4, 0x0

    .line 325
    aget v5, v6, v4

    .line 326
    .line 327
    aput v5, v14, v9

    .line 328
    .line 329
    const/4 v4, 0x1

    .line 330
    aget v5, v6, v4

    .line 331
    .line 332
    aput v5, v15, v9

    .line 333
    .line 334
    add-float/2addr v12, v13

    .line 335
    add-int/lit8 v4, v1, 0x1

    .line 336
    .line 337
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-ge v4, v5, :cond_d

    .line 342
    .line 343
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    check-cast v5, Ljava/lang/Float;

    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    cmpl-float v5, v12, v5

    .line 354
    .line 355
    if-lez v5, :cond_d

    .line 356
    .line 357
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 358
    .line 359
    .line 360
    move v1, v4

    .line 361
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 362
    .line 363
    move/from16 v5, v19

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_e
    if-eqz v7, :cond_f

    .line 367
    .line 368
    invoke-static {v7, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    goto :goto_8

    .line 373
    :cond_f
    move-object v1, v4

    .line 374
    :goto_8
    if-eqz v8, :cond_10

    .line 375
    .line 376
    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    :cond_10
    if-nez v1, :cond_11

    .line 381
    .line 382
    const/4 v6, 0x1

    .line 383
    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    .line 384
    .line 385
    const/4 v9, 0x0

    .line 386
    aput-object v4, v1, v9

    .line 387
    .line 388
    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 389
    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_11
    const/4 v6, 0x1

    .line 393
    const/4 v9, 0x0

    .line 394
    if-nez v4, :cond_12

    .line 395
    .line 396
    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    .line 397
    .line 398
    aput-object v1, v4, v9

    .line 399
    .line 400
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 401
    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_12
    const/4 v12, 0x2

    .line 405
    new-array v5, v12, [Landroid/animation/PropertyValuesHolder;

    .line 406
    .line 407
    aput-object v1, v5, v9

    .line 408
    .line 409
    aput-object v4, v5, v6

    .line 410
    .line 411
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 412
    .line 413
    .line 414
    goto :goto_9

    .line 415
    :cond_13
    move-object/from16 v16, v1

    .line 416
    .line 417
    move-object/from16 v17, v4

    .line 418
    .line 419
    const-string v1, "propertyName"

    .line 420
    .line 421
    invoke-static {v0, v3, v1, v9}, Landroidx/core/content/res/v;->f(Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_14
    move-object/from16 v16, v1

    .line 430
    .line 431
    move-object/from16 v17, v4

    .line 432
    .line 433
    :goto_9
    const-string v1, "interpolator"

    .line 434
    .line 435
    invoke-static {v3, v1}, Landroidx/core/content/res/v;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-nez v1, :cond_15

    .line 440
    .line 441
    move-object/from16 v1, v17

    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_15
    move-object/from16 v1, v17

    .line 445
    .line 446
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    :goto_a
    if-lez v9, :cond_16

    .line 451
    .line 452
    move-object/from16 v2, p0

    .line 453
    .line 454
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    move-object/from16 v3, v16

    .line 459
    .line 460
    invoke-virtual {v3, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    .line 462
    .line 463
    goto :goto_b

    .line 464
    :cond_16
    move-object/from16 v3, v16

    .line 465
    .line 466
    :goto_b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 467
    .line 468
    .line 469
    if-eqz v0, :cond_17

    .line 470
    .line 471
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    .line 473
    .line 474
    :cond_17
    return-object v3
.end method
