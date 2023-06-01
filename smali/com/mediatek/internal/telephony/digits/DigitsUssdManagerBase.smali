.class public Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;
.super Ljava/lang/Object;
.source "DigitsUssdManagerBase.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/digits/DigitsUssdManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUssdExtra()Landroid/os/Bundle;
    .registers 2

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public setUssdExtra(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "intentExtras"    # Landroid/os/Bundle;

    .line 41
    return-void
.end method
