.class Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;
.super Ljava/lang/Object;
.source "MtkNetPacketMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketWrapper"
.end annotation


# static fields
.field private static final IO_TIMEOUT:J = 0x12cL

.field private static final SOCKET_RECV_BUFSIZE:I = 0x1000


# instance fields
.field private mSocket:Ljava/io/FileDescriptor;

.field final synthetic this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;


# direct methods
.method public constructor <init>(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    .line 238
    iput-object p1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method private isSocketValid()Z
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private sendMessage([BII)V
    .registers 10
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 288
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->isSocketValid()Z

    move-result v0

    const-string v1, "[MDC]MtkNetPacketMonitor"

    if-nez v0, :cond_e

    .line 289
    const-string v0, "socket is not valid"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 293
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v4, 0x12c

    .line 294
    invoke-static {v4, v5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 293
    invoke-static {v0, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 295
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 296
    .local v0, "ret":I
    if-gtz v0, :cond_39

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_39} :catch_3a
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_39} :catch_3a

    .line 301
    .end local v0    # "ret":I
    :cond_39
    goto :goto_3e

    .line 299
    :catch_3a
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method


# virtual methods
.method public blockToReceive()V
    .registers 10

    .line 257
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 258
    .local v0, "socketBuffer":[B
    new-instance v6, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 259
    .local v6, "inetSocketAddress":Ljava/net/InetSocketAddress;
    const/4 v7, 0x0

    .line 260
    .local v7, "offset":I
    const/4 v8, 0x0

    .line 262
    .local v8, "flag":I
    :goto_c
    invoke-direct {p0}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->isSocketValid()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 264
    :try_start_12
    iget-object v1, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    array-length v4, v0

    move-object v2, v0

    move v3, v7

    move v5, v8

    invoke-static/range {v1 .. v6}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v1

    .line 266
    .local v1, "rval":I
    if-lez v1, :cond_28

    .line 267
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 268
    .local v2, "array":[B
    iget-object v3, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->this$0:Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;

    # invokes: Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->processReceiveBytes([B)V
    invoke-static {v3, v2}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;->access$500(Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;[B)V

    .line 269
    .end local v2    # "array":[B
    goto :goto_3e

    .line 270
    :cond_28
    const-string v2, "[MDC]MtkNetPacketMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockToReceive error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_3e} :catch_3f
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_3e} :catch_3f

    .line 275
    .end local v1    # "rval":I
    :goto_3e
    goto :goto_c

    .line 272
    :catch_3f
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    goto :goto_c

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_44
    return-void
.end method

.method public connectToKernel()V
    .registers 5

    .line 244
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    .line 245
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 247
    iget-object v0, p0, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->mSocket:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1f} :catch_20
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 250
    goto :goto_24

    .line 248
    :catch_20
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public sendMessage([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 280
    if-eqz p1, :cond_d

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    goto :goto_d

    .line 284
    :cond_7
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$SocketWrapper;->sendMessage([BII)V

    .line 285
    return-void

    .line 281
    :cond_d
    :goto_d
    const-string v0, "[MDC]MtkNetPacketMonitor"

    const-string v1, "sendMessage invalid bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method
