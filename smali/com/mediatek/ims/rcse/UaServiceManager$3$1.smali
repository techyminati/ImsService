.class Lcom/mediatek/ims/rcse/UaServiceManager$3$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/UaServiceManager$3;->onRegistering(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/rcse/UaServiceManager$3;

.field final synthetic val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/rcse/UaServiceManager$3;

    .line 398
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;->this$1:Lcom/mediatek/ims/rcse/UaServiceManager$3;

    iput-object p2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    iput p3, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    iget v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onRegistering(I)V

    .line 402
    return-void
.end method
