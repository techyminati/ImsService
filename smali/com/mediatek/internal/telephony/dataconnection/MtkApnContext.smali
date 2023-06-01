.class public Lcom/mediatek/internal/telephony/dataconnection/MtkApnContext;
.super Lcom/android/internal/telephony/dataconnection/ApnContext;
.source "MtkApnContext.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "typeId"    # I
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "tracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "priority"    # I

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 60
    return-void
.end method

.method private static getApnTypeFromNetworkRequestEx(Landroid/net/NetworkRequest;IZ)Landroid/os/Bundle;
    .registers 5
    .param p0, "nr"    # Landroid/net/NetworkRequest;
    .param p1, "apnType"    # I
    .param p2, "error"    # Z

    .line 65
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 66
    if-eqz p1, :cond_b

    const/4 p2, 0x1

    .line 67
    :cond_b
    const p1, 0x8000

    .line 69
    :cond_e
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 70
    if-eqz p1, :cond_19

    const/4 p2, 0x1

    .line 71
    :cond_19
    const/16 p1, 0x2000

    .line 73
    :cond_1b
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 74
    if-eqz p1, :cond_26

    const/4 p2, 0x1

    .line 75
    :cond_26
    const/16 p1, 0x1000

    .line 78
    :cond_28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    return-object v0
.end method
