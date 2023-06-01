.class public Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;
.super Ljava/lang/Object;
.source "MtkSuppCrssNotification.java"


# static fields
.field public static final CRSS_CALLED_LINE_ID_PREST:I = 0x1

.field public static final CRSS_CALLING_LINE_ID_PREST:I = 0x2

.field public static final CRSS_CALL_WAITING:I = 0x0

.field public static final CRSS_CONNECTED_LINE_ID_PREST:I = 0x3

.field private static final SDBG:Z


# instance fields
.field public alphaid:Ljava/lang/String;

.field public cli_validity:I

.field public code:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->SDBG:Z

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CRSS Notification: code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->SDBG:Z

    iget-object v2, p0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->number:Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->type:I

    .line 87
    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->alphaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cli_validity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/gsm/MtkSuppCrssNotification;->cli_validity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method
