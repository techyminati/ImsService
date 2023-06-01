.class public Lcom/mediatek/wfo/legacy/LegacyComponentFactoryImpl;
.super Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;
.source "LegacyComponentFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeWifiOffloadService(Landroid/content/Context;)Lcom/mediatek/wfo/IWifiOffloadService$Stub;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {v0, p1}, Lcom/mediatek/wfo/impl/WifiOffloadService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
