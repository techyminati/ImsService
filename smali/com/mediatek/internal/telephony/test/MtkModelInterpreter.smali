.class public Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;
.super Ljava/lang/Object;
.source "MtkModelInterpreter.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/mediatek/internal/telephony/test/MtkSimulatedRadioControl;


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final LOG_TAG:Ljava/lang/String; = "MtkModelInterpreter"

.field static final MAX_CALLS:I = 0x6

.field static final PROGRESS_CALL_STATE:I = 0x1

.field static final sDefaultResponses:[[Ljava/lang/String;


# instance fields
.field private mFinalResponse:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mIn:Ljava/io/InputStream;

.field mLineReader:Lcom/mediatek/internal/telephony/test/LineReader;

.field mOut:Ljava/io/OutputStream;

.field mPausedResponseCount:I

.field mPausedResponseMonitor:Ljava/lang/Object;

.field mSS:Ljava/net/ServerSocket;

.field mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 657
    const/16 v0, 0x1f

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "E0Q0V1"

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "+CMEE=2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "+CREG=2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "+CGREG=2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "+CCWA=1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "+COPS=0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "+CFUN=1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "+CGMI"

    const-string v2, "+CGMI: Android Model AT Interpreter\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "+CGMM"

    const-string v2, "+CGMM: Android Model AT Interpreter\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "+CGMR"

    const-string v2, "+CGMR: 1.0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "+CGSN"

    const-string v2, "000000000000000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "+CIMI"

    const-string v2, "320720000000000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "+CSCS=?"

    const-string v2, "+CSCS: (\"HEX\",\"UCS2\")\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "+CFUN?"

    const-string v2, "+CFUN: 1\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "+COPS=3,0;+COPS?;+COPS=3,1;+COPS?;+COPS=3,2;+COPS?"

    const-string v2, "+COPS: 0,0,\"Android\"\r+COPS: 0,1,\"Android\"\r+COPS: 0,2,\"310995\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "+CREG?"

    const-string v2, "+CREG: 2,5, \"0113\", \"6614\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "+CGREG?"

    const-string v2, "+CGREG: 2,0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "+CSQ"

    const-string v2, "+CSQ: 16,99\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "+CNMI?"

    const-string v2, "+CNMI: 1,2,2,1,1\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "+CLIR?"

    const-string v2, "+CLIR: 1,3\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "%CPVWI=2"

    const-string v2, "%CPVWI: 0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "+CUSD=1,\"#646#\""

    const-string v2, "+CUSD=0,\"You have used 23 minutes\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "+CRSM=176,12258,0,0,10"

    const-string v2, "+CRSM: 144,0,981062200050259429F6\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,12258,0,0,15"

    const-string v2, "+CRSM: 144,0,0000000A2FE204000FF55501020000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,28474,0,0,15"

    const-string v2, "+CRSM: 144,0,0000005a6f3a040011f5220102011e\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,1,4,30"

    const-string v2, "+CRSM: 144,0,437573746f6d65722043617265ffffff07818100398799f7ffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,2,4,30"

    const-string v2, "+CRSM: 144,0,566f696365204d61696cffffffffffff07918150367742f3ffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,3,4,30"

    const-string v2, "+CRSM: 144,0,4164676a6dffffffffffffffffffffff0b918188551512c221436587ff01\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,4,4,30"

    const-string v2, "+CRSM: 144,0,810101c1ffffffffffffffffffffffff068114455245f8ffffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,28490,0,0,15"

    const-string v2, "+CRSM: 144,0,000000416f4a040011f5550102010d\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28490,1,4,13"

    const-string v2, "+CRSM: 144,0,0206092143658709ffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 169
    iput-object p2, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;

    .line 171
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .registers 4
    .param p1, "sa"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSS:Ljava/net/ServerSocket;

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSS:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 182
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->init()V

    .line 183
    return-void
.end method

.method private init()V
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtkModelInterpreter"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 192
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    .line 193
    return-void
.end method

.method private onAnswer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 449
    .local v0, "success":Z
    if-eqz v0, :cond_9

    .line 452
    return-void

    .line 450
    :cond_9
    new-instance v1, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onCHLD(Ljava/lang/String;)V
    .registers 7
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    .line 476
    .local v0, "c1":C
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 478
    .local v1, "c0":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_13

    .line 479
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    :cond_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v2, v1, v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onChld(CC)Z

    move-result v2

    .line 484
    .local v2, "success":Z
    if-eqz v2, :cond_1c

    .line 487
    return-void

    .line 485
    :cond_1c
    new-instance v3, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v4, "ERROR"

    invoke-direct {v3, v4}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private onCLCC()V
    .registers 5

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->getClccLines()Ljava/util/List;

    move-result-object v0

    .line 508
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_b
    if-ge v1, v2, :cond_19

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 511
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_19
    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    move-result v0

    .line 496
    .local v0, "success":Z
    if-eqz v0, :cond_e

    .line 499
    return-void

    .line 497
    :cond_e
    new-instance v1, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onHangup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "success":Z
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->onAnswer()Z

    move-result v0

    .line 461
    if-eqz v0, :cond_e

    .line 465
    const-string v1, "NO CARRIER"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mFinalResponse:Ljava/lang/String;

    .line 466
    return-void

    .line 462
    :cond_e
    new-instance v1, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onSMSSend(Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .line 518
    const-string v0, "> "

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->print(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mLineReader:Lcom/mediatek/internal/telephony/test/LineReader;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/LineReader;->getNextLineCtrlZ()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "pdu":Ljava/lang/String;
    const-string v1, "+CMGS: 1"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 522
    return-void
.end method


# virtual methods
.method public pauseResponses()V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseCount:I

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method print(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 623
    monitor-enter p0

    .line 625
    :try_start_1
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 629
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    .line 632
    .end local v0    # "bytes":[B
    goto :goto_13

    .line 633
    :catchall_d
    move-exception v0

    goto :goto_15

    .line 630
    :catch_f
    move-exception v0

    .line 631
    .local v0, "ex":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 633
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_13
    monitor-exit p0

    .line 634
    return-void

    .line 633
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    throw v0
.end method

.method println(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 606
    monitor-enter p0

    .line 608
    :try_start_1
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 612
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 613
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_16
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    .line 616
    .end local v0    # "bytes":[B
    goto :goto_1a

    .line 617
    :catchall_14
    move-exception v0

    goto :goto_1c

    .line 614
    :catch_16
    move-exception v0

    .line 615
    .local v0, "ex":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1a
    monitor-exit p0

    .line 618
    return-void

    .line 617
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_14

    throw v0
.end method

.method processLine(Ljava/lang/String;)V
    .registers 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->splitCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "commands":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_80

    .line 532
    aget-object v2, v0, v1

    .line 534
    .local v2, "command":Ljava/lang/String;
    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 535
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onAnswer()V

    goto :goto_75

    .line 536
    :cond_16
    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 537
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onHangup()V

    goto :goto_75

    .line 538
    :cond_22
    const-string v3, "+CHLD="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 539
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onCHLD(Ljava/lang/String;)V

    goto :goto_75

    .line 540
    :cond_2e
    const-string v3, "+CLCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 541
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onCLCC()V

    goto :goto_75

    .line 542
    :cond_3a
    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 543
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onDial(Ljava/lang/String;)V

    goto :goto_75

    .line 544
    :cond_46
    const-string v3, "+CMGS="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 545
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->onSMSSend(Ljava/lang/String;)V

    goto :goto_75

    .line 547
    :cond_52
    const/4 v3, 0x0

    .line 549
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_54
    sget-object v5, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_73

    .line 550
    aget-object v6, v5, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 551
    aget-object v5, v5, v4

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 552
    .local v5, "r":Ljava/lang/String;
    if-eqz v5, :cond_6e

    .line 553
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 555
    :cond_6e
    const/4 v3, 0x1

    .line 556
    goto :goto_73

    .line 549
    .end local v5    # "r":Ljava/lang/String;
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 560
    .end local v4    # "j":I
    :cond_73
    :goto_73
    if-eqz v3, :cond_78

    .line 531
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "found":Z
    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 561
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v3    # "found":Z
    :cond_78
    new-instance v4, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v5, "ERROR"

    invoke-direct {v4, v5}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    .end local v1    # "i":I
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "found":Z
    :cond_80
    return-void
.end method

.method public progressConnectingCallState()V
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingCallState()V

    .line 297
    return-void
.end method

.method public progressConnectingToActive()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->progressConnectingToActive()V

    .line 306
    return-void
.end method

.method public resumeResponses()V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseCount:I

    .line 434
    if-nez v1, :cond_10

    .line 435
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 437
    :cond_10
    monitor-exit v0

    .line 438
    return-void

    .line 437
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public run()V
    .registers 5

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-eqz v0, :cond_30

    .line 205
    :try_start_4
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_27

    .line 210
    .local v0, "s":Ljava/net/Socket;
    nop

    .line 213
    :try_start_9
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 214
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_1e

    .line 219
    nop

    .line 221
    const-string v1, "MtkModelInterpreter"

    const-string v2, "New connection accepted"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 215
    :catch_1e
    move-exception v1

    .line 216
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "MtkModelInterpreter"

    const-string v3, "IOException on accepted socket(); re-listening"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    goto :goto_0

    .line 206
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_27
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "MtkModelInterpreter"

    const-string v2, "IOException on socket.accept(); stopping"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void

    .line 225
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_30
    :goto_30
    new-instance v0, Lcom/mediatek/internal/telephony/test/LineReader;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/test/LineReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mLineReader:Lcom/mediatek/internal/telephony/test/LineReader;

    .line 227
    const-string v0, "Welcome"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 232
    :goto_3e
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mLineReader:Lcom/mediatek/internal/telephony/test/LineReader;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/LineReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_54

    .line 237
    nop

    .line 263
    .end local v0    # "line":Ljava/lang/String;
    const-string v0, "MtkModelInterpreter"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 267
    nop

    .line 270
    return-void

    .line 240
    .restart local v0    # "line":Ljava/lang/String;
    :cond_54
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :goto_57
    :try_start_57
    iget v2, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseCount:I
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_89

    if-lez v2, :cond_63

    .line 243
    :try_start_5b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_60} :catch_61
    .catchall {:try_start_5b .. :try_end_60} :catchall_89

    goto :goto_62

    .line 244
    :catch_61
    move-exception v2

    .line 245
    :goto_62
    goto :goto_57

    .line 247
    :cond_63
    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_89

    .line 249
    monitor-enter p0

    .line 251
    :try_start_65
    const-string v1, "OK"

    iput-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mFinalResponse:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->processLine(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mFinalResponse:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_71
    .catch Lcom/mediatek/internal/telephony/test/InterpreterEx; {:try_start_65 .. :try_end_71} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_71} :catch_74
    .catchall {:try_start_65 .. :try_end_71} :catchall_72

    goto :goto_84

    .line 260
    :catchall_72
    move-exception v1

    goto :goto_87

    .line 256
    :catch_74
    move-exception v1

    .line 257
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_75
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 258
    const-string v2, "ERROR"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    goto :goto_85

    .line 254
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_7e
    move-exception v1

    .line 255
    .local v1, "ex":Lcom/mediatek/internal/telephony/test/InterpreterEx;
    iget-object v2, v1, Lcom/mediatek/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 259
    .end local v1    # "ex":Lcom/mediatek/internal/telephony/test/InterpreterEx;
    :goto_84
    nop

    .line 260
    :goto_85
    monitor-exit p0

    .line 261
    .end local v0    # "line":Ljava/lang/String;
    goto :goto_3e

    .line 260
    .restart local v0    # "line":Ljava/lang/String;
    :goto_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_72

    throw v1

    .line 247
    :catchall_89
    move-exception v2

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v2
.end method

.method public sendUnsolicited(Ljava/lang/String;)V
    .registers 3
    .param p1, "unsol"    # Ljava/lang/String;

    .line 378
    monitor-enter p0

    .line 379
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 380
    monitor-exit p0

    .line 381
    return-void

    .line 380
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public setAutoProgressConnectingCall(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 315
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    .line 316
    return-void
.end method

.method public setNextCallFailCause(I)V
    .registers 2
    .param p1, "gsmCause"    # I

    .line 329
    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 322
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    .line 323
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 641
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 642
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_b

    .line 643
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 647
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    .line 649
    goto :goto_12

    .line 648
    :catch_11
    move-exception v1

    .line 651
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    .line 653
    goto :goto_19

    .line 652
    :catch_18
    move-exception v1

    .line 654
    :goto_19
    return-void
.end method

.method splitCommands(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 571
    const-string v0, "AT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_13

    .line 577
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 580
    :cond_13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 583
    .local v0, "ret":[Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 585
    return-object v0

    .line 572
    .end local v0    # "ret":[Ljava/lang/String;
    :cond_1d
    new-instance v0, Lcom/mediatek/internal/telephony/test/InterpreterEx;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerHangupAll()V
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupAll()Z

    move-result v0

    .line 370
    .local v0, "success":Z
    if-eqz v0, :cond_d

    .line 371
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 373
    :cond_d
    return-void
.end method

.method public triggerHangupBackground()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupBackground()Z

    move-result v0

    .line 355
    .local v0, "success":Z
    if-eqz v0, :cond_d

    .line 356
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 358
    :cond_d
    return-void
.end method

.method public triggerHangupForeground()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerHangupForeground()Z

    move-result v0

    .line 341
    .local v0, "success":Z
    if-eqz v0, :cond_d

    .line 342
    const-string v1, "NO CARRIER"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 344
    :cond_d
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 416
    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 386
    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 280
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->mSimulatedCallState:Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/test/MtkSimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    move-result v0

    .line 285
    .local v0, "success":Z
    if-eqz v0, :cond_e

    .line 286
    const-string v1, "RING"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/test/MtkModelInterpreter;->println(Ljava/lang/String;)V

    .line 288
    .end local v0    # "success":Z
    :cond_e
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public triggerSsn(II)V
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 384
    return-void
.end method
