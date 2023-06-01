.class Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$4;
.super Landroid/os/Handler;
.source "MtkLocationExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    .line 294
    iput-object p1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$4;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 296
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "timeoutMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider$4;->this$0:Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;

    # getter for: Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;->access$300(Lcom/mediatek/location/MtkLocationExt$GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 298
    return-void
.end method
