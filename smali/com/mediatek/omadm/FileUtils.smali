.class public Lcom/mediatek/omadm/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/omadm/FileUtils$TransferThread;
    }
.end annotation


# static fields
.field private static final FILE_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/mediatek/omadm/FileUtils;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/FileUtils;->TAG:Ljava/lang/String;

    .line 55
    const-string v0, "/data/vendor/verizon/dmclient/data/updateInfo.json"

    const-string v1, "/data/vendor/verizon/dmclient/data/last_update_firmware_version"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/FileUtils;->FILE_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/mediatek/omadm/FileUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkPathAllow(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/mediatek/omadm/FileUtils;->FILE_PATHS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 62
    .local v4, "allowedPath":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 63
    const/4 v0, 0x1

    return v0

    .line 61
    .end local v4    # "allowedPath":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 66
    :cond_14
    return v2
.end method

.method public static pipeTo(Ljava/io/InputStream;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 72
    .local v0, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 73
    .local v1, "readSide":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 75
    .local v2, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/mediatek/omadm/FileUtils$TransferThread;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, v4, p0}, Lcom/mediatek/omadm/FileUtils$TransferThread;-><init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 77
    invoke-virtual {v3}, Lcom/mediatek/omadm/FileUtils$TransferThread;->start()V

    .line 79
    return-object v1
.end method
