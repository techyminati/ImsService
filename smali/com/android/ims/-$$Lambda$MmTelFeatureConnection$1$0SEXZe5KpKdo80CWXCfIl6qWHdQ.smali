.class public final synthetic Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/MmTelFeatureConnection$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/MmTelFeatureConnection$1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$0:Lcom/android/ims/MmTelFeatureConnection$1;

    iput p2, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$1:I

    iput p3, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$2:I

    iput p4, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$0:Lcom/android/ims/MmTelFeatureConnection$1;

    iget v1, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$1:I

    iget v2, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$2:I

    iget v3, p0, Lcom/android/ims/-$$Lambda$MmTelFeatureConnection$1$0SEXZe5KpKdo80CWXCfIl6qWHdQ;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/ims/MmTelFeatureConnection$1;->lambda$imsStatusChanged$2$MmTelFeatureConnection$1(III)V

    return-void
.end method
