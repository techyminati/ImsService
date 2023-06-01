.class Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "IwlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IwlanDataServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLooper:Landroid/os/Looper;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;I)V
    .registers 8
    .param p2, "slotId"    # I

    .line 93
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mLooper:Landroid/os/Looper;

    .line 101
    new-instance v2, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Landroid/os/Looper;Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 147
    const-string v1, "Register for data call list changed."

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 148
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    const-string v1, "Register for apn unthrottled."

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 151
    iget-object p1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x7

    invoke-interface {p1, v2, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForApnUnthrottled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;ILcom/mediatek/internal/telephony/dataconnection/IwlanDataService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$1;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;-><init>(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;

    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->toResultCode(Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private toResultCode(Ljava/lang/Throwable;)I
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 157
    if-nez p1, :cond_4

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_4
    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    const/4 v1, 0x4

    if-eqz v0, :cond_17

    .line 161
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 162
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_16

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_16
    return v1

    .line 168
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_17
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throwable is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but should be CommandException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$200(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 170
    return v1
.end method


# virtual methods
.method public cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6
    .param p1, "cid"    # I
    .param p2, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 237
    const/4 v0, 0x0

    .line 240
    .local v0, "message":Landroid/os/Message;
    if-eqz p2, :cond_f

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_f
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->cancelHandover(Landroid/os/Message;I)V

    .line 245
    return-void
.end method

.method public close()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 251
    return-void
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .registers 7
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateDataCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    .line 200
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_29

    .line 201
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 206
    return-void
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 210
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDataCallList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    .line 215
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_29

    .line 216
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 220
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 28
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "pduSessionId"    # I
    .param p8, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p9, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p10, "matchAllRuleAllowed"    # Z
    .param p11, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupDataCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x0

    .line 184
    .local v2, "message":Landroid/os/Message;
    if-eqz v1, :cond_2d

    .line 185
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 186
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2d
    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object v15, v2

    invoke-interface/range {v4 .. v15}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V

    .line 191
    return-void
.end method

.method public startHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6
    .param p1, "cid"    # I
    .param p2, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->this$0:Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHandover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->getSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;->access$300(Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    .line 228
    .local v0, "message":Landroid/os/Message;
    if-eqz p2, :cond_29

    .line 229
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_29
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/IwlanDataService$IwlanDataServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->startHandover(Landroid/os/Message;I)V

    .line 233
    return-void
.end method
