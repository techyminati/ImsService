.class Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;
.super Ljava/lang/Thread;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MtkEmbmsAdaptIoThread"
.end annotation


# static fields
.field private static final MAX_DATA_LENGTH:I = 0x1000


# instance fields
.field private mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

.field private mInput:Ljava/io/InputStream;

.field private mIsContinue:Z

.field private mName:Ljava/lang/String;

.field private mOutput:Ljava/io/OutputStream;

.field private final mOutputLock:Ljava/lang/Object;

.field private readBuffer:[B

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V
    .registers 8
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "eventHandler"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 233
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mName:Ljava/lang/String;

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mIsContinue:Z

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mInput:Ljava/io/InputStream;

    .line 224
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mOutput:Ljava/io/OutputStream;

    .line 225
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 226
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mOutputLock:Ljava/lang/Object;

    .line 227
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->readBuffer:[B

    .line 234
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mName:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mInput:Ljava/io/InputStream;

    .line 236
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mOutput:Ljava/io/OutputStream;

    .line 237
    iput-object p5, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 238
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "MtkEmbmsAdaptIoThread constructor is called."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->readBuffer:[B

    .line 240
    return-void
.end method


# virtual methods
.method protected handleInput(Ljava/lang/String;)V
    .registers 5
    .param p1, "input"    # Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process input: RCV <-("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkEmbmsAdaptor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mEventHandler:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 282
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public run()V
    .registers 6

    .line 248
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "MtkEmbmsAdaptIoThread running."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_7
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mIsContinue:Z

    if-eqz v1, :cond_4c

    .line 251
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mInput:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->readBuffer:[B

    const/16 v3, 0x1000

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 252
    .local v1, "count":I
    if-gez v1, :cond_1e

    .line 254
    const-string v2, "readEvent(), fail to read and throw exception"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_30

    .line 255
    goto :goto_4c

    .line 258
    :cond_1e
    if-lez v1, :cond_4b

    .line 260
    :try_start_20
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->readBuffer:[B

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->handleInput(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_3a

    .line 263
    goto :goto_4b

    .line 261
    :catch_2b
    move-exception v2

    .line 262
    .local v2, "ee":Ljava/lang/Exception;
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_4b

    .line 273
    .end local v1    # "count":I
    .end local v2    # "ee":Ljava/lang/Exception;
    :catch_30
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MtkEmbmsAdaptIoThread Exception."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_4b

    .line 265
    :catch_3a
    move-exception v1

    .line 266
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "MtkEmbmsAdaptIoThread IOException."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const-string v2, "Socket disconnected."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->terminate()V

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4b
    :goto_4b
    goto :goto_7

    .line 278
    :cond_4c
    :goto_4c
    return-void
.end method

.method public sendCommand(Ljava/lang/String;)V
    .registers 5
    .param p1, "rawCmd"    # Ljava/lang/String;

    .line 287
    const-string v0, "MtkEmbmsAdaptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SND -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mOutputLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_1e
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mOutput:Ljava/io/OutputStream;

    if-nez v1, :cond_2a

    .line 291
    const-string v1, "MtkEmbmsAdaptor"

    const-string v2, "missing SIM output stream"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_3a

    goto :goto_38

    .line 294
    :cond_2a
    :try_start_2a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_33} :catch_34
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 297
    goto :goto_38

    .line 295
    :catch_34
    move-exception v1

    .line 296
    .local v1, "e":Ljava/io/IOException;
    :try_start_35
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :goto_38
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public terminate()V
    .registers 3

    .line 243
    const-string v0, "MtkEmbmsAdaptor"

    const-string v1, "MtkEmbmsAdaptIoThread terminate."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptIoThread;->mIsContinue:Z

    .line 245
    return-void
.end method
