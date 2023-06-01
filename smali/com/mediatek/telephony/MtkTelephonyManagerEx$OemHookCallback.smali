.class public Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;
.super Ljava/lang/Object;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemHookCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtCmdResp(IJLjava/lang/String;)V
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1168
    const-string v0, "MtkTelephonyManagerEx"

    const-string v1, "OemHookCallback Not override onAtCmdResp"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void
.end method

.method public onAtUrcInd(ILjava/lang/String;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1172
    const-string v0, "MtkTelephonyManagerEx"

    const-string v1, "OemHookCallback Not override onAtUrcInd"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/String;

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OemHookCallback onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    return-void
.end method
