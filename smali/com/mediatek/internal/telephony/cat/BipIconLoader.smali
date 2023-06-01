.class Lcom/mediatek/internal/telephony/cat/BipIconLoader;
.super Landroid/os/Handler;
.source "BipIconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Stk-BipIL"

.field private static sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

.field private static sSimCount:I

.field private static sThread:[Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mSlotId:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    .line 61
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "slotId"    # I

    .line 81
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mState:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 48
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 50
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 51
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    .line 52
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    .line 54
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumbers:[I

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentRecordIndex:I

    .line 56
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 57
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 82
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 83
    iput p3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSlotId:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private static bitToBnW(I)I
    .registers 2
    .param p0, "bit"    # I

    .line 327
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 328
    const/4 v0, -0x1

    return v0

    .line 330
    :cond_5
    const/high16 v0, -0x1000000

    return v0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/mediatek/internal/telephony/cat/BipIconLoader;
    .registers 7
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "slotId"    # I

    .line 88
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    if-eqz v0, :cond_b

    aget-object v1, v0, p2

    if-eqz v1, :cond_b

    .line 89
    aget-object v0, v0, p2

    return-object v0

    .line 91
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    .line 93
    new-array v0, v0, [Landroid/os/HandlerThread;

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    sget v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    if-ge v0, v2, :cond_2a

    .line 95
    sget-object v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    aput-object v1, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 98
    .end local v0    # "i":I
    :cond_2a
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    if-nez v0, :cond_48

    .line 99
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    .line 100
    new-array v0, v0, [Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    .line 101
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3d
    sget v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    if-ge v0, v2, :cond_48

    .line 102
    sget-object v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    aput-object v1, v2, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 105
    .end local v0    # "i":I
    :cond_48
    if-eqz p1, :cond_87

    .line 106
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v0, p2

    if-nez v2, :cond_60

    .line 107
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BIP Icon Loader"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, p2

    .line 108
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    :cond_60
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    aget-object v0, v0, p2

    if-nez v0, :cond_87

    .line 111
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 112
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    sget-object v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    aput-object v1, v0, p2

    .line 113
    sget-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    aget-object v0, v0, p2

    return-object v0

    .line 115
    :cond_86
    return-object v1

    .line 119
    :cond_87
    return-object v1
.end method

.method private static getMask(I)I
    .registers 2
    .param p0, "numOfBits"    # I

    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_1c

    goto :goto_1a

    .line 414
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_1a

    .line 411
    :pswitch_8
    const/16 v0, 0x7f

    .line 412
    goto :goto_1a

    .line 408
    :pswitch_b
    const/16 v0, 0x3f

    .line 409
    goto :goto_1a

    .line 405
    :pswitch_e
    const/16 v0, 0x1f

    .line 406
    goto :goto_1a

    .line 402
    :pswitch_11
    const/16 v0, 0xf

    .line 403
    goto :goto_1a

    .line 399
    :pswitch_14
    const/4 v0, 0x7

    .line 400
    goto :goto_1a

    .line 396
    :pswitch_16
    const/4 v0, 0x3

    .line 397
    goto :goto_1a

    .line 393
    :pswitch_18
    const/4 v0, 0x1

    .line 394
    nop

    .line 417
    :goto_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .registers 5
    .param p1, "rawData"    # [B

    .line 232
    const-string v0, "Stk-BipIL"

    const-string v1, "call handleImageDescriptor"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 234
    if-nez v2, :cond_17

    .line 235
    const-string v1, "fail to parse image raw data"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_17
    const-string v2, "success to parse image raw data"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return v1
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 296
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 297
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 299
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 301
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 302
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 303
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 304
    .local v7, "currentByte":B
    :goto_14
    if-ge v5, v3, :cond_32

    .line 306
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_21

    .line 307
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 308
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    move v7, v2

    move v2, v8

    .line 310
    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_21
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pixelIndex":I
    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "bitIndex":I
    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->bitToBnW(I)I

    move-result v6

    aput v6, v4, v5

    move v5, v8

    move v6, v9

    goto :goto_14

    .line 313
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_32
    if-eq v5, v3, :cond_3b

    .line 314
    const-string v8, "BipIconLoader"

    const-string v9, "parseToBnW; size error"

    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_3b
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .registers 25
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "valueIndex":I
    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 347
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "valueIndex":I
    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 348
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "valueIndex":I
    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 349
    .local v2, "bitsPerImg":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 351
    .local v3, "numOfClutEntries":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v7, p2

    if-ne v6, v7, :cond_23

    .line 352
    add-int/lit8 v8, v3, -0x1

    aput-byte v5, p3, v8

    .line 355
    :cond_23
    mul-int v8, v0, v1

    .line 356
    .local v8, "numOfPixels":I
    new-array v9, v8, [I

    .line 358
    .local v9, "pixels":[I
    const/4 v4, 0x6

    .line 359
    const/4 v10, 0x0

    .line 360
    .local v10, "pixelIndex":I
    rsub-int/lit8 v11, v2, 0x8

    .line 361
    .local v11, "bitsStartOffset":I
    move v12, v11

    .line 362
    .local v12, "bitIndex":I
    add-int/lit8 v13, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v13, "valueIndex":I
    aget-byte v4, p0, v4

    .line 363
    .local v4, "currentByte":B
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->getMask(I)I

    move-result v14

    .line 364
    .local v14, "mask":I
    const/16 v15, 0x8

    rem-int/2addr v15, v2

    if-nez v15, :cond_3a

    move v5, v6

    .line 365
    .local v5, "bitsOverlaps":Z
    :cond_3a
    :goto_3a
    if-ge v10, v8, :cond_71

    .line 367
    if-gez v12, :cond_4a

    .line 368
    add-int/lit8 v6, v13, 0x1

    .end local v13    # "valueIndex":I
    .local v6, "valueIndex":I
    aget-byte v4, p0, v13

    .line 369
    if-eqz v5, :cond_46

    move v13, v11

    goto :goto_48

    :cond_46
    mul-int/lit8 v13, v12, -0x1

    :goto_48
    move v12, v13

    move v13, v6

    .line 371
    .end local v6    # "valueIndex":I
    .restart local v13    # "valueIndex":I
    :cond_4a
    shr-int v6, v4, v12

    and-int/2addr v6, v14

    .line 372
    .local v6, "clutEntry":I
    mul-int/lit8 v15, v6, 0x3

    .line 373
    .local v15, "clutIndex":I
    add-int/lit8 v16, v10, 0x1

    move/from16 v17, v3

    .end local v3    # "numOfClutEntries":I
    .end local v10    # "pixelIndex":I
    .local v16, "pixelIndex":I
    .local v17, "numOfClutEntries":I
    aget-byte v3, p3, v15

    add-int/lit8 v18, v15, 0x1

    move/from16 v19, v4

    .end local v4    # "currentByte":B
    .local v19, "currentByte":B
    aget-byte v4, p3, v18

    add-int/lit8 v18, v15, 0x2

    move/from16 v20, v5

    .end local v5    # "bitsOverlaps":Z
    .local v20, "bitsOverlaps":Z
    aget-byte v5, p3, v18

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v9, v10

    .line 375
    sub-int/2addr v12, v2

    .line 376
    .end local v6    # "clutEntry":I
    .end local v15    # "clutIndex":I
    move/from16 v10, v16

    move/from16 v3, v17

    move/from16 v4, v19

    move/from16 v5, v20

    goto :goto_3a

    .line 378
    .end local v16    # "pixelIndex":I
    .end local v17    # "numOfClutEntries":I
    .end local v19    # "currentByte":B
    .end local v20    # "bitsOverlaps":Z
    .restart local v3    # "numOfClutEntries":I
    .restart local v4    # "currentByte":B
    .restart local v5    # "bitsOverlaps":Z
    .restart local v10    # "pixelIndex":I
    :cond_71
    move/from16 v17, v3

    .end local v3    # "numOfClutEntries":I
    .restart local v17    # "numOfClutEntries":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private postIcon()V
    .registers 5

    .line 272
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 273
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 275
    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 276
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentRecordIndex:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v3, v0, v1

    .line 278
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumbers:[I

    array-length v3, v1

    if-ge v2, v3, :cond_2b

    .line 279
    aget v0, v1, v2

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->startLoadingIcon(I)V

    goto :goto_34

    .line 281
    :cond_2b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    :cond_34
    :goto_34
    return-void
.end method

.method private readClut()V
    .registers 9

    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    mul-int/2addr v0, v1

    .line 245
    .local v0, "length":I
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 246
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    const/4 v5, 0x4

    aget-byte v5, v4, v5

    const/4 v6, 0x5

    aget-byte v6, v4, v6

    move v4, v5

    move v5, v6

    move v6, v0

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 249
    return-void
.end method

.method private readIconData()V
    .registers 8

    .line 265
    const-string v0, "Stk-BipIL"

    const-string v1, "call readIconData"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v2, v2, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 268
    return-void
.end method

.method private readId()V
    .registers 4

    .line 253
    const-string v0, "Stk-BipIL"

    const-string v1, "call readId"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumber:I

    if-gez v0, :cond_12

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 256
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    .line 257
    return-void

    .line 259
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 261
    return-void
.end method

.method private startLoadingIcon(I)V
    .registers 5
    .param p1, "recordNumber"    # I

    .line 145
    const-string v0, "Stk-BipIL"

    const-string v1, "call startLoadingIcon"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 148
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    .line 149
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 150
    iput p1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumber:I

    .line 153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconsCache contains record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    .line 157
    return-void

    .line 161
    :cond_42
    const-string v1, "to load icon from EFimg"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->readId()V

    .line 163
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 423
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    if-eqz v1, :cond_18

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSlotId:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_18

    .line 424
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 425
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSlotId:I

    aput-object v0, v1, v2

    .line 428
    :cond_18
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    if-eqz v1, :cond_24

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mSlotId:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_24

    .line 429
    aput-object v0, v1, v2

    .line 432
    :cond_24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    sget v2, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sSimCount:I

    if-ge v1, v2, :cond_35

    .line 433
    sget-object v3, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    if-eqz v3, :cond_32

    aget-object v3, v3, v1

    if-eqz v3, :cond_32

    .line 434
    goto :goto_35

    .line 432
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 438
    :cond_35
    :goto_35
    if-ne v1, v2, :cond_3b

    .line 439
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 440
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->sLoader:[Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    .line 442
    :cond_3b
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 443
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 168
    const/4 v0, 0x0

    .line 171
    .local v0, "rawData":[B
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_10e

    const-string v2, "Stk-BipIL"

    packed-switch v1, :pswitch_data_11c

    goto/16 :goto_10d

    .line 207
    :pswitch_a
    :try_start_a
    const-string v1, "load clut done"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 209
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 210
    .local v2, "clut":[B
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 212
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    goto/16 :goto_10d

    .line 189
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "clut":[B
    :pswitch_33
    const-string v1, "load icon done"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 191
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load icon CODING_SCHEME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v4, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_92

    .line 195
    array-length v2, v0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 196
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    goto/16 :goto_10d

    .line 198
    :cond_92
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_a0

    .line 199
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIconData:[B

    .line 200
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->readClut()V

    goto :goto_10d

    .line 202
    :cond_a0
    const-string v3, "else  /postIcon "

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    .line 205
    goto :goto_10d

    .line 173
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_a9
    const-string v1, "load EFimg done"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_b8

    .line 175
    const-string v1, "msg.obj is null."

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    goto :goto_10d

    .line 178
    :cond_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.obj is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 180
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFimg raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->handleImageDescriptor([B)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 183
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->readIconData()V

    goto :goto_10d

    .line 185
    :cond_105
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unable to parse image descriptor"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "rawData":[B
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/BipIconLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v2
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10d} :catch_10e

    .line 221
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v0    # "rawData":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/BipIconLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_10d
    goto :goto_11a

    .line 216
    :catch_10e
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Icon load failed"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->postIcon()V

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_11a
    return-void

    nop

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_33
        :pswitch_a
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .registers 4
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 136
    if-nez p2, :cond_3

    .line 137
    return-void

    .line 139
    :cond_3
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mState:I

    .line 141
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->startLoadingIcon(I)V

    .line 142
    return-void
.end method

.method loadIcons([ILandroid/os/Message;)V
    .registers 5
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    .line 123
    if-eqz p1, :cond_1d

    array-length v0, p1

    if-eqz v0, :cond_1d

    if-nez p2, :cond_8

    goto :goto_1d

    .line 126
    :cond_8
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mEndMsg:Landroid/os/Message;

    .line 128
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 129
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mRecordNumbers:[I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mCurrentRecordIndex:I

    .line 131
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->mState:I

    .line 132
    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->startLoadingIcon(I)V

    .line 133
    return-void

    .line 124
    :cond_1d
    :goto_1d
    return-void
.end method
