.class Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "MtkImsManagerEx.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/MtkImsManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/MtkImsManagerEx;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/MtkImsManagerEx;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/MtkImsManagerEx;Lcom/mediatek/ims/internal/MtkImsManagerEx$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/ims/internal/MtkImsManagerEx;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/MtkImsManagerEx$1;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;-><init>(Lcom/mediatek/ims/internal/MtkImsManagerEx;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManagerEx$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManagerEx;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/ims/internal/MtkImsManagerEx;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->access$102(Lcom/mediatek/ims/internal/MtkImsManagerEx;Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;

    .line 152
    return-void
.end method
