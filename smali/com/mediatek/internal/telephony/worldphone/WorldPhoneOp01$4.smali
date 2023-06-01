.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    .line 1206
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1208
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sWaitInEmsrResume:Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2102(Z)Z

    .line 1209
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 1210
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v0

    const/16 v1, -0x63

    if-eq v0, v1, :cond_49

    .line 1211
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    .line 1212
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2200()[Z

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_49

    .line 1213
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[Lcom/mediatek/internal/telephony/MtkRIL;

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v1

    aget-object v0, v0, v1

    .line 1214
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()[I

    move-result-object v1

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$4;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1213
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkRIL;->setResumeRegistration(ILandroid/os/Message;)V

    .line 1217
    :cond_49
    return-void
.end method
