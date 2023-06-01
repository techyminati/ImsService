.class Lcom/mediatek/internal/telephony/cat/TcpChannel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/TcpChannel;->openChannel(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/TcpChannel;

    .line 1008
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 10

    monitor-enter p0

    .line 1010
    :try_start_1
    const-string v0, "[BIP]"

    const-string v1, "[TCP]running TCP channel thread"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_e7

    .line 1011
    const/4 v0, 0x0

    .line 1013
    .local v0, "socketAddress":Ljava/net/InetSocketAddress;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    :try_start_c
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1015
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4, v2, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1016
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mAddress:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget v6, v6, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2e} :catch_bc
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_2e} :catch_a0
    .catchall {:try_start_c .. :try_end_2e} :catchall_e7

    move-object v0, v4

    .line 1018
    const/16 v4, 0x3a98

    :try_start_31
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_38
    .catch Ljava/net/SocketTimeoutException; {:try_start_31 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_bc
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_38} :catch_a0
    .catchall {:try_start_31 .. :try_end_38} :catchall_e7

    .line 1027
    goto :goto_75

    .line 1019
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel$1;
    :catch_39
    move-exception v5

    .line 1020
    .local v5, "e3":Ljava/net/SocketTimeoutException;
    :try_start_3a
    const-string v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TCP]Time out of connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1023
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v4, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-eqz v4, :cond_75

    .line 1024
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v1, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 1025
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v2, v4, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1028
    .end local v5    # "e3":Ljava/net/SocketTimeoutException;
    :cond_75
    :goto_75
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1029
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    const/4 v5, 0x4

    iput v5, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1030
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    const/16 v5, 0x80

    iput v5, v4, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    goto :goto_df

    .line 1032
    :cond_8d
    const-string v4, "[BIP]"

    const-string v5, "[TCP]socket is not connected."

    invoke-static {v4, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1034
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_9f} :catch_bc
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_9f} :catch_a0
    .catchall {:try_start_3a .. :try_end_9f} :catchall_e7

    goto :goto_df

    .line 1044
    :catch_a0
    move-exception v1

    .line 1045
    .local v1, "e2":Ljava/lang/NullPointerException;
    :try_start_a1
    const-string v2, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TCP]Null pointer tcp socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    goto :goto_e0

    .line 1036
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_bc
    move-exception v4

    .line 1037
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "[BIP]"

    const-string v6, "[TCP]Fail to create socket"

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1039
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v3, v5, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1040
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iget-boolean v3, v3, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    if-eqz v3, :cond_df

    .line 1041
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v1, v3, Lcom/mediatek/internal/telephony/cat/BipService;->mIsConnectTimeout:Z

    .line 1042
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mBipService:Lcom/mediatek/internal/telephony/cat/BipService;

    iput-boolean v2, v1, Lcom/mediatek/internal/telephony/cat/BipService;->mIsOpenChannelOverWifi:Z

    .line 1047
    .end local v4    # "e":Ljava/io/IOException;
    :cond_df
    :goto_df
    nop

    .line 1048
    :goto_e0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    # invokes: Lcom/mediatek/internal/telephony/cat/TcpChannel;->onOpenChannelCompleted()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/TcpChannel;->access$000(Lcom/mediatek/internal/telephony/cat/TcpChannel;)V
    :try_end_e5
    .catchall {:try_start_a1 .. :try_end_e5} :catchall_e7

    .line 1049
    monitor-exit p0

    return-void

    .line 1009
    .end local v0    # "socketAddress":Ljava/net/InetSocketAddress;
    :catchall_e7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
