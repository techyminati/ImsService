.class public Lcom/mediatek/server/dx/DexOptExtFactoryImpl;
.super Lcom/mediatek/dx/DexOptExtFactory;
.source "DexOptExtFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/mediatek/dx/DexOptExtFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDexOpExt()Lcom/mediatek/dx/DexOptExt;
    .registers 2

    .line 9
    invoke-static {}, Lcom/mediatek/server/dx/DexOptExtImpl;->getInstance()Lcom/mediatek/server/dx/DexOptExtImpl;

    move-result-object v0

    return-object v0
.end method
