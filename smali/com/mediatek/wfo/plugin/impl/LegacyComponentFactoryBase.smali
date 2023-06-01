.class public Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;
.super Ljava/lang/Object;
.source "LegacyComponentFactoryBase.java"

# interfaces
.implements Lcom/mediatek/wfo/plugin/LegacyComponentFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeWifiOffloadService(Landroid/content/Context;)Lcom/mediatek/wfo/IWifiOffloadService$Stub;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
