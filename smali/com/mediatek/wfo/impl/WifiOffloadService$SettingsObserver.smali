.class Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final WFC_MODE_URI:Landroid/net/Uri;

.field private final WFC_ROAMING_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 603
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    .line 604
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 598
    nop

    .line 599
    const-string p1, "wfc_ims_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_MODE_URI:Landroid/net/Uri;

    .line 600
    nop

    .line 601
    const-string p1, "wfc_ims_roaming_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_ROAMING_MODE_URI:Landroid/net/Uri;

    .line 605
    return-void
.end method

.method static synthetic access$5600(Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;

    .line 597
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->register()V

    return-void
.end method

.method private register()V
    .registers 4

    .line 608
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 609
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 610
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_ROAMING_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 611
    return-void
.end method

.method private unregister()V
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 615
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 616
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 621
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 625
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->WFC_ROAMING_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 626
    :cond_10
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2400(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 627
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2400(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;Z)I

    move-result v1

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2502(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    goto :goto_44

    .line 629
    :cond_30
    const-string v0, "WifiOffloadService"

    const-string v1, "onChange: telephony manager null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2200(Lcom/mediatek/wfo/impl/WifiOffloadService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v1

    # setter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mWfcMode:I
    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$2502(Lcom/mediatek/wfo/impl/WifiOffloadService;I)I

    .line 634
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$SettingsObserver;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    # getter for: Lcom/mediatek/wfo/impl/WifiOffloadService;->mHandler:Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;
    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService;->access$500(Lcom/mediatek/wfo/impl/WifiOffloadService;)Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WFOServHandler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method
