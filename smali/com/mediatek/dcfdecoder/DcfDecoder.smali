.class public Lcom/mediatek/dcfdecoder/DcfDecoder;
.super Ljava/lang/Object;
.source "DcfDecoder.java"


# static fields
.field private static final ACTION_DECODE_FULL_IMAGE:I = 0x0

.field private static final ACTION_JUST_DECODE_BOUND:I = 0x1

.field private static final ACTION_JUST_DECODE_THUMBNAIL:I = 0x2

.field private static final DECODE_THUMBNAIL_FLAG:I = 0x100

.field private static final HEADER_BUFFER_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "DRM/DcfDecoder"

.field private static final THUMBNAIL_TARGET_SIZE:I = 0x60

.field private static sIsOmaDrmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/dcfdecoder/DcfDecoder;->sIsOmaDrmEnabled:Z

    .line 96
    nop

    .line 97
    const-string v1, "ro.vendor.mtk_oma_drm_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/dcfdecoder/DcfDecoder;->sIsOmaDrmEnabled:Z

    .line 98
    const-string v0, "dcfdecoderjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeDrmImage(Ljava/io/FileDescriptor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "size"    # I
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 350
    .local v1, "action":I
    if-eqz p2, :cond_11

    .line 351
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_a

    .line 352
    const/4 v1, 0x1

    goto :goto_11

    .line 353
    :cond_a
    iget v2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    and-int/lit16 v2, v2, 0x100

    if-lez v2, :cond_11

    .line 354
    const/4 v1, 0x2

    .line 358
    :cond_11
    :goto_11
    invoke-static {p0, p1, v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeDecryptDcfFile(Ljava/io/FileDescriptor;II)[B

    move-result-object v2

    .line 359
    .local v2, "clearData":[B
    if-nez v2, :cond_20

    .line 360
    const-string v3, "DRM/DcfDecoder"

    const-string v4, "decodeDrmImage native decrypt failed "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x0

    return-object v3

    .line 364
    :cond_20
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3e

    .line 365
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 366
    .local v3, "thumbnailOpts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 367
    array-length v5, v2

    invoke-static {v2, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 369
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 370
    .local v5, "height":I
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 371
    .local v6, "width":I
    div-int/lit8 v7, v6, 0x60

    .line 372
    .local v7, "sampleSizeWidth":I
    div-int/lit8 v8, v5, 0x60

    .line 373
    .local v8, "sampleSizeHeight":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 375
    .end local v3    # "thumbnailOpts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "height":I
    .end local v6    # "width":I
    .end local v7    # "sampleSizeWidth":I
    .end local v8    # "sampleSizeHeight":I
    :cond_3e
    array-length v3, v2

    invoke-static {v2, v4, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method public static decodeDrmImageIfNeeded(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 251
    const-string v0, "decodeDrmImageIfNeeded seek fd to initial offset with "

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v2, :cond_12

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_12

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_12

    .line 252
    return-object v1

    .line 254
    :cond_12
    const-string v2, "DRM/DcfDecoder"

    const-string v3, "decodeDrmImageIfNeeded with fd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-wide/16 v3, -0x1

    .line 259
    .local v3, "offset":J
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    :try_start_1f
    sget v9, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v5, v6, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v5

    move-wide v3, v5

    .line 266
    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImage(Ljava/io/FileDescriptor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_2b} :catch_3c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_3a

    .line 274
    cmp-long v5, v3, v7

    if-eqz v5, :cond_39

    .line 276
    :try_start_2f
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_34
    .catch Landroid/system/ErrnoException; {:try_start_2f .. :try_end_34} :catch_35

    .line 279
    goto :goto_39

    .line 277
    :catch_35
    move-exception v5

    .line 278
    .local v5, "errno1":Landroid/system/ErrnoException;
    invoke-static {v2, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v5    # "errno1":Landroid/system/ErrnoException;
    :cond_39
    :goto_39
    return-object v1

    .line 274
    :catchall_3a
    move-exception v1

    goto :goto_52

    .line 268
    :catch_3c
    move-exception v5

    .line 269
    .local v5, "errno":Landroid/system/ErrnoException;
    :try_start_3d
    const-string v6, "decodeDrmImageIfNeeded seek fd to beginning with "

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 274
    nop

    .end local v5    # "errno":Landroid/system/ErrnoException;
    cmp-long v5, v3, v7

    if-eqz v5, :cond_51

    .line 276
    :try_start_47
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_51

    .line 277
    :catch_4d
    move-exception v5

    .line 278
    .local v5, "errno1":Landroid/system/ErrnoException;
    invoke-static {v2, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v5    # "errno1":Landroid/system/ErrnoException;
    :cond_51
    :goto_51
    return-object v1

    .line 274
    :goto_52
    cmp-long v5, v3, v7

    if-eqz v5, :cond_60

    .line 276
    :try_start_56
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_5b
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 279
    goto :goto_60

    .line 277
    :catch_5c
    move-exception v5

    .line 278
    .restart local v5    # "errno1":Landroid/system/ErrnoException;
    invoke-static {v2, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v5    # "errno1":Landroid/system/ErrnoException;
    :cond_60
    :goto_60
    throw v1
.end method

.method public static decodeDrmImageIfNeeded([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 301
    const/4 v0, 0x0

    if-eqz p1, :cond_10

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_10

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_10

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_10

    .line 302
    return-object v0

    .line 305
    :cond_10
    const-string v1, "DRM/DcfDecoder"

    const-string v2, "decodeDrmImageIfNeeded with data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p0}, Lcom/mediatek/dcfdecoder/DcfDecoder;->isDrmFile([B)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 307
    return-object v0

    .line 309
    :cond_1e
    const/4 v0, 0x0

    .line 310
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 312
    .local v2, "ashemem":Landroid/os/MemoryFile;
    :try_start_20
    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "drm_image"

    array-length v5, p0

    invoke-direct {v3, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 313
    array-length v3, p0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 314
    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/MemoryFile;->length()I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImage(Ljava/io/FileDescriptor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_3a} :catch_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_3a} :catch_42
    .catchall {:try_start_20 .. :try_end_3a} :catchall_40

    move-object v0, v1

    .line 320
    nop

    .line 321
    :goto_3c
    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    goto :goto_56

    .line 320
    :catchall_40
    move-exception v1

    goto :goto_57

    .line 317
    :catch_42
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_43
    const-string v4, "decodeDrmImageIfNeeded IllegalArgumentException ignoring data"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    nop

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v2, :cond_56

    .line 321
    goto :goto_3c

    .line 315
    :catch_4c
    move-exception v3

    .line 316
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "decodeDrmImageIfNeeded IOException ignoring data "

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_40

    .line 320
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_56

    .line 321
    goto :goto_3c

    .line 324
    :cond_56
    :goto_56
    return-object v0

    .line 320
    :goto_57
    if-eqz v2, :cond_5c

    .line 321
    invoke-virtual {v2}, Landroid/os/MemoryFile;->close()V

    .line 323
    :cond_5c
    throw v1
.end method

.method public static decodeDrmImageIfNeeded([BLjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "header"    # [B
    .param p1, "left"    # Ljava/io/InputStream;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 159
    const/4 v0, 0x0

    if-eqz p2, :cond_10

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_10

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_10

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v1, :cond_10

    .line 160
    return-object v0

    .line 163
    :cond_10
    if-nez p0, :cond_13

    .line 164
    return-object v0

    .line 169
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeDrmImageIfNeeded: header = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DRM/DcfDecoder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 171
    .local v3, "headerSize":I
    const/4 v4, 0x1

    aget-byte v5, p0, v4

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeDrmImageIfNeeded: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-byte v7, p0, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-byte v7, p0, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    aget-byte v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeDrmImageIfNeeded: headerSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v5, 0x80

    if-ge v3, v5, :cond_b8

    .line 177
    new-array v6, v5, [B

    .line 178
    .local v6, "headerEnough":[B
    invoke-static {p0, v4, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    rsub-int v4, v3, 0x80

    :try_start_97
    invoke-virtual {p1, v6, v3, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_b1

    .line 184
    nop

    .line 185
    move-object p0, v6

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decodeDrmImageIfNeeded: after header = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 181
    :catch_b1
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "decodeDrmImageIfNeeded read header with "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    return-object v0

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "headerEnough":[B
    :cond_b8
    :goto_b8
    sget-boolean v4, Lcom/mediatek/dcfdecoder/DcfDecoder;->sIsOmaDrmEnabled:Z

    if-eqz v4, :cond_c3

    .line 190
    invoke-static {p0}, Lcom/mediatek/dcfdecoder/DcfDecoder;->isDrmFile([B)Z

    move-result v4

    if-nez v4, :cond_c3

    .line 191
    return-object v0

    .line 194
    :cond_c3
    const/4 v4, 0x0

    .line 195
    .local v4, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 197
    .local v6, "ashemem":Landroid/os/MemoryFile;
    :try_start_c5
    instance-of v7, p1, Ljava/io/FileInputStream;

    if-eqz v7, :cond_d6

    .line 198
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImage(Ljava/io/FileDescriptor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    goto :goto_131

    .line 200
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "bm":Landroid/graphics/Bitmap;
    :cond_d6
    sget-boolean v7, Lcom/mediatek/dcfdecoder/DcfDecoder;->sIsOmaDrmEnabled:Z

    if-nez v7, :cond_dd

    .line 201
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 203
    :cond_dd
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 204
    .local v7, "leftDataLen":I
    const v8, 0x1e8480

    if-le v7, v8, :cond_101

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeDrmImageIfNeeded ignoring very large file size[ "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_fa} :catch_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_fa} :catch_139
    .catchall {:try_start_c5 .. :try_end_fa} :catchall_137

    .line 207
    nop

    .line 228
    if-eqz v6, :cond_100

    .line 229
    invoke-virtual {v6}, Landroid/os/MemoryFile;->close()V

    .line 207
    :cond_100
    return-object v0

    .line 209
    :cond_101
    :try_start_101
    new-array v0, v7, [B

    .line 210
    .local v0, "leftData":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 212
    sget-boolean v8, Lcom/mediatek/dcfdecoder/DcfDecoder;->sIsOmaDrmEnabled:Z
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_108} :catch_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_101 .. :try_end_108} :catch_139
    .catchall {:try_start_101 .. :try_end_108} :catchall_137

    const-string v9, "drm_image"

    if-eqz v8, :cond_11b

    .line 213
    :try_start_10c
    new-instance v8, Landroid/os/MemoryFile;

    add-int/lit16 v10, v7, 0x80

    invoke-direct {v8, v9, v10}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    move-object v6, v8

    .line 214
    invoke-virtual {v6, p0, v1, v1, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 215
    invoke-virtual {v6, v0, v1, v5, v7}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    goto :goto_124

    .line 217
    :cond_11b
    new-instance v5, Landroid/os/MemoryFile;

    invoke-direct {v5, v9, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    move-object v6, v5

    .line 218
    invoke-virtual {v6, v0, v1, v1, v7}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 221
    :goto_124
    invoke-virtual {v6}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/MemoryFile;->length()I

    move-result v5

    invoke-static {v1, v5, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImage(Ljava/io/FileDescriptor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_130} :catch_143
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10c .. :try_end_130} :catch_139
    .catchall {:try_start_10c .. :try_end_130} :catchall_137

    move-object v4, v1

    .line 228
    .end local v0    # "leftData":[B
    .end local v7    # "leftDataLen":I
    :goto_131
    if-eqz v6, :cond_14d

    .line 229
    :goto_133
    invoke-virtual {v6}, Landroid/os/MemoryFile;->close()V

    goto :goto_14d

    .line 228
    :catchall_137
    move-exception v0

    goto :goto_14e

    .line 225
    :catch_139
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_13a
    const-string v1, "decodeDrmImageIfNeeded IllegalArgumentException ignoring data"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_14d

    .line 229
    goto :goto_133

    .line 223
    :catch_143
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "decodeDrmImageIfNeeded IOException ignoring data"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_13a .. :try_end_149} :catchall_137

    .line 228
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_14d

    .line 229
    goto :goto_133

    .line 232
    :cond_14d
    :goto_14d
    return-object v4

    .line 228
    :goto_14e
    if-eqz v6, :cond_153

    .line 229
    invoke-virtual {v6}, Landroid/os/MemoryFile;->close()V

    .line 231
    :cond_153
    throw v0
.end method

.method private static isDrmFile([B)Z
    .registers 12
    .param p0, "header"    # [B

    .line 388
    const/4 v0, 0x0

    if-eqz p0, :cond_9a

    array-length v1, p0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_a

    goto/16 :goto_9a

    .line 393
    :cond_a
    const/16 v1, 0x8

    .line 394
    .local v1, "ctaMagicLen":I
    const-string v3, "CTA5"

    .line 395
    .local v3, "ctaMagic":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 396
    .local v4, "magic":Ljava/lang/String;
    const-string v5, "CTA5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "DRM/DcfDecoder"

    if-eqz v5, :cond_35

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmFile: this is a cta5 file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v6

    .line 403
    :cond_35
    aget-byte v5, p0, v0

    .line 404
    .local v5, "version":I
    if-eq v5, v6, :cond_3f

    .line 405
    const-string v2, "isDrmFile: version is not dcf version 1, no oma drm file"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v0

    .line 408
    :cond_3f
    aget-byte v8, p0, v6

    .line 409
    .local v8, "contentTypeLen":I
    const/4 v9, 0x2

    aget-byte v9, p0, v9

    .line 410
    .local v9, "contentUriLen":I
    if-lez v8, :cond_78

    add-int/lit8 v10, v8, 0x3

    if-gt v10, v2, :cond_78

    if-lez v9, :cond_78

    if-le v9, v2, :cond_4f

    goto :goto_78

    .line 416
    :cond_4f
    new-instance v2, Ljava/lang/String;

    const/4 v10, 0x3

    invoke-direct {v2, p0, v10, v8}, Ljava/lang/String;-><init>([BII)V

    .line 417
    .local v2, "contentType":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_63

    .line 418
    const-string v6, "isDrmFile: content type not right, not oma drm file"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v0

    .line 421
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "this is a oma drm file: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v6

    .line 412
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_78
    :goto_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDrmFile: content type or uri len invalid, not oma drm file, contentType["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] contentUri["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v0

    .line 389
    .end local v1    # "ctaMagicLen":I
    .end local v3    # "ctaMagic":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v5    # "version":I
    .end local v8    # "contentTypeLen":I
    .end local v9    # "contentUriLen":I
    :cond_9a
    :goto_9a
    return v0
.end method

.method private static native nativeDecryptDcfFile(Ljava/io/FileDescriptor;II)[B
.end method

.method private native nativeForceDecryptFile(Ljava/lang/String;Z)[B
.end method


# virtual methods
.method public forceDecryptFile(Ljava/lang/String;Z)[B
    .registers 5
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "consume"    # Z

    .line 113
    if-nez p1, :cond_b

    .line 114
    const-string v0, "DRM/DcfDecoder"

    const-string v1, "forceDecryptFile: find null file name!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->nativeForceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method
