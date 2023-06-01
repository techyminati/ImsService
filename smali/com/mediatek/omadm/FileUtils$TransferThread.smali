.class Lcom/mediatek/omadm/FileUtils$TransferThread;
.super Ljava/lang/Thread;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransferThread"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x400


# instance fields
.field final mIn:Ljava/io/InputStream;

.field final mOut:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 88
    const-string v0, "ParcelFileDescriptor Transfer Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mIn:Ljava/io/InputStream;

    .line 90
    iput-object p1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/omadm/FileUtils$TransferThread;->setDaemon(Z)V

    .line 92
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 96
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 100
    .local v0, "buf":[B
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    if-lez v1, :cond_14

    .line 101
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 103
    :cond_14
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_2a
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 109
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 111
    goto :goto_20

    .line 110
    :catch_1f
    move-exception v1

    .line 113
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_26

    .line 115
    goto :goto_43

    .line 114
    :catch_26
    move-exception v1

    .line 116
    goto :goto_43

    .line 108
    .end local v2    # "len":I
    :catchall_28
    move-exception v1

    goto :goto_44

    .line 104
    :catch_2a
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    :try_start_2b
    # getter for: Lcom/mediatek/omadm/FileUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/omadm/FileUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransferThread"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_28

    .line 109
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_34
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_3a

    .line 111
    goto :goto_3b

    .line 110
    :catch_3a
    move-exception v1

    .line 113
    :goto_3b
    :try_start_3b
    iget-object v1, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_41

    .line 115
    goto :goto_43

    .line 114
    :catch_41
    move-exception v1

    .line 116
    nop

    .line 117
    :goto_43
    return-void

    .line 109
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_4a

    .line 111
    goto :goto_4b

    .line 110
    :catch_4a
    move-exception v2

    .line 113
    :goto_4b
    :try_start_4b
    iget-object v2, p0, Lcom/mediatek/omadm/FileUtils$TransferThread;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_51

    .line 115
    goto :goto_52

    .line 114
    :catch_51
    move-exception v2

    .line 116
    :goto_52
    throw v1
.end method
