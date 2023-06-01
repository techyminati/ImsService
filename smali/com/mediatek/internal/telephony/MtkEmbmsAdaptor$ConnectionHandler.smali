.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;
.super Ljava/lang/Object;
.source "MtkEmbmsAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHandler"
.end annotation


# instance fields
.field private mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

.field private mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/net/LocalSocket;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .param p2, "clientSocket"    # Landroid/net/LocalSocket;
    .param p3, "eventHandler"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 189
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 191
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkEmbmsAdaptor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_1c
    new-instance v0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    const-string v4, "/dev/socket/embmsd"

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 204
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 205
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V

    .line 207
    .local v0, "ioThread":Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    # invokes: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->setDataStream(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;)V
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->access$300(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;)V

    .line 209
    nop

    .line 210
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->start()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_3e

    .line 215
    .end local v0    # "ioThread":Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;
    goto :goto_42

    .line 213
    :catch_3e
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :goto_42
    return-void
.end method
