.class public Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;
.super Ljava/lang/Object;
.source "MtkNetworkStatusUpdater.java"


# static fields
.field private static sMtkNetworkStatusUpdater:Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;I)V
    .registers 5
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "numPhones"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_12

    .line 62
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 64
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method public static init([Lcom/android/internal/telephony/Phone;I)Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;
    .registers 4
    .param p0, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "numPhones"    # I

    .line 50
    const-class v0, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;->sMtkNetworkStatusUpdater:Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;

    if-nez v1, :cond_e

    .line 52
    new-instance v1, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;-><init>([Lcom/android/internal/telephony/Phone;I)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;->sMtkNetworkStatusUpdater:Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;

    .line 54
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;->sMtkNetworkStatusUpdater:Lcom/mediatek/internal/telephony/MtkNetworkStatusUpdater;

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
