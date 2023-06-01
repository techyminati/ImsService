.class public Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UdpReceiverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;

.field udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/Channel;
    .param p2, "s"    # Ljava/net/DatagramSocket;

    .line 257
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 259
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 263
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 265
    .local v0, "localBuffer":[B
    const-string v1, "[BIP]"

    const-string v2, "[UDP]RecTr run"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 268
    .local v1, "recvPacket":Ljava/net/DatagramPacket;
    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "recvLen":I
    const-string v3, "[BIP]"

    const-string v4, "[UDP]RecTr: Wait data from network"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_130

    .line 272
    const/4 v3, 0x0

    :try_start_22
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 273
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 274
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_130

    move v2, v4

    .line 281
    nop

    .line 282
    :try_start_30
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UDP]RecTr: recvLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-ltz v2, :cond_102

    .line 284
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4d} :catch_130

    .line 285
    :try_start_4d
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UDP]RecTr: mRxBufferCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v7, v7, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v5, :cond_ab

    .line 287
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v2, v5, :cond_81

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    const/16 v6, 0x400

    if-ge v5, v6, :cond_81

    .line 289
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    new-array v6, v6, [B

    iput-object v6, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 291
    :cond_81
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v2, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 293
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v3, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 294
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_97
    .catchall {:try_start_4d .. :try_end_97} :catchall_ff

    .line 298
    :try_start_97
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_97 .. :try_end_9e} :catch_9f
    .catchall {:try_start_97 .. :try_end_9e} :catchall_ff

    .line 302
    :goto_9e
    goto :goto_fc

    .line 299
    :catch_9f
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_a0
    const-string v5, "[BIP]"

    const-string v6, "[UDP]RecTr: InterruptedException !!!"

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_9e

    .line 303
    :cond_ab
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v5, :cond_fc

    .line 307
    :cond_b1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_ff

    .line 309
    :try_start_b8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_ff

    .line 314
    goto :goto_cb

    .line 310
    :catch_c0
    move-exception v5

    .line 311
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_c1
    const-string v6, "[BIP]"

    const-string v7, "[UDP]RecTr: InterruptedException !!!"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 315
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_cb
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-gtz v5, :cond_b1

    .line 319
    if-lez v2, :cond_fc

    .line 320
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v2, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 322
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v3, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 323
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v3, v5}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_e9
    .catchall {:try_start_c1 .. :try_end_e9} :catchall_ff

    .line 325
    :try_start_e9
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_f0
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_f0} :catch_f1
    .catchall {:try_start_e9 .. :try_end_f0} :catchall_ff

    .line 330
    goto :goto_fc

    .line 326
    :catch_f1
    move-exception v3

    .line 327
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    :try_start_f2
    const-string v5, "[BIP]"

    const-string v6, "[UDP]RecTr: InterruptedException !!!"

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 333
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_fc
    :goto_fc
    monitor-exit v4

    .line 338
    .end local v2    # "recvLen":I
    goto/16 :goto_11

    .line 333
    .restart local v2    # "recvLen":I
    :catchall_ff
    move-exception v3

    monitor-exit v4
    :try_end_101
    .catchall {:try_start_f2 .. :try_end_101} :catchall_ff

    .end local v0    # "localBuffer":[B
    .end local v1    # "recvPacket":Ljava/net/DatagramPacket;
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
    :try_start_101
    throw v3

    .line 335
    .restart local v0    # "localBuffer":[B
    .restart local v1    # "recvPacket":Ljava/net/DatagramPacket;
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;
    :cond_102
    const-string v3, "[BIP]"

    const-string v4, "[UDP]RecTr: end of file or server is disconnected."

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    goto :goto_120

    .line 275
    :catch_10a
    move-exception v4

    .line 276
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[UDP]RecTr:read io exception."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 278
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput v3, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 279
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 339
    .end local v2    # "recvLen":I
    .end local v4    # "e":Ljava/io/IOException;
    :cond_120
    :goto_120
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 340
    const-string v2, "[BIP]"

    const-string v3, "[UDP]RecTr: stop"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_12f} :catch_130

    .line 345
    :cond_12f
    goto :goto_13b

    .line 342
    :catch_130
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "[BIP]"

    const-string v4, "[UDP]RecTr:Error."

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_13b
    return-void
.end method
