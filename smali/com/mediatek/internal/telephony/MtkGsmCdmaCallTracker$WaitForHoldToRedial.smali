.class Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitForHoldToRedial"
.end annotation


# instance fields
.field private mClirMode:I

.field private mDialString:Ljava/lang/String;

.field private mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

.field private mHasKnownUserIntentEmergency:Z

.field private mIsEmergencyCall:Z

.field private mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

.field private mWaitToRedial:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 198
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 191
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 192
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 193
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 194
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 196
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;

    .line 188
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resumeDialAfterHold()Z

    move-result v0

    return v0
.end method

.method private resumeDialAfterHold()Z
    .registers 11

    .line 241
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "resumeDialAfterHold begin"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    if-eqz v1, :cond_3a

    .line 244
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    if-nez v1, :cond_15

    .line 245
    const-string v1, "resumeDialAfterHold cancel (dial string empty yet)"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 247
    :cond_15
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    iget v7, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    iget-object v8, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->this$0:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    const/16 v9, 0x3ea

    .line 249
    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 247
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 251
    :goto_30
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->resetToRedial()V

    .line 252
    const-string v1, "resumeDialAfterHold end"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method isWaitToRedial()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    return v0
.end method

.method public resetToRedial()V
    .registers 3

    .line 224
    const-string v0, "GsmCdmaCallTkr"

    const-string v1, "Reset mWaitForHoldToRedialRequest variables"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 228
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 229
    iput-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 230
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 231
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 232
    return-void
.end method

.method setToRedial()V
    .registers 2

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 208
    return-void
.end method

.method public setToRedial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .registers 8
    .param p1, "dialSting"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumberInfo"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clir"    # I
    .param p6, "uusinfo"    # Lcom/android/internal/telephony/UUSInfo;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mWaitToRedial:Z

    .line 214
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mDialString:Ljava/lang/String;

    .line 215
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mIsEmergencyCall:Z

    .line 216
    iput-object p3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 217
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mHasKnownUserIntentEmergency:Z

    .line 218
    iput p5, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mClirMode:I

    .line 219
    iput-object p6, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker$WaitForHoldToRedial;->mUUSInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 220
    return-void
.end method
