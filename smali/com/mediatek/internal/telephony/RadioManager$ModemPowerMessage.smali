.class final Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModemPowerMessage"
.end annotation


# instance fields
.field public isFinish:Z

.field private final mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "phoneId"    # I

    .line 1839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    .line 1840
    iput p1, p0, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->mPhoneId:I

    .line 1841
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPMsg [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/RadioManager$ModemPowerMessage;->isFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
