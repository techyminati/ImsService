.class public Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;
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
    name = "TcpReceiverThread"
.end annotation


# instance fields
.field di:Ljava/io/DataInputStream;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/Channel;
    .param p2, "s"    # Ljava/io/DataInputStream;

    .line 352
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    .line 354
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 358
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 360
    .local v0, "localBuffer":[B
    const-string v1, "[BIP]"

    const-string v2, "[TCP]RecTr: run"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "recvLen":I
    const-string v2, "[BIP]"

    const-string v3, "[TCP]RecTr: Wait data from network"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_121

    .line 367
    const/4 v2, 0x0

    :try_start_1c
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 368
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_25} :catch_101
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_121

    move v1, v3

    .line 374
    nop

    .line 375
    :try_start_27
    const-string v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TCP]RecTr: recvLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-ltz v1, :cond_f9

    .line 377
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_44} :catch_121

    .line 378
    :try_start_44
    const-string v4, "[BIP]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TCP]RecTr: mRxBufferCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v4, :cond_a2

    .line 380
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    if-le v1, v4, :cond_78

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    const/16 v5, 0x400

    if-ge v4, v5, :cond_78

    .line 382
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 384
    :cond_78
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 386
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v2, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 387
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_8e
    .catchall {:try_start_44 .. :try_end_8e} :catchall_f6

    .line 391
    :try_start_8e
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_95} :catch_96
    .catchall {:try_start_8e .. :try_end_95} :catchall_f6

    .line 395
    :goto_95
    goto :goto_f3

    .line 392
    :catch_96
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_97
    const-string v4, "[BIP]"

    const-string v5, "[TCP]RecTr: InterruptedException !!!"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_95

    .line 396
    :cond_a2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v4, :cond_f3

    .line 401
    :cond_a8
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_f6

    .line 403
    :try_start_af
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_b6
    .catch Ljava/lang/InterruptedException; {:try_start_af .. :try_end_b6} :catch_b7
    .catchall {:try_start_af .. :try_end_b6} :catchall_f6

    .line 408
    goto :goto_c2

    .line 404
    :catch_b7
    move-exception v4

    .line 405
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_b8
    const-string v5, "[BIP]"

    const-string v6, "[TCP]RecTr: InterruptedException !!!"

    .line 406
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 409
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_c2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-gtz v4, :cond_a8

    .line 413
    if-lez v1, :cond_f3

    .line 414
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 416
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v2, v4, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 417
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v4, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V
    :try_end_e0
    .catchall {:try_start_b8 .. :try_end_e0} :catchall_f6

    .line 419
    :try_start_e0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_e7
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_e7} :catch_e8
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_f6

    .line 424
    goto :goto_f3

    .line 420
    :catch_e8
    move-exception v2

    .line 421
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_e9
    const-string v4, "[BIP]"

    const-string v5, "[TCP]RecTr: InterruptedException !!!"

    .line 422
    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 428
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_f3
    :goto_f3
    monitor-exit v3

    .line 433
    .end local v1    # "recvLen":I
    goto/16 :goto_b

    .line 428
    .restart local v1    # "recvLen":I
    :catchall_f6
    move-exception v2

    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_f6

    .end local v0    # "localBuffer":[B
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;
    :try_start_f8
    throw v2

    .line 430
    .restart local v0    # "localBuffer":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;
    :cond_f9
    const-string v2, "[BIP]"

    const-string v3, "[TCP]RecTr: end of file or server is disconnected."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    goto :goto_111

    .line 369
    :catch_101
    move-exception v3

    .line 370
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v5, "[TCP]RecTr:read io exception."

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 372
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 434
    .end local v1    # "recvLen":I
    .end local v3    # "e":Ljava/io/IOException;
    :cond_111
    :goto_111
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 435
    const-string v1, "[BIP]"

    const-string v2, "[TCP]RecTr: stop"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_120} :catch_121

    .line 441
    :cond_120
    goto :goto_12c

    .line 438
    :catch_121
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "[BIP]"

    const-string v3, "[TCP]RecTr:Error"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_12c
    return-void
.end method
