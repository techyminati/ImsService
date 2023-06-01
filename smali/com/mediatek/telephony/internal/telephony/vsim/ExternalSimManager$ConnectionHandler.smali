.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHandler"
.end annotation


# static fields
.field public static final RILD_SERVER_NAME:Ljava/lang/String; = "rild-vsim"


# instance fields
.field private mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

.field private mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p2, "clientSocket"    # Landroid/net/LocalSocket;
    .param p3, "eventHandler"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 598
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 600
    iput-object p3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 601
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_1c
    new-instance v0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;

    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const-string v4, "vsim-adaptor"

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 613
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 614
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V

    .line 617
    .local v0, "ioThread":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    const/4 v2, 0x0

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->access$1100(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;)V

    .line 620
    invoke-virtual {v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->start()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3d} :catch_3e

    .line 624
    .end local v0    # "ioThread":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    goto :goto_42

    .line 622
    :catch_3e
    move-exception v0

    .line 623
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 625
    .end local v0    # "e":Ljava/io/IOException;
    :goto_42
    return-void
.end method
