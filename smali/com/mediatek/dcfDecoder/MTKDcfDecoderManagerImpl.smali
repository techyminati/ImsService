.class public final Lcom/mediatek/dcfDecoder/MTKDcfDecoderManagerImpl;
.super Lcom/mediatek/dcfDecoder/MTKDcfDecoderManager;
.source "MTKDcfDecoderManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/mediatek/dcfDecoder/MTKDcfDecoderManager;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeDrmImageIfNeededImpl(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 56
    invoke-static {p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImageIfNeeded(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeDrmImageIfNeededImpl([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "data"    # [B
    .param p2, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 60
    invoke-static {p1, p2}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImageIfNeeded([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public decodeDrmImageIfNeededImpl([BLjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "header"    # [B
    .param p2, "left"    # Ljava/io/InputStream;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 52
    invoke-static {p1, p2, p3}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeDrmImageIfNeeded([BLjava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
