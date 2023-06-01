.class public Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;
.super Ljava/lang/Object;
.source "MtkEmbmsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "/dev/socket/embmsd"


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 133
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listenConnection(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V
    .registers 13
    .param p1, "eventHandler"    # Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;

    .line 137
    const-string v0, "listenConnection finally!!"

    const-string v1, "MtkEmbmsAdaptor"

    const-string v2, "listenConnection() - start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 144
    .local v3, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_e
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "/dev/socket/embmsd"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 148
    :goto_16
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4

    .line 149
    .local v4, "socket":Landroid/net/LocalSocket;
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    .line 150
    .local v5, "clientUid":I
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    # getter for: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "clientPackageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client\'s uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,packagename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v7, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    # getter for: Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->access$200(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x8000000

    .line 153
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 154
    .local v7, "signingInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v8

    .line 155
    .local v8, "sigs":[Landroid/content/pm/Signature;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->getInstance()Lcom/mediatek/internal/telephony/MtkEmbmsUtils;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/MtkEmbmsUtils;->isCertifiedMiddleware([Landroid/content/pm/Signature;)Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There is a client is accepted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v9, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ServerTask;->this$0:Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    invoke-direct {v9, v10, v4, p1}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$ConnectionHandler;-><init>(Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;Landroid/net/LocalSocket;Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor$MtkEmbmsAdaptEventHandler;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a7

    .line 159
    :cond_8f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The client is not certified "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_a7} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a7} :catch_ab
    .catchall {:try_start_e .. :try_end_a7} :catchall_a9

    .line 161
    .end local v4    # "socket":Landroid/net/LocalSocket;
    .end local v5    # "clientUid":I
    .end local v6    # "clientPackageName":Ljava/lang/String;
    .end local v7    # "signingInfo":Landroid/content/pm/SigningInfo;
    .end local v8    # "sigs":[Landroid/content/pm/Signature;
    :goto_a7
    goto/16 :goto_16

    .line 169
    :catchall_a9
    move-exception v4

    goto :goto_e4

    .line 165
    :catch_ab
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    :try_start_ac
    const-string v5, "listenConnection catch Exception"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_a9

    .line 169
    .end local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_bc

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_bc
    if-eqz v2, :cond_de

    .line 175
    :try_start_be
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    .line 178
    :goto_c1
    goto :goto_de

    .line 176
    :catch_c2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c1

    .line 162
    :catch_c7
    move-exception v4

    .line 163
    .local v4, "e":Ljava/io/IOException;
    :try_start_c8
    const-string v5, "listenConnection catch IOException"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_a9

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_d8

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_d8
    if-eqz v2, :cond_de

    .line 175
    :try_start_da
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_c2

    goto :goto_c1

    .line 181
    :cond_de
    :goto_de
    const-string v0, "listenConnection() - end"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 169
    :goto_e4
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz v3, :cond_ec

    .line 171
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    :cond_ec
    if-eqz v2, :cond_f6

    .line 175
    :try_start_ee
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 178
    goto :goto_f6

    .line 176
    :catch_f2
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f6
    :goto_f6
    throw v4
.end method
