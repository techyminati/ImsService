.class Lcom/mediatek/view/impl/MsyncExtimpl$1;
.super Ljava/lang/Thread;
.source "MsyncExtimpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/view/impl/MsyncExtimpl;->openNewTread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/view/impl/MsyncExtimpl;


# direct methods
.method constructor <init>(Lcom/mediatek/view/impl/MsyncExtimpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/view/impl/MsyncExtimpl;

    .line 28
    iput-object p1, p0, Lcom/mediatek/view/impl/MsyncExtimpl$1;->this$0:Lcom/mediatek/view/impl/MsyncExtimpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 30
    invoke-static {}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->getInstance()Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->loadOpenMsyncAppList()V

    .line 31
    return-void
.end method
