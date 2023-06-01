.class public abstract Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# instance fields
.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    .line 345
    return-void
.end method


# virtual methods
.method getMyHandler()Landroid/os/Handler;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onDeregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 361
    return-void
.end method

.method public onDeregistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 357
    return-void
.end method

.method public onRegistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 353
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 349
    return-void
.end method

.method public onReregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 365
    return-void
.end method
