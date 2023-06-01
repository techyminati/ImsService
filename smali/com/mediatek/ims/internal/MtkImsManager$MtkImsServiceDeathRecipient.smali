.class Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;
.super Ljava/lang/Object;
.source "MtkImsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/MtkImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkImsServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/MtkImsManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/MtkImsManager;)V
    .registers 2

    .line 1113
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/internal/MtkImsManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/ims/internal/MtkImsManager;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/MtkImsManager$1;

    .line 1113
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;-><init>(Lcom/mediatek/ims/internal/MtkImsManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1116
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/ims/internal/MtkImsManager;->mMtkImsService:Lcom/mediatek/ims/internal/IMtkImsService;
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$102(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/internal/IMtkImsService;)Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1117
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    # setter for: Lcom/mediatek/ims/internal/MtkImsManager;->mMtkUt:Lcom/mediatek/ims/MtkImsUt;
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$202(Lcom/mediatek/ims/internal/MtkImsManager;Lcom/mediatek/ims/MtkImsUt;)Lcom/mediatek/ims/MtkImsUt;

    .line 1118
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/ims/internal/MtkImsManager;->mNotifyOnly:Z
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$302(Lcom/mediatek/ims/internal/MtkImsManager;Z)Z

    .line 1119
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsManager$MtkImsServiceDeathRecipient;->this$0:Lcom/mediatek/ims/internal/MtkImsManager;

    const-string v1, "MtkImsService binder died!"

    # invokes: Lcom/mediatek/ims/internal/MtkImsManager;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/MtkImsManager;->access$400(Lcom/mediatek/ims/internal/MtkImsManager;Ljava/lang/String;)V

    .line 1120
    return-void
.end method
