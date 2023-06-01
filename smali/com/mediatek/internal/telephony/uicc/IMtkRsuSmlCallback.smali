.class public abstract Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;
.super Ljava/lang/Object;
.source "IMtkRsuSmlCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IMtkRsuSmlCallback"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RSU-SIMLOCK] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMtkRsuSmlCallback"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method


# virtual methods
.method public remoteSimlockGenerateRequestResponse(II[B)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "requestData"    # [B

    .line 92
    const-string v0, "default remoteSimlockGenerateRequestResponse, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;->loge(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public remoteSimlockGetSimlockStatusResponse(IIIJ)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "unlockStatus"    # I
    .param p4, "unlockTime"    # J

    .line 74
    const-string v0, "default remoteSimlockGetSimlockStatusResponse, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;->loge(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public remoteSimlockGetVersionResponse(IIII)V
    .registers 6
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "majorVersion"    # I
    .param p4, "minorVersion"    # I

    .line 48
    const-string v0, "default remoteSimlockGetVersionResponse, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;->loge(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public remoteSimlockProcessSimlockDataResponse(II[B)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "simlockResponse"    # [B

    .line 26
    const-string v0, "default remoteSimlockProcessSimlockDataResponse, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;->loge(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public remoteSimlockUnlockTimerResponse(III)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "timerValue"    # I

    .line 112
    const-string v0, "default remoteSimlockUnlockTimerResponse, user should override this API"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/uicc/IMtkRsuSmlCallback;->loge(Ljava/lang/String;)V

    .line 113
    return-void
.end method
