.class Lcom/mediatek/internal/telephony/cat/TcpChannel$3;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/TcpChannel;->closeChannel()I
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

    .line 1117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 6

    monitor-enter p0

    .line 1120
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_42
    .catchall {:try_start_3 .. :try_end_7} :catchall_40

    if-eqz v2, :cond_15

    .line 1121
    :try_start_9
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_13
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_15

    .line 1132
    :catchall_11
    move-exception v2

    goto :goto_5d

    .line 1129
    :catch_13
    move-exception v2

    goto :goto_43

    .line 1123
    :cond_15
    :goto_15
    :try_start_15
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_42
    .catchall {:try_start_15 .. :try_end_19} :catchall_40

    if-eqz v2, :cond_22

    .line 1124
    :try_start_1b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_13
    .catchall {:try_start_1b .. :try_end_22} :catchall_11

    .line 1126
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_42
    .catchall {:try_start_22 .. :try_end_26} :catchall_40

    if-eqz v2, :cond_2f

    .line 1127
    :try_start_28
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2f} :catch_13
    .catchall {:try_start_28 .. :try_end_2f} :catchall_11

    .line 1132
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1133
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1134
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_6e

    .line 1136
    goto :goto_5b

    .line 1132
    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/TcpChannel$3;
    :catchall_40
    move-exception v2

    goto :goto_5d

    .line 1129
    :catch_42
    move-exception v2

    .line 1130
    .local v2, "e":Ljava/io/IOException;
    :goto_43
    :try_start_43
    const-string v3, "[BIP]"

    const-string v4, "[TCP]closeChannel - IOE"

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 1132
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_4a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1133
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1134
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v2, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_6e

    .line 1136
    nop

    .line 1137
    :goto_5b
    monitor-exit p0

    return-void

    .line 1132
    :goto_5d
    :try_start_5d
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1133
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1134
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput-object v1, v3, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1135
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/TcpChannel$3;->this$0:Lcom/mediatek/internal/telephony/cat/TcpChannel;

    iput v0, v1, Lcom/mediatek/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1136
    throw v2
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_6e

    .line 1119
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
