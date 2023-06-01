.class public Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
.super Ljava/lang/Object;
.source "MtkNetPacketMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;,
        Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;
    }
.end annotation


# static fields
.field private static final MSG_CREATE_QUEUE:I = 0xb

.field private static final MSG_DESTROY_QUEUE:I = 0xc

.field private static final MSG_NOTIFY_PACKET:I = 0x15

.field private static final MSG_SEND_VERDICT:I = 0xd

.field private static final MSG_START_CONNECTION:I = 0x1

.field private static final NAME_CONTROL_THREAD:Ljava/lang/String; = "[MDC]MtkNetPacketMonitor-control"

.field private static final NAME_NOTIFY_THREAD:Ljava/lang/String; = "[MDC]MtkNetPacketMonitor-notify"

.field private static final NAME_RECEIVE_THREAD:Ljava/lang/String; = "[MDC]MtkNetPacketMonitor-receive"

.field private static final TAG:Ljava/lang/String; = "[MDC]MtkNetPacketMonitor"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private mControlHandlerThread:Landroid/os/HandlerThread;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mNotifyHandlerThread:Landroid/os/HandlerThread;

.field private mPacketCallback:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;

.field private mReceiveHandler:Landroid/os/Handler;

.field private mReceiveHandlerThread:Landroid/os/HandlerThread;

.field private mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->initHandler()V

    .line 71
    new-instance v0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-direct {v0, p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;-><init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    .line 72
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mReceiveHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doCreateQueue(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doDestroyQueue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;II)V
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doSendVerdict(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    .line 39
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doStartConnection()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->doNotifyPacket(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
    .param p1, "x1"    # [B

    .line 39
    invoke-direct {p0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->processReceiveBytes([B)V

    return-void
.end method

.method private doCreateQueue(I)V
    .registers 6
    .param p1, "queueNumber"    # I

    .line 133
    const-string v0, "[MDC]MtkNetPacketMonitor"

    if-gtz p1, :cond_19

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCreateQueue: invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 138
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send create queue message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getBindQueueMessage(I)[B

    move-result-object v1

    .line 140
    .local v1, "bindMessage":[B
    iget-object v2, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v2, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->sendMessage([B)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send mode message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getSetModeMessage(I)[B

    move-result-object v0

    .line 144
    .local v0, "modeMessage":[B
    iget-object v2, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v2, v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->sendMessage([B)V

    .line 145
    return-void
.end method

.method private doDestroyQueue(I)V
    .registers 5
    .param p1, "queueNumber"    # I

    .line 148
    const-string v0, "[MDC]MtkNetPacketMonitor"

    if-gtz p1, :cond_19

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDestroyQueue: invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 153
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDestroyQueue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getUnbindQueueMessage(I)[B

    move-result-object v0

    .line 155
    .local v0, "message":[B
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v1, v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->sendMessage([B)V

    .line 156
    return-void
.end method

.method private doNotifyPacket(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 166
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mPacketCallback:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;

    if-eqz v0, :cond_8

    .line 167
    invoke-virtual {v0, p1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;->onPacketEvent(I)V

    goto :goto_f

    .line 169
    :cond_8
    const-string v0, "[MDC]MtkNetPacketMonitor"

    const-string v1, "doNotifyPacket mPacketCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_f
    return-void
.end method

.method private doSendVerdict(II)V
    .registers 5
    .param p1, "queueNumber"    # I
    .param p2, "packetId"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSendVerdict queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packetId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MDC]MtkNetPacketMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getVerdictMessage(III)[B

    move-result-object v0

    .line 162
    .local v0, "message":[B
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v1, v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->sendMessage([B)V

    .line 163
    return-void
.end method

.method private doStartConnection()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->connectToKernel()V

    .line 129
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mSocketWrapper:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;

    invoke-virtual {v0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->blockToReceive()V

    .line 130
    return-void
.end method

.method private initHandler()V
    .registers 3

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[MDC]MtkNetPacketMonitor-control"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandlerThread:Landroid/os/HandlerThread;

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;

    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$1;-><init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[MDC]MtkNetPacketMonitor-receive"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mReceiveHandlerThread:Landroid/os/HandlerThread;

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$2;

    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mReceiveHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$2;-><init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mReceiveHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[MDC]MtkNetPacketMonitor-notify"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mNotifyHandlerThread:Landroid/os/HandlerThread;

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$3;

    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mNotifyHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$3;-><init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mNotifyHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method private processReceiveBytes([B)V
    .registers 8
    .param p1, "bytes"    # [B

    .line 174
    const-string v0, "[MDC]MtkNetPacketMonitor"

    if-eqz p1, :cond_60

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    goto :goto_60

    .line 179
    :cond_9
    new-instance v1, Lcom/mediatek/net/connectivity/MtkPacketMessage;

    invoke-direct {v1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;-><init>()V

    .line 180
    .local v1, "packetMessage":Lcom/mediatek/net/connectivity/MtkPacketMessage;
    invoke-virtual {v1, p1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->parseFromBytes([B)V

    .line 182
    invoke-virtual {v1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getQueueNumber()I

    move-result v2

    .line 183
    .local v2, "queueNumber":I
    invoke-virtual {v1}, Lcom/mediatek/net/connectivity/MtkPacketMessage;->getPacketId()I

    move-result v3

    .line 184
    .local v3, "packetId":I
    if-lez v2, :cond_5a

    if-lez v3, :cond_5a

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processReceiveBytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mNotifyHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "notifyMessage":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 190
    iget-object v4, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    iget-object v4, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 194
    .local v4, "verdictMessage":Landroid/os/Message;
    iput v2, v4, Landroid/os/Message;->arg1:I

    .line 195
    iput v3, v4, Landroid/os/Message;->arg2:I

    .line 196
    iget-object v5, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    .end local v0    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "verdictMessage":Landroid/os/Message;
    goto :goto_5f

    .line 198
    :cond_5a
    const-string v4, "processReceiveBytes not notify"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_5f
    return-void

    .line 175
    .end local v1    # "packetMessage":Lcom/mediatek/net/connectivity/MtkPacketMessage;
    .end local v2    # "queueNumber":I
    .end local v3    # "packetId":I
    :cond_60
    :goto_60
    const-string v1, "processReceiveBytes invalid bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public setPacketCallback(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;

    .line 217
    const-string v0, "[MDC]MtkNetPacketMonitor"

    const-string v1, "setPacketCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mPacketCallback:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;

    .line 219
    return-void
.end method

.method public startMonitorProcessWithUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMonitorProcessWithUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MDC]MtkNetPacketMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 206
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method public stopMonitorProcessWithUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMonitorProcessWithUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MDC]MtkNetPacketMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 213
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method
