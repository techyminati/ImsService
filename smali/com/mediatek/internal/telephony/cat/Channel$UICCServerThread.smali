.class public Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;
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
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final RETRY_COUNT:I = 0x4


# instance fields
.field di:Ljava/io/DataInputStream;

.field mReTryCount:I

.field mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Lcom/mediatek/internal/telephony/cat/TcpServerChannel;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/Channel;
    .param p2, "tcpServerChannel"    # Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 452
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 446
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 447
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 453
    const-string v0, "[BIP]"

    const-string v1, "OpenServerSocketThread Init"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 455
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 460
    const/16 v0, 0x578

    new-array v0, v0, [B

    .line 462
    .local v0, "localBuffer":[B
    const-string v1, "[BIP]"

    const-string v2, "[UICC]ServerTr: Run Enter"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_332

    .line 465
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v1

    const/16 v3, 0x40

    const/4 v4, 0x1

    if-eq v1, v3, :cond_23

    .line 466
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    goto :goto_2a

    .line 468
    :cond_23
    const-string v1, "[BIP]"

    const-string v5, "[UICC]ServerTr:TCP status = TCP_STATUS_LISTEN"

    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_2a
    const/4 v1, 0x0

    :try_start_2b
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:Listen to wait client connection..."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v5, :cond_42

    .line 473
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v5, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_42} :catch_2aa

    .line 513
    :cond_42
    nop

    .line 514
    const-string v2, "[BIP]"

    const-string v5, "[UICC]ServerTr:Receive a client connection."

    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    const/16 v5, -0x80

    invoke-virtual {v2, v5, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 516
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-nez v2, :cond_79

    .line 518
    :try_start_57
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 519
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_68} :catch_70

    .line 523
    nop

    .line 524
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    goto :goto_79

    .line 520
    :catch_70
    move-exception v1

    .line 521
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "[BIP]"

    const-string v3, "[UICC]ServerTr:IOException: getInputStream."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    goto :goto_b

    .line 526
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-nez v2, :cond_9b

    .line 528
    :try_start_7f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v6, v6, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 529
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_90} :catch_91

    .line 533
    goto :goto_9b

    .line 530
    :catch_91
    move-exception v1

    .line 531
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v2, "[BIP]"

    const-string v3, "[UICC]ServerTr:IOException: getOutputStream."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    goto/16 :goto_b

    .line 535
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_9b
    :goto_9b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v2

    if-nez v2, :cond_299

    .line 536
    const/4 v2, 0x1

    .line 537
    .local v2, "goOnRead":Z
    const/4 v5, 0x0

    .line 538
    .local v5, "recvLen":I
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr: Start to read data from network"

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :try_start_ac
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 541
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v6, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v6
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b5} :catch_266

    move v5, v6

    .line 557
    nop

    .line 558
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]ServerTr: Receive data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-ltz v5, :cond_231

    .line 560
    const/4 v6, 0x0

    .line 561
    .local v6, "rSize":I
    const/4 v7, 0x0

    .line 562
    .local v7, "localBufferOffset":I
    const/4 v8, 0x0

    .line 563
    .local v8, "localBufferCount":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 565
    :try_start_d7
    const-string v10, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UICC]ServerTr:mRxBufferCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v10, :cond_10e

    .line 568
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    invoke-static {v0, v1, v10, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v5, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 570
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 571
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v10, v11}, Lcom/mediatek/internal/telephony/cat/Channel;->dataAvailable(I)V

    goto :goto_177

    .line 573
    :cond_10e
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v13, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v10, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    if-gt v5, v10, :cond_12e

    .line 577
    move v6, v5

    goto :goto_13f

    .line 579
    :cond_12e
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    move v6, v10

    move v7, v10

    .line 580
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    sub-int v11, v5, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 582
    :goto_13f
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v0, v1, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 586
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 587
    const-string v10, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[UICC]ServerTr:rSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mRxBufferCacheCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_177
    :goto_177
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_17f
    .catchall {:try_start_d7 .. :try_end_17f} :catchall_22e

    if-lt v10, v11, :cond_20a

    .line 593
    :try_start_181
    const-string v10, "[BIP]"

    const-string v11, "[UICC]ServerTr:mRxBuffer is full."

    invoke-static {v10, v11}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_18f
    .catch Ljava/lang/InterruptedException; {:try_start_181 .. :try_end_18f} :catch_190
    .catchall {:try_start_181 .. :try_end_18f} :catchall_22e

    .line 606
    goto :goto_1ac

    .line 596
    :catch_190
    move-exception v10

    .line 597
    .local v10, "e":Ljava/lang/InterruptedException;
    :try_start_191
    const-string v11, "[BIP]"

    const-string v12, "[UICC]ServerTr:IE :mRxBufferCount >= mBufferSize"

    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 600
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v11

    if-ne v4, v11, :cond_1ac

    .line 601
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v11, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 602
    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v11, v1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 603
    const/4 v2, 0x0

    .line 604
    goto :goto_20c

    .line 607
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_1ac
    :goto_1ac
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v10, :cond_177

    .line 608
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v10, :cond_1cb

    .line 609
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v13, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v10, v11, v12, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    :cond_1cb
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v12, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_1e0

    .line 614
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move v6, v10

    goto :goto_1ea

    .line 616
    :cond_1e0
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    move v6, v10

    .line 618
    :goto_1ea
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v10, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-static {v0, v7, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 621
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v11, v6

    iput v11, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 622
    add-int/2addr v7, v6

    .line 623
    iget-object v10, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iput v1, v10, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto/16 :goto_177

    .line 626
    :cond_20a
    const/4 v2, 0x1

    .line 627
    nop

    .line 630
    :goto_20c
    monitor-exit v9
    :try_end_20d
    .catchall {:try_start_191 .. :try_end_20d} :catchall_22e

    .line 631
    .end local v6    # "rSize":I
    .end local v7    # "localBufferOffset":I
    .end local v8    # "localBufferCount":I
    nop

    .line 648
    if-nez v2, :cond_212

    .line 649
    goto/16 :goto_299

    .line 651
    :cond_212
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[UICC]ServerTr: buffer data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/mediatek/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v2    # "goOnRead":Z
    .end local v5    # "recvLen":I
    goto/16 :goto_9b

    .line 630
    .restart local v2    # "goOnRead":Z
    .restart local v5    # "recvLen":I
    .restart local v6    # "rSize":I
    .restart local v7    # "localBufferOffset":I
    .restart local v8    # "localBufferCount":I
    :catchall_22e
    move-exception v1

    :try_start_22f
    monitor-exit v9
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_22e

    throw v1

    .line 632
    .end local v6    # "rSize":I
    .end local v7    # "localBufferOffset":I
    .end local v8    # "localBufferCount":I
    :cond_231
    const-string v1, "[BIP]"

    const-string v6, "[UICC]ServerTr: client diconnected"

    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :try_start_238
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_245

    .line 635
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 637
    :cond_245
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_252

    .line 638
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_252
    .catch Ljava/io/IOException; {:try_start_238 .. :try_end_252} :catch_253

    .line 643
    :cond_252
    goto :goto_25b

    .line 640
    :catch_253
    move-exception v1

    .line 641
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr:len<0,IOException input stream."

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v1    # "e":Ljava/io/IOException;
    :goto_25b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 645
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 646
    goto :goto_299

    .line 542
    :catch_266
    move-exception v3

    .line 543
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "[BIP]"

    const-string v7, "[UICC]ServerTr:read io exception."

    invoke-static {v6, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 546
    :try_start_271
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v1, :cond_27e

    .line 547
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 549
    :cond_27e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_28b

    .line 550
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 552
    :cond_28b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V
    :try_end_290
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_290} :catch_291

    .line 555
    goto :goto_299

    .line 553
    :catch_291
    move-exception v1

    .line 554
    .local v1, "e1":Ljava/io/IOException;
    const-string v4, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOException input stream."

    invoke-static {v4, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "goOnRead":Z
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "recvLen":I
    :cond_299
    :goto_299
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    # getter for: Lcom/mediatek/internal/telephony/cat/Channel;->mStop:Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/Channel;->access$000(Lcom/mediatek/internal/telephony/cat/Channel;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 654
    const-string v1, "[BIP]"

    const-string v2, "[UICC]ServerTr: stop"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 475
    :catch_2aa
    move-exception v3

    .line 476
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UICC]ServerTr:Fail to accept server socket retry:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    if-lt v2, v5, :cond_2db

    .line 479
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 481
    const-wide/16 v1, 0x64

    :try_start_2cd
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d0
    .catch Ljava/lang/InterruptedException; {:try_start_2cd .. :try_end_2d0} :catch_2d1

    .line 485
    goto :goto_2d9

    .line 482
    :catch_2d1
    move-exception v1

    .line 483
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "[BIP]"

    const-string v4, "[UICC]ServerTr:IE: sleep for SS accept retry."

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :goto_2d9
    goto/16 :goto_b

    .line 488
    :cond_2db
    iput v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 490
    :try_start_2dd
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_2ea

    .line 491
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 493
    :cond_2ea
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_2f7

    .line 494
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2f7
    .catch Ljava/io/IOException; {:try_start_2dd .. :try_end_2f7} :catch_2f8

    .line 499
    :cond_2f7
    goto :goto_300

    .line 496
    :catch_2f8
    move-exception v2

    .line 497
    .local v2, "e1":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOE: input/output stream close."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_300
    :try_start_300
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_30d

    .line 502
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_30d
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_30d} :catch_30e

    .line 506
    :cond_30d
    goto :goto_316

    .line 504
    :catch_30e
    move-exception v2

    .line 505
    .local v2, "e2":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[UICC]ServerTr:IOE: socket close."

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .end local v2    # "e2":Ljava/io/IOException;
    :goto_316
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 508
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/cat/Channel;->closeChannel()I

    .line 509
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/mediatek/internal/telephony/cat/BipChannelManager;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelId:I

    invoke-virtual {v2, v5}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 510
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    invoke-virtual {v2, v1, v4}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 511
    nop

    .line 658
    .end local v3    # "e":Ljava/io/IOException;
    return-void

    .line 464
    :cond_332
    goto/16 :goto_b
.end method
