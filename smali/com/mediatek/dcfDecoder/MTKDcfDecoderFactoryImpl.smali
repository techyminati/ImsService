.class public Lcom/mediatek/dcfDecoder/MTKDcfDecoderFactoryImpl;
.super Lcom/mediatek/dcfDecoder/MTKDcfDecoderFactory;
.source "MTKDcfDecoderFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/mediatek/dcfDecoder/MTKDcfDecoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMTKDcfDecoderManager()Lcom/mediatek/dcfDecoder/MTKDcfDecoderManager;
    .registers 2

    .line 42
    new-instance v0, Lcom/mediatek/dcfDecoder/MTKDcfDecoderManagerImpl;

    invoke-direct {v0}, Lcom/mediatek/dcfDecoder/MTKDcfDecoderManagerImpl;-><init>()V

    return-object v0
.end method
