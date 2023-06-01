.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "vsim-adaptor"


# instance fields
.field private ioThread:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    .line 549
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->ioThread:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    return-void
.end method


# virtual methods
.method public listenConnection()V
    .registers 9

    .line 554
    const-string v0, "listenConnection finally!!"

    const-string v1, "ExternalSimMgr"

    const-string v2, "listenConnection() - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 561
    .local v3, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_e
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "vsim-adaptor"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 565
    :goto_16
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4

    .line 566
    .local v4, "socket":Landroid/net/LocalSocket;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is a client is accpted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-virtual {v5}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->stopRecoveryTimer()V

    .line 568
    iget-object v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v6, 0x1

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendExternalSimConnectedEvent(I)V
    invoke-static {v5, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 569
    new-instance v5, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;

    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;
    invoke-static {v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$000(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;)Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4b} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_4e
    .catchall {:try_start_e .. :try_end_4b} :catchall_4c

    .line 570
    .end local v4    # "socket":Landroid/net/LocalSocket;
    goto :goto_16

    .line 578
    :catchall_4c
    move-exception v4

    goto :goto_87

    .line 574
    :catch_4e
    move-exception v4

    .line 575
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v5, "listenConnection catch Exception"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4c

    .line 578
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v3, :cond_5f

    .line 580
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 581
    :cond_5f
    if-eqz v2, :cond_81

    .line 583
    :try_start_61
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 586
    :goto_64
    goto :goto_81

    .line 584
    :catch_65
    move-exception v0

    .line 585
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_64

    .line 571
    :catch_6a
    move-exception v4

    .line 572
    .local v4, "e":Ljava/io/IOException;
    :try_start_6b
    const-string v5, "listenConnection catch IOException"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_4c

    .line 578
    .end local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v3, :cond_7b

    .line 580
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 581
    :cond_7b
    if-eqz v2, :cond_81

    .line 583
    :try_start_7d
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_65

    goto :goto_64

    .line 589
    :cond_81
    :goto_81
    const-string v0, "listenConnection() - end"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 578
    :goto_87
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-eqz v3, :cond_8f

    .line 580
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 581
    :cond_8f
    if-eqz v2, :cond_99

    .line 583
    :try_start_91
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 586
    goto :goto_99

    .line 584
    :catch_95
    move-exception v0

    .line 585
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    :cond_99
    :goto_99
    throw v4
.end method
