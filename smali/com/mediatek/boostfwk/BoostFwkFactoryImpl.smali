.class public Lcom/mediatek/boostfwk/BoostFwkFactoryImpl;
.super Lcom/mediatek/boostfwk/BoostFwkFactory;
.source "BoostFwkFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/mediatek/boostfwk/BoostFwkFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeBoostFwkManager()Lcom/mediatek/boostfwk/BoostFwkManager;
    .registers 2

    .line 42
    invoke-static {}, Lcom/mediatek/boostfwk/BoostFwkManagerImpl;->getInstance()Lcom/mediatek/boostfwk/BoostFwkManagerImpl;

    move-result-object v0

    return-object v0
.end method
