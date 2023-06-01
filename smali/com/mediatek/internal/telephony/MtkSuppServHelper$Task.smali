.class Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;
.super Ljava/lang/Object;
.source "MtkSuppServHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field private mExtraBool:Z

.field private mExtraInt:I

.field private mExtraMsg:Ljava/lang/String;

.field private mTaskId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;ILjava/lang/String;)V
    .registers 5
    .param p2, "taskId"    # I
    .param p3, "extraMsg"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraBool:Z

    .line 227
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraInt:I

    .line 228
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    .line 236
    iput p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    .line 237
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServHelper;IZLjava/lang/String;)V
    .registers 6
    .param p2, "taskId"    # I
    .param p3, "b"    # Z
    .param p4, "extraMsg"    # Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraBool:Z

    .line 227
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraInt:I

    .line 228
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    .line 231
    iput p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    .line 232
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraBool:Z

    .line 233
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public getExtraBoolean()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraBool:Z

    return v0
.end method

.method public getExtraInt()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraInt:I

    return v0
.end method

.method public getExtraMsg()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraBool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraBool:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServHelper$Task;->mExtraMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
