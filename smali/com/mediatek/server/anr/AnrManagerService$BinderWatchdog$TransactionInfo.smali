.class public Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog$TransactionInfo;
.super Ljava/lang/Object;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransactionInfo"
.end annotation


# instance fields
.field protected atime:Ljava/lang/String;

.field protected direction:Ljava/lang/String;

.field protected ktime:Ljava/lang/String;

.field protected rcv_pid:Ljava/lang/String;

.field protected rcv_tid:Ljava/lang/String;

.field protected snd_pid:Ljava/lang/String;

.field protected snd_tid:Ljava/lang/String;

.field protected spent_time:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    return-void
.end method
