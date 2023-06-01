.class public Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;
.super Ljava/lang/Object;
.source "MtkSimHandler.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-string v0, "MtkSimHandler"

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mPhoneId:I

    .line 52
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->TAG:Ljava/lang/String;

    const-string v1, "Enter MtkSimHandler"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mtkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mPhoneId:I

    .line 56
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->TAG:Ljava/lang/String;

    const-string v1, "Enter MtkSimHandler context"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mtkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 64
    return-void
.end method

.method protected mtkLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method protected mtkLoge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 60
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;->mPhoneId:I

    .line 61
    return-void
.end method
