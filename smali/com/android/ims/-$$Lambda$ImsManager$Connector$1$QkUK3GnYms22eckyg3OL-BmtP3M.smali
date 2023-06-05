.class public final synthetic Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$QkUK3GnYms22eckyg3OL-BmtP3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/ims/ImsManager$Connector$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/ims/ImsManager$Connector$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$QkUK3GnYms22eckyg3OL-BmtP3M;->f$0:Lcom/android/ims/ImsManager$Connector$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/-$$Lambda$ImsManager$Connector$1$QkUK3GnYms22eckyg3OL-BmtP3M;->f$0:Lcom/android/ims/ImsManager$Connector$1;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager$Connector$1;->lambda$notifyStateChanged$0$ImsManager$Connector$1()V

    return-void
.end method
