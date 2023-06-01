.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;
.super Ljava/lang/Object;
.source "MtkSuppServHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    .line 402
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$1;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    # getter for: Lcom/mediatek/internal/telephony/MtkSuppServHelper;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->access$400(Lcom/mediatek/internal/telephony/MtkSuppServHelper;)Lcom/android/ims/FeatureConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 406
    return-void
.end method
