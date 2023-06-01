.class public Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;
.super Ljava/lang/Thread;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDumpThread"
.end annotation


# instance fields
.field private mPid:I

.field final synthetic this$0:Lcom/mediatek/server/anr/AnrManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/anr/AnrManagerService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p2, "pid"    # I

    .line 1703
    iput-object p1, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1704
    iput p2, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;->mPid:I

    .line 1705
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    iget v1, p0, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;->mPid:I

    invoke-virtual {v0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->dumpBinderInfo(I)V

    .line 1709
    return-void
.end method
