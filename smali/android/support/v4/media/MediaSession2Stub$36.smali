.class Landroid/support/v4/media/MediaSession2Stub$36;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaSession2Stub;->getItem(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/MediaSession2Stub;

    .line 810
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$36;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2Stub$36;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 2
    .param p1, "controller"    # Landroid/support/v4/media/MediaSession2$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$36;->val$mediaId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItem(): Ignoring null mediaId from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession2Stub"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$36;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    invoke-static {v0}, Landroid/support/v4/media/MediaSession2Stub;->access$700(Landroid/support/v4/media/MediaSession2Stub;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2Stub$36;->val$mediaId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->onGetItemOnExecutor(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;)V

    .line 818
    return-void
.end method
