.class public final synthetic Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/ImsManager;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/ImsManager;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$0:Lcom/android/ims/ImsManager;

    iput-boolean p2, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$1:Z

    iput p3, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$0:Lcom/android/ims/ImsManager;

    iget-boolean v1, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$1:Z

    iget v2, p0, Lcom/android/ims/-$$Lambda$ImsManager$_6YCQyhjHBSdrm4ZBEMUQ2AAqOY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->lambda$setRttConfig$4$ImsManager(ZI)V

    return-void
.end method
