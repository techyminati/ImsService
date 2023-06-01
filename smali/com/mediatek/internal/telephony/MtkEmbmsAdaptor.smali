.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.super Ljava/lang/Object;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;,
        Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;
    }
.end annotation


# static fields
.field private static final MSG_ID_EVENT_IND:I = 0x2

.field private static final MSG_ID_EVENT_REQUEST:I = 0x0

.field private static final MSG_ID_EVENT_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtkEmbmsAdaptor"

.field private static sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "construtor 2 parameter is called - start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    .line 84
    new-instance v1, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 85
    # invokes: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->setRil(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    invoke-static {v1, p1, p2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->access$000(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 87
    new-instance v1, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V

    .line 92
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$1;->start()V

    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 96
    .local v1, "numPhones":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_45

    .line 97
    aget-object v3, p2, v2

    check-cast v3, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 98
    .local v3, "mci":Lcom/mediatek/internal/telephony/MtkRIL;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/internal/telephony/MtkRIL;->setAtInfoNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 101
    .end local v2    # "i":I
    .end local v3    # "mci":Lcom/mediatek/internal/telephony/MtkRIL;
    :cond_45
    const-string v2, "construtor is called - end"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method public static getDefault(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 108
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    if-nez v0, :cond_12

    .line 110
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 112
    :cond_12
    sget-object v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->sInstance:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    return-object v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 124
    const-string v0, "UNKNOWN"

    return-object v0

    .line 122
    :pswitch_8
    const-string v0, "MSG_ID_EVENT_IND"

    return-object v0

    .line 120
    :pswitch_b
    const-string v0, "MSG_ID_EVENT_RESPONSE"

    return-object v0

    .line 118
    :pswitch_e
    const-string v0, "MSG_ID_EVENT_REQUEST"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
