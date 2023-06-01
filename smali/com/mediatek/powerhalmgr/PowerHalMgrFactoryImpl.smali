.class public Lcom/mediatek/powerhalmgr/PowerHalMgrFactoryImpl;
.super Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;
.source "PowerHalMgrFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/mediatek/powerhalmgr/PowerHalMgrFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makePowerHalMgr()Lcom/mediatek/powerhalmgr/PowerHalMgr;
    .registers 2

    .line 42
    invoke-static {}, Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;->getInstance()Lcom/mediatek/powerhalmgr/PowerHalMgrImpl;

    move-result-object v0

    return-object v0
.end method
