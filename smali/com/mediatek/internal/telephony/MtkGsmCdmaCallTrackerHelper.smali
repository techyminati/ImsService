.class public final Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;
.super Ljava/lang/Object;
.source "MtkGsmCdmaCallTrackerHelper.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;


# static fields
.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x3ea

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x3eb

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x3e8

.field protected static final EVENT_MTK_BASE:I = 0x3e8

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3e9

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTkrHlpr"

.field private static final MT_CALL_GWSD:I = 0xa

.field private static final MT_CALL_MISSED:I = 0x2

.field private static final MT_CALL_REJECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

.field private mIsGwsdCall:Z

.field private mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 110
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    .line 112
    return-void
.end method

.method private addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "missedReason"    # J

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 335
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    nop

    .line 336
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 337
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 339
    .local v3, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_2a

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 341
    move-object v0, v3

    .line 342
    goto :goto_2f

    .line 340
    :cond_2a
    move-object/from16 v5, p2

    .line 344
    .end local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "id":Ljava/lang/String;
    :cond_2c
    goto :goto_e

    .line 337
    :cond_2d
    move-object/from16 v5, p2

    .line 346
    :goto_2f
    if-nez p3, :cond_34

    .line 347
    const-string v3, ""

    .end local p3    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    goto :goto_36

    .line 346
    .end local v3    # "number":Ljava/lang/String;
    .restart local p3    # "number":Ljava/lang/String;
    :cond_34
    move-object/from16 v3, p3

    .line 352
    .end local p3    # "number":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    :goto_36
    if-eqz v3, :cond_43

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_43

    .line 355
    :cond_41
    const/4 v4, 0x1

    .local v4, "presentationMode":I
    goto :goto_44

    .line 353
    .end local v4    # "presentationMode":I
    :cond_43
    :goto_43
    const/4 v4, 0x2

    .line 359
    .restart local v4    # "presentationMode":I
    :goto_44
    const/16 v19, 0x0

    .line 362
    .local v19, "features":I
    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 365
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const/4 v15, 0x0

    new-instance v12, Ljava/lang/Long;

    const-wide/16 v7, 0x0

    invoke-direct {v12, v7, v8}, Ljava/lang/Long;-><init>(J)V

    .line 362
    move-object/from16 v7, p1

    move-object v8, v3

    move v9, v4

    move/from16 v10, p4

    move/from16 v11, v19

    move-object/from16 v16, v12

    move-object v12, v0

    move-wide/from16 v17, p5

    invoke-static/range {v6 .. v18}, Landroid/provider/CallLog$Calls;->addCall(Landroid/telecom/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JILjava/lang/Long;J)Landroid/net/Uri;

    .line 366
    return-void
.end method


# virtual methods
.method public CallIndicationEnd()V
    .registers 4

    .line 318
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 319
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_26

    .line 320
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 323
    :cond_26
    return-void
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;)V
    .registers 3
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V

    .line 214
    return-void
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V
    .registers 29
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isIncomingNumberChecked"    # Z
    .param p3, "isBlocked"    # Z

    .line 219
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    const/4 v0, 0x0

    .line 220
    .local v0, "mode":I
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    .line 221
    .local v11, "incomingCallInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 222
    .local v5, "callId":I
    const/4 v1, 0x1

    aget-object v6, v11, v1

    .line 223
    .local v6, "number":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 224
    .local v18, "callMode":I
    const/4 v2, 0x4

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    .local v4, "seqNumber":I
    iget-object v2, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getPhone()Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    .line 227
    .local v3, "subId":I
    const/4 v2, 0x1

    .line 229
    .local v2, "rejectCause":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CallIndicationProcess "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " callId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " seqNumber "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "(subId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", isIncomingNumberChecked="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isBlocked="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 235
    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v14, :cond_7c

    .line 236
    const/4 v0, 0x1

    .line 237
    const/4 v2, 0x1

    .line 256
    :cond_7c
    if-nez v0, :cond_12f

    .line 257
    if-eqz v9, :cond_8f

    .line 258
    if-eqz v10, :cond_89

    .line 259
    const/4 v0, 0x1

    .line 260
    const/16 v2, 0x10

    move v1, v2

    move v2, v0

    goto/16 :goto_137

    .line 258
    :cond_89
    move/from16 v16, v0

    move/from16 v17, v2

    goto/16 :goto_133

    .line 263
    :cond_8f
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-eqz v12, :cond_12a

    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {v12, v3}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->isMtkEnhancedCallBlockingEnabled(Landroid/content/Context;I)Z

    move-result v12

    if-eqz v12, :cond_125

    .line 265
    new-instance v12, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14, v8}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIncomingCallChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 267
    iget-object v14, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v14, v3, v6, v7}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z

    move-result v12

    .line 269
    .local v12, "bCheckStart":Z
    const-string v14, ", number="

    const-string v1, ", subId="

    if-eqz v12, :cond_f7

    .line 270
    move/from16 v16, v0

    .end local v0    # "mode":I
    .local v16, "mode":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "rejectCause":I
    .local v17, "rejectCause":I
    const-string v2, "startIncomingCallNumberCheck true. start check (callId_seqNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 273
    return-void

    .line 275
    .end local v16    # "mode":I
    .end local v17    # "rejectCause":I
    .restart local v0    # "mode":I
    .restart local v2    # "rejectCause":I
    :cond_f7
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "mode":I
    .end local v2    # "rejectCause":I
    .restart local v16    # "mode":I
    .restart local v17    # "rejectCause":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startIncomingCallNumberCheck false, and flow continues. (callId_seqNo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logE(Ljava/lang/String;)V

    goto :goto_133

    .line 264
    .end local v12    # "bCheckStart":Z
    .end local v16    # "mode":I
    .end local v17    # "rejectCause":I
    .restart local v0    # "mode":I
    .restart local v2    # "rejectCause":I
    :cond_125
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "mode":I
    .end local v2    # "rejectCause":I
    .restart local v16    # "mode":I
    .restart local v17    # "rejectCause":I
    goto :goto_133

    .line 263
    .end local v16    # "mode":I
    .end local v17    # "rejectCause":I
    .restart local v0    # "mode":I
    .restart local v2    # "rejectCause":I
    :cond_12a
    move/from16 v16, v0

    move/from16 v17, v2

    .end local v0    # "mode":I
    .end local v2    # "rejectCause":I
    .restart local v16    # "mode":I
    .restart local v17    # "rejectCause":I
    goto :goto_133

    .line 256
    .end local v16    # "mode":I
    .end local v17    # "rejectCause":I
    .restart local v0    # "mode":I
    .restart local v2    # "rejectCause":I
    :cond_12f
    move/from16 v16, v0

    move/from16 v17, v2

    .line 285
    .end local v0    # "mode":I
    .end local v2    # "rejectCause":I
    .restart local v16    # "mode":I
    .restart local v17    # "rejectCause":I
    :goto_133
    move/from16 v2, v16

    move/from16 v1, v17

    .end local v16    # "mode":I
    .end local v17    # "rejectCause":I
    .local v1, "rejectCause":I
    .local v2, "mode":I
    :goto_137
    if-nez v2, :cond_170

    .line 288
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 289
    .local v0, "pid":I
    const/16 v12, -0xa

    invoke-static {v0, v12}, Landroid/os/Process;->setThreadPriority(II)V

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adjust the priority of process - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 290
    invoke-virtual {v7, v12}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 293
    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move v13, v2

    move v14, v5

    move v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V

    .line 297
    .end local v0    # "pid":I
    :cond_170
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1eb

    .line 298
    if-eq v1, v0, :cond_1cd

    .line 299
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v17, 0x0

    move v13, v2

    move v14, v5

    move v15, v4

    move/from16 v16, v1

    invoke-virtual/range {v12 .. v17}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V

    .line 301
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1ab

    .line 302
    iget-object v12, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v19, v1

    .end local v1    # "rejectCause":I
    .local v19, "rejectCause":I
    move-object v1, v12

    move/from16 v20, v2

    .end local v2    # "mode":I
    .local v20, "mode":I
    move-object v2, v13

    move/from16 v21, v3

    .end local v3    # "subId":I
    .local v21, "subId":I
    move-object v3, v6

    move/from16 v22, v4

    .end local v4    # "seqNumber":I
    .local v22, "seqNumber":I
    move v4, v14

    move/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "callId":I
    .end local v6    # "number":Ljava/lang/String;
    .local v23, "callId":I
    .local v24, "number":Ljava/lang/String;
    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_1f7

    .line 305
    .end local v19    # "rejectCause":I
    .end local v20    # "mode":I
    .end local v21    # "subId":I
    .end local v22    # "seqNumber":I
    .end local v23    # "callId":I
    .end local v24    # "number":Ljava/lang/String;
    .restart local v1    # "rejectCause":I
    .restart local v2    # "mode":I
    .restart local v3    # "subId":I
    .restart local v4    # "seqNumber":I
    .restart local v5    # "callId":I
    .restart local v6    # "number":Ljava/lang/String;
    :cond_1ab
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    .end local v1    # "rejectCause":I
    .end local v2    # "mode":I
    .end local v3    # "subId":I
    .end local v4    # "seqNumber":I
    .end local v5    # "callId":I
    .end local v6    # "number":Ljava/lang/String;
    .restart local v19    # "rejectCause":I
    .restart local v20    # "mode":I
    .restart local v21    # "subId":I
    .restart local v22    # "seqNumber":I
    .restart local v23    # "callId":I
    .restart local v24    # "number":Ljava/lang/String;
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    const-wide/32 v5, 0x10000

    move-object/from16 v0, p0

    move-object/from16 v3, v24

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_1f7

    .line 309
    .end local v19    # "rejectCause":I
    .end local v20    # "mode":I
    .end local v21    # "subId":I
    .end local v22    # "seqNumber":I
    .end local v23    # "callId":I
    .end local v24    # "number":Ljava/lang/String;
    .restart local v1    # "rejectCause":I
    .restart local v2    # "mode":I
    .restart local v3    # "subId":I
    .restart local v4    # "seqNumber":I
    .restart local v5    # "callId":I
    .restart local v6    # "number":Ljava/lang/String;
    :cond_1cd
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    .end local v1    # "rejectCause":I
    .end local v2    # "mode":I
    .end local v3    # "subId":I
    .end local v4    # "seqNumber":I
    .end local v5    # "callId":I
    .end local v6    # "number":Ljava/lang/String;
    .restart local v19    # "rejectCause":I
    .restart local v20    # "mode":I
    .restart local v21    # "subId":I
    .restart local v22    # "seqNumber":I
    .restart local v23    # "callId":I
    .restart local v24    # "number":Ljava/lang/String;
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v12, v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mMtkCi:Lcom/mediatek/internal/telephony/MtkRIL;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move/from16 v13, v20

    move/from16 v14, v23

    move/from16 v15, v22

    invoke-virtual/range {v12 .. v17}, Lcom/mediatek/internal/telephony/MtkRIL;->setCallIndication(IIIILandroid/os/Message;)V

    goto :goto_1f7

    .line 297
    .end local v19    # "rejectCause":I
    .end local v20    # "mode":I
    .end local v21    # "subId":I
    .end local v22    # "seqNumber":I
    .end local v23    # "callId":I
    .end local v24    # "number":Ljava/lang/String;
    .restart local v1    # "rejectCause":I
    .restart local v2    # "mode":I
    .restart local v3    # "subId":I
    .restart local v4    # "seqNumber":I
    .restart local v5    # "callId":I
    .restart local v6    # "number":Ljava/lang/String;
    :cond_1eb
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    .line 313
    .end local v1    # "rejectCause":I
    .end local v2    # "mode":I
    .end local v3    # "subId":I
    .end local v4    # "seqNumber":I
    .end local v5    # "callId":I
    .end local v6    # "number":Ljava/lang/String;
    .restart local v19    # "rejectCause":I
    .restart local v20    # "mode":I
    .restart local v21    # "subId":I
    .restart local v22    # "seqNumber":I
    .restart local v23    # "callId":I
    .restart local v24    # "number":Ljava/lang/String;
    :goto_1f7
    return-void
.end method

.method public LogState()V
    .registers 7

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 191
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getMaxConnections()I

    move-result v3

    .local v3, "s":I
    :goto_9
    if-ge v2, v3, :cond_3c

    .line 192
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v2

    if-eqz v4, :cond_39

    .line 193
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/GsmCdmaConnection;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    .line 194
    .end local v0    # "callId":I
    .local v4, "callId":I
    add-int/lit8 v1, v1, 0x1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "* conn id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " existed"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logI(Ljava/lang/String;)V

    move v0, v4

    .line 191
    .end local v4    # "callId":I
    .restart local v0    # "callId":I
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 198
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* GsmCT has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logI(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public LogerMessage(I)V
    .registers 3
    .param p1, "msgType"    # I

    .line 132
    sparse-switch p1, :sswitch_data_64

    .line 181
    const-string v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    goto :goto_63

    .line 168
    :sswitch_9
    const-string v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 169
    goto :goto_63

    .line 171
    :sswitch_f
    const-string v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 172
    goto :goto_63

    .line 177
    :sswitch_15
    const-string v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 178
    goto :goto_63

    .line 174
    :sswitch_1b
    const-string v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 175
    goto :goto_63

    .line 164
    :sswitch_21
    const-string v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 165
    goto :goto_63

    .line 161
    :sswitch_27
    const-string v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 162
    goto :goto_63

    .line 158
    :sswitch_2d
    const-string v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 159
    goto :goto_63

    .line 155
    :sswitch_33
    const-string v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 156
    goto :goto_63

    .line 152
    :sswitch_39
    const-string v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 153
    goto :goto_63

    .line 149
    :sswitch_3f
    const-string v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 150
    goto :goto_63

    .line 146
    :sswitch_45
    const-string v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 147
    goto :goto_63

    .line 143
    :sswitch_4b
    const-string v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 144
    goto :goto_63

    .line 140
    :sswitch_51
    const-string v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 141
    goto :goto_63

    .line 137
    :sswitch_57
    const-string v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 138
    goto :goto_63

    .line 134
    :sswitch_5d
    const-string v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 135
    nop

    .line 184
    :goto_63
    return-void

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_5d
        0x2 -> :sswitch_57
        0x3 -> :sswitch_51
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_45
        0x8 -> :sswitch_3f
        0x9 -> :sswitch_39
        0xa -> :sswitch_33
        0xb -> :sswitch_2d
        0xc -> :sswitch_27
        0xd -> :sswitch_21
        0x3e8 -> :sswitch_1b
        0x3e9 -> :sswitch_15
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_9
    .end sparse-switch
.end method

.method public getCurrentTotalConnections()I
    .registers 4

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->getMaxConnections()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 204
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_14

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 208
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public handleCallAdditionalInfo(Landroid/os/AsyncResult;)V
    .registers 13
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 370
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 371
    .local v0, "callAdditionalInfo":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1b

    if-eq v1, v3, :cond_1b

    const/16 v4, 0xa

    if-eq v1, v4, :cond_1b

    .line 376
    const-string v2, "handleCallAdditionalInfo not handle event"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 377
    return-void

    .line 380
    :cond_1b
    aget-object v10, v0, v3

    .line 381
    .local v10, "number":Ljava/lang/String;
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 383
    .local v2, "callMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCallAdditionalInfo type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->logD(Ljava/lang/String;)V

    .line 386
    sparse-switch v1, :sswitch_data_6e

    goto :goto_6d

    .line 398
    :sswitch_43
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 399
    goto :goto_6d

    .line 388
    :sswitch_46
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    const-wide/32 v8, 0x10000

    move-object v3, p0

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 391
    goto :goto_6d

    .line 393
    :sswitch_5a
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    move-object v3, p0

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->addCallLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 396
    nop

    .line 403
    :goto_6d
    return-void

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_5a
        0x2 -> :sswitch_46
        0xa -> :sswitch_43
    .end sparse-switch
.end method

.method public isGwsdCall()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    return v0
.end method

.method logD(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method logE(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method logI(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method

.method logW(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mMtkTracker:Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GsmCallTkrHlpr"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onCheckComplete(ZLjava/lang/Object;)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .line 327
    if-eqz p2, :cond_6

    move-object v0, p2

    check-cast v0, Landroid/os/AsyncResult;

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->CallIndicationProcess(Landroid/os/AsyncResult;ZZ)V

    .line 328
    return-void
.end method

.method public setGwsdCall(Z)V
    .registers 2
    .param p1, "isGwsd"    # Z

    .line 412
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTrackerHelper;->mIsGwsdCall:Z

    .line 413
    return-void
.end method
