.class Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;
.super Landroid/database/ContentObserver;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/amplus/PowerSavingUtils;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 311
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    .line 312
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 313
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->observe()V

    .line 315
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # getter for: Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "background_power_saving_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 323
    iget-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # invokes: Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V
    invoke-static {v1}, Lcom/mediatek/amplus/PowerSavingUtils;->access$500(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 324
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 327
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;->this$0:Lcom/mediatek/amplus/PowerSavingUtils;

    # invokes: Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V
    invoke-static {v0}, Lcom/mediatek/amplus/PowerSavingUtils;->access$500(Lcom/mediatek/amplus/PowerSavingUtils;)V

    .line 328
    return-void
.end method
