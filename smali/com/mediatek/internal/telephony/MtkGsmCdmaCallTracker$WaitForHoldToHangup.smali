.class Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForHoldToHangup"
.end annotation


# instance fields
.field private mCall:Lcom/android/internal/telephony/GsmCdmaCall;

.field private mHoldDone:Z

.field private mWaitToHangup:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 268
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 265
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resetToHangup()V

    .line 270
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Lcom/android/internal/telephony/GsmCdmaCall;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 262
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;

    .line 262
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resumeHangupAfterHold()Z

    move-result v0

    return v0
.end method

.method private resumeHangupAfterHold()Z
    .registers 5

    .line 308
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "resumeHangupAfterHold begin"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 311
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    if-eqz v1, :cond_4c

    .line 312
    const-string v1, "resumeHangupAfterHold to hangup call"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 314
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 316
    :try_start_19
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    :try_end_20
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_19 .. :try_end_20} :catch_21

    .line 321
    goto :goto_42

    .line 317
    :catch_21
    move-exception v1

    .line 318
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected error on hangup ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :goto_42
    const-string v1, "resumeHangupAfterHold end"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 324
    const/4 v0, 0x1

    return v0

    .line 327
    :cond_4c
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->resetToHangup()V

    .line 328
    return v2
.end method


# virtual methods
.method isHoldDone()Z
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    return v0
.end method

.method isWaitToHangup()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    return v0
.end method

.method public resetToHangup()V
    .registers 3

    .line 295
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Reset mWaitForHoldToHangupRequest variables"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 298
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 300
    return-void
.end method

.method setHoldDone()V
    .registers 2

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mHoldDone:Z

    .line 282
    return-void
.end method

.method setToHangup()V
    .registers 2

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 286
    return-void
.end method

.method public setToHangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/internal/telephony/GsmCdmaCall;

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mWaitToHangup:Z

    .line 290
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToHangup;->mCall:Lcom/android/internal/telephony/GsmCdmaCall;

    .line 291
    return-void
.end method
