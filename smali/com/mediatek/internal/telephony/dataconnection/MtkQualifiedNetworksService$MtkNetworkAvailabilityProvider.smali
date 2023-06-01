.class public Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;
.super Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.source "MtkQualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtkNetworkAvailabilityProvider"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MD_NW_TYPE_CELLULAR:I = 0x1

.field private static final MD_NW_TYPE_IWLAN:I = 0x2

.field private static final MD_NW_TYPE_UNKNOWN:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;
    .param p2, "slotIndex"    # I

    .line 88
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;-><init>(Landroid/telephony/data/QualifiedNetworksService;I)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 96
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mLooper:Landroid/os/Looper;

    .line 97
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    .line 134
    const-string v1, "Register for qualified networks changed."

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$000(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 136
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v1, v1, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v1, :cond_41

    .line 137
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mediatek/internal/telephony/MtkRIL;->registerForQualifiedNetworkTypesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_46

    .line 140
    :cond_41
    const-string v0, "Constructor: mPhone.mCi is not instanceof MTKRIL!"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->loge(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 142
    :goto_46
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    instance-of v0, v0, Lcom/mediatek/internal/telephony/MtkRIL;

    if-eqz v0, :cond_14

    .line 151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->unregisterForQualifiedNetworkTypesChanged(Landroid/os/Handler;)V

    goto :goto_1b

    .line 153
    :cond_14
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;

    const-string v1, "close(): mPhone.mCi is not instanceof MTKRIL!"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;->access$100(Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService;Ljava/lang/String;)V

    .line 156
    :goto_1b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkQualifiedNetworksService$MtkNetworkAvailabilityProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 157
    return-void
.end method

.method public converNetworkType(I)I
    .registers 3
    .param p1, "mdReportType"    # I

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "type":I
    packed-switch p1, :pswitch_data_c

    .line 169
    const/4 v0, 0x0

    goto :goto_a

    .line 166
    :pswitch_6
    const/4 v0, 0x5

    .line 167
    goto :goto_a

    .line 163
    :pswitch_8
    const/4 v0, 0x3

    .line 164
    nop

    .line 172
    :goto_a
    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method
