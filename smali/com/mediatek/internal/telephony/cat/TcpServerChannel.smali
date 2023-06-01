.class Lcom/mediatek/internal/telephony/cat/TcpServerChannel;
.super Lcom/mediatek/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 18
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/mediatek/internal/telephony/cat/MtkCatService;
    .param p7, "bipManager"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 672
    move-object v9, p0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/mediatek/internal/telephony/cat/MtkCatService;Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 663
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 664
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 665
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 666
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 667
    iput-object v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 673
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .registers 6

    .line 717
    const/4 v0, 0x0

    .line 719
    .local v0, "ret":I
    const-string v1, "[BIP]"

    const-string v2, "[UICC]closeChannel."

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_4d

    .line 721
    const/16 v2, -0x80

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    if-ne v2, v4, :cond_82

    .line 723
    :try_start_16
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v4, 0x40

    iput v4, v2, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 724
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_23

    .line 725
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 727
    :cond_23
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_2a

    .line 728
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 730
    :cond_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_31

    .line 731
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 733
    :cond_31
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_39
    .catchall {:try_start_16 .. :try_end_36} :catchall_37

    goto :goto_3f

    .line 737
    :catchall_37
    move-exception v1

    goto :goto_46

    .line 734
    :catch_39
    move-exception v2

    .line 735
    .local v2, "e":Ljava/io/IOException;
    :try_start_3a
    const-string v4, "[UICC]IOEX closeChannel back to tcp listen."

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_37

    .line 737
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3f
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 738
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 739
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 740
    goto :goto_82

    .line 737
    :goto_46
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 738
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 739
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 740
    throw v1

    .line 743
    :cond_4d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_56

    .line 744
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->requestStop()V

    .line 745
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 748
    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_5d

    .line 749
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 750
    :cond_5d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_64

    .line 751
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 752
    :cond_64
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_6b

    .line 753
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 754
    :cond_6b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_7b

    .line 755
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_72} :catch_75
    .catchall {:try_start_56 .. :try_end_72} :catchall_73

    goto :goto_7b

    .line 759
    :catchall_73
    move-exception v1

    goto :goto_83

    .line 756
    :catch_75
    move-exception v2

    .line 757
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_76
    const-string v4, "[UICC]IOEX closeChannel"

    invoke-static {v1, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_73

    .line 759
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7b
    :goto_7b
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 760
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 761
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 767
    nop

    .line 769
    :cond_82
    :goto_82
    return v0

    .line 759
    :goto_83
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 760
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 761
    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 767
    throw v1
.end method

.method public getTcpStatus()B
    .registers 4

    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_6

    int-to-byte v0, v0

    return v0

    .line 976
    :catch_6
    move-exception v0

    .line 977
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string v1, "[BIP]"

    const-string v2, "[TCP]getTcpStatus"

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x0

    return v1
.end method

.method public getTxAvailBufferSize()I
    .registers 5

    .line 893
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    const-string v1, "[BIP]"

    if-nez v0, :cond_d

    .line 894
    const-string v0, "[UICC]getTxAvailBufferSize - mTxBuffer null:"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    return v0

    .line 897
    :cond_d
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v0, v0

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int/2addr v0, v2

    .line 898
    .local v0, "txRemaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UICC]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .registers 2

    .line 986
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .registers 7
    .param p1, "cmdMsg"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "ret":I
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mNetwork:Landroid/net/Network;

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC]openChannel mLinkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLinkMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3c

    .line 699
    :cond_24
    const/16 v1, 0x40

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 700
    const/4 v1, 0x4

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    .line 701
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;

    invoke-direct {v3, p0, p0}, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;-><init>(Lcom/mediatek/internal/telephony/cat/Channel;Lcom/mediatek/internal/telephony/cat/TcpServerChannel;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 702
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 704
    :cond_3c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->checkBufferSize()I

    move-result v0

    .line 705
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4c

    .line 706
    const-string v1, "[UICC]openChannel: buffer size is modified"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    iput v1, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 709
    :cond_4c
    iget-object v1, p1, Lcom/mediatek/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 710
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 711
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 713
    return v0
.end method

.method public receiveData(ILcom/mediatek/internal/telephony/cat/ReceiveDataResult;)I
    .registers 11
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    .line 903
    const-string v0, "[BIP]"

    const-string v1, "[UICC]new receiveData method"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v0, 0x0

    .line 906
    .local v0, "ret":I
    const/4 v1, 0x5

    if-nez p2, :cond_13

    .line 907
    const-string v2, "[BIP]"

    const-string v3, "[UICC]rdr is null"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return v1

    .line 911
    :cond_13
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UICC]receiveData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 915
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 916
    :try_start_44
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    const/4 v4, 0x0

    if-lt v3, p1, :cond_95

    .line 917
    const-string v3, "[BIP]"

    const-string v5, "[UICC]rx buffer has enough data"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_d5

    .line 920
    :try_start_50
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v3, v5, v6, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 922
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 923
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    if-nez v3, :cond_69

    .line 924
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 926
    :cond_69
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCacheCount:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 927
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v3, v4, :cond_82

    .line 928
    const-string v3, "[BIP]"

    const-string v4, ">= [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_82
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_50 .. :try_end_82} :catch_8b
    .catchall {:try_start_50 .. :try_end_82} :catchall_d5

    .line 935
    :cond_82
    nop

    .line 936
    :try_start_83
    const-string v1, "[BIP]"

    const-string v3, "[UICC]rx buffer has enough data - end"

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 932
    :catch_8b
    move-exception v3

    .line 933
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]fail copy rx buffer out 1"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    monitor-exit v2

    return v1

    .line 938
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_95
    const-string v3, "[BIP]"

    const-string v5, "[UICC]rx buffer is insufficient - being"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_83 .. :try_end_9c} :catchall_d5

    .line 941
    :try_start_9c
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v6, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v3, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 942
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 943
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 945
    iget v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v3, v5, :cond_bd

    .line 946
    const-string v3, "[BIP]"

    const-string v5, "< [UICC]notify to read data more to mRxBuffer"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 950
    :cond_bd
    iput v4, p2, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_bf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9c .. :try_end_bf} :catch_cb
    .catchall {:try_start_9c .. :try_end_bf} :catchall_d5

    .line 951
    const/16 v0, 0x9

    .line 955
    nop

    .line 956
    :try_start_c2
    const-string v1, "[BIP]"

    const-string v3, "[UICC]rx buffer is insufficient - end"

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :goto_c9
    monitor-exit v2

    .line 959
    return v0

    .line 952
    :catch_cb
    move-exception v3

    .line 953
    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "[BIP]"

    const-string v5, "[UICC]fail copy rx buffer out 2"

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    monitor-exit v2

    return v1

    .line 958
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_d5
    move-exception v1

    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_c2 .. :try_end_d7} :catchall_d5

    throw v1
.end method

.method public receiveData(I)Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    .registers 12
    .param p1, "requestCount"    # I

    .line 774
    new-instance v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 776
    .local v0, "ret":Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UICC]receiveData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    const/4 v3, 0x0

    if-lt v1, p1, :cond_5a

    .line 782
    :try_start_36
    const-string v1, "[UICC]Start to copy data from buffer"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v1, v4, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 785
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 786
    iget v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_52} :catch_53

    goto :goto_59

    .line 787
    :catch_53
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "IOOB-1"

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_59
    goto :goto_b9

    .line 791
    :cond_5a
    move v1, p1

    .line 792
    .local v1, "needCopy":I
    iget v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 793
    .local v4, "canCopy":I
    const/4 v5, 0x0

    .line 794
    .local v5, "countCopied":I
    const/4 v6, 0x0

    .line 796
    .local v6, "canExitLoop":Z
    :goto_5f
    if-nez v6, :cond_b9

    .line 797
    if-le v1, v4, :cond_80

    .line 799
    :try_start_63
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 802
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I
    :try_end_76
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_63 .. :try_end_76} :catch_79

    .line 803
    add-int/2addr v5, v4

    .line 804
    sub-int/2addr v1, v4

    .line 807
    :goto_78
    goto :goto_9b

    .line 805
    :catch_79
    move-exception v7

    .line 806
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "IOOB-2"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_78

    .line 810
    :cond_80
    :try_start_80
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v9, v0, Lcom/mediatek/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v7, v8, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_80 .. :try_end_92} :catch_95

    .line 813
    add-int/2addr v5, v1

    .line 814
    const/4 v1, 0x0

    .line 817
    goto :goto_9b

    .line 815
    :catch_95
    move-exception v7

    .line 816
    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "IOOB-3"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_9b
    if-nez v1, :cond_9f

    .line 820
    const/4 v6, 0x1

    goto :goto_5f

    .line 823
    :cond_9f
    :try_start_9f
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-virtual {v7, v8, v3, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    .line 824
    .local v7, "count":I
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 825
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ae} :catch_af

    .end local v7    # "count":I
    goto :goto_b8

    .line 826
    :catch_af
    move-exception v7

    .line 827
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "IOException"

    invoke-static {v2, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 829
    .end local v7    # "e":Ljava/io/IOException;
    :goto_b8
    goto :goto_5f

    .line 833
    .end local v1    # "needCopy":I
    .end local v4    # "canCopy":I
    .end local v5    # "countCopied":I
    .end local v6    # "canExitLoop":Z
    :cond_b9
    :goto_b9
    return-object v0
.end method

.method public sendData([BI)I
    .registers 14
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 840
    .local v1, "tmpBuffer":[B
    const/4 v2, 0x5

    const-string v3, "[BIP]"

    if-nez p1, :cond_d

    .line 841
    const-string v4, "[UICC]sendData - data null:"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return v2

    .line 845
    :cond_d
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    if-nez v4, :cond_17

    .line 846
    const-string v4, "[UICC]sendData - mTxBuffer null:"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return v2

    .line 850
    :cond_17
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int/2addr v4, v5

    .line 852
    .local v4, "txRemaining":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[UICC]sendData: size of buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_66

    if-ne v7, p2, :cond_66

    .line 857
    move-object v1, p1

    .line 858
    array-length v5, p1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    goto :goto_80

    .line 861
    :cond_66
    :try_start_66
    array-length v5, p1

    if-lt v4, v5, :cond_78

    .line 862
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    iget v9, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v10, p1

    invoke-static {p1, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v9, p1

    add-int/2addr v5, v9

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    goto :goto_7d

    .line 865
    :cond_78
    const-string v5, "[UICC]sendData - tx buffer is not enough"

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_66 .. :try_end_7d} :catch_c8

    .line 869
    :goto_7d
    nop

    .line 870
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 872
    :goto_80
    if-ne p2, v7, :cond_c7

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_c7

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    const/16 v7, -0x80

    if-ne v5, v7, :cond_c7

    .line 876
    :try_start_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S[UICC]END_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v5, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    invoke-virtual {v3, v1, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 879
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 880
    iput v8, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_bc} :catch_c2
    .catch Ljava/lang/NullPointerException; {:try_start_8f .. :try_end_bc} :catch_bd

    .line 887
    goto :goto_c7

    .line 884
    :catch_bd
    move-exception v3

    .line 885
    .local v3, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 886
    return v2

    .line 881
    .end local v3    # "e2":Ljava/lang/NullPointerException;
    :catch_c2
    move-exception v3

    .line 882
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 883
    return v2

    .line 889
    .end local v3    # "e":Ljava/io/IOException;
    :cond_c7
    :goto_c7
    return v0

    .line 867
    :catch_c8
    move-exception v3

    .line 868
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    return v2
.end method

.method public setCloseBackToTcpListen(Z)V
    .registers 2
    .param p1, "isBackToTcpListen"    # Z

    .line 983
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 984
    return-void
.end method

.method public setTcpStatus(BZ)V
    .registers 5
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .line 962
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v0, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    if-ne v0, p1, :cond_7

    .line 963
    return-void

    .line 965
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UICC][TCPStatus]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput p1, v0, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 968
    const/4 v0, 0x1

    if-ne v0, p2, :cond_33

    .line 969
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/TcpServerChannel;->changeChannelStatus(B)V

    .line 972
    :cond_33
    return-void
.end method
