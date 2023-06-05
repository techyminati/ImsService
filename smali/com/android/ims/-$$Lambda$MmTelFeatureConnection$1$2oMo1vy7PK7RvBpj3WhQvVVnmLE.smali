.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/MmTelFeatureConnection$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$0:Lcom/android/ims/MmTelFeatureConnection$1;

    iput p2, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$1:I

    iput p3, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$0:Lcom/android/ims/MmTelFeatureConnection$1;

    iget v1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$1:I

    iget v2, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$2oMo1vy7PK7RvBpj3WhQvVVnmLE;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/MmTelFeatureConnection$1;->lambda$imsFeatureCreated$0$MmTelFeatureConnection$1(II)V

    return-void
.end method
