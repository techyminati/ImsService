.class public Lcom/mediatek/internal/telephony/MtkSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "MtkSubscriptionController.java"


# static fields
.field private static final ENGDEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubCtrl"

.field private static sStickyIntent:Landroid/content/Intent;


# instance fields
.field private lastPhoneId:I

.field private final mSubReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 88
    const v0, 0x7fffffff

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    .line 124
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;-><init>(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastSimInfoContentChanged(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intentExt"    # Landroid/content/Intent;

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 810
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .end local v0    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-nez p1, :cond_36

    .line 818
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 819
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 820
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_2a

    move v6, v0

    goto :goto_2f

    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v6, v2

    .line 822
    .local v6, "subCount":I
    :goto_2f
    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 826
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v6    # "subCount":I
    :cond_36
    const-class v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v1

    .line 827
    if-nez p1, :cond_3d

    move-object v2, v3

    goto :goto_3e

    :cond_3d
    move-object v2, p1

    :goto_3e
    :try_start_3e
    sput-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    .line 828
    const-string v4, "simDetectStatus"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 830
    .local v0, "detectedType":I
    sget-object v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    const-string v4, "phone"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 831
    .local v2, "phoneId":I
    sget-boolean v4, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v4, :cond_6f

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast intent ACTION_SUBINFO_RECORD_UPDATED with detectType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 835
    :cond_6f
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sStickyIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 836
    .end local v0    # "detectedType":I
    .end local v2    # "phoneId":I
    monitor-exit v1

    .line 838
    return-void

    .line 836
    :catchall_78
    move-exception v0

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_3e .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public static getMtkInstance()Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .registers 3

    .line 114
    const-class v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v0

    .line 115
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_e

    .line 116
    const-string v1, "MtkSubCtrl"

    const-string v2, "getMtkInstance null"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-exit v0

    return-object v1

    .line 120
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1090
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1094
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1081
    const-string v0, "MtkSubCtrl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void
.end method

.method protected static mtkInit(Landroid/content/Context;)Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .line 92
    const-class v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-enter v0

    .line 93
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_2a

    .line 94
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 95
    const-string v1, "MtkSubCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtkInit, sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionControllerEx;->MtkInitStub(Landroid/content/Context;)V

    goto :goto_42

    .line 98
    :cond_2a
    const-string v1, "MtkSubCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_42
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    monitor-exit v0

    return-object v1

    .line 101
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method protected static mtkInvalidateActiveDataSubIdCaches()V
    .registers 0

    .line 1075
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->invalidateActiveDataSubIdCaches()V

    .line 1076
    return-void
.end method


# virtual methods
.method public addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 32
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I

    .line 344
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v0, "card_id"

    const-string v5, "icc_id"

    const-string v6, "sim_id"

    const-string v7, "_id"

    move-object/from16 v8, p1

    .line 345
    .local v8, "iccIdStr":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 347
    invoke-static/range {p1 .. p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    :cond_1c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addSubInfoRecord]+ iccid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", slotIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", subscriptionType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 355
    .end local v8    # "iccIdStr":Ljava/lang/String;
    const-string v8, "addSubInfo"

    invoke-virtual {v1, v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 360
    .local v8, "identity":J
    const/4 v10, -0x1

    if-nez v2, :cond_5b

    .line 361
    :try_start_4c
    const-string v0, "[addSubInfo]- null iccId"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_56

    .line 362
    nop

    .line 611
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    return v10

    .line 611
    :catchall_56
    move-exception v0

    move-wide/from16 v23, v8

    goto/16 :goto_412

    .line 365
    :cond_5b
    :try_start_5b
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 366
    .local v11, "resolver":Landroid/content/ContentResolver;
    const-string v12, "icc_id=?"

    .line 368
    .local v12, "selection":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v13
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_40f

    const/4 v14, 0x2

    const/4 v10, 0x0

    if-eqz v13, :cond_91

    .line 369
    :try_start_6b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " AND subscription_type=?"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 370
    new-array v13, v14, [Ljava/lang/String;

    aput-object v2, v13, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v13, v17
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_56

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    const/4 v15, 0x3

    const/16 v17, 0x1

    .local v13, "args":[Ljava/lang/String;
    goto :goto_ba

    .line 377
    .end local v13    # "args":[Ljava/lang/String;
    :cond_91
    :try_start_91
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " OR icc_id=? OR icc_id=?"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 379
    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/String;

    aput-object v2, v13, v10

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v13, v17

    .line 380
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    .line 383
    .end local v12    # "selection":Ljava/lang/String;
    .local v18, "selection":Ljava/lang/String;
    .local v19, "args":[Ljava/lang/String;
    :goto_ba
    sget-object v13, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "name_source"

    filled-new-array {v7, v6, v12, v5, v0}, [Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x0

    move-object v12, v11

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_d1
    .catchall {:try_start_91 .. :try_end_d1} :catchall_40f

    move-object v15, v12

    .line 389
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 391
    .local v12, "setDisplayName":Z
    if-eqz v15, :cond_e4

    :try_start_d5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_de

    if-nez v13, :cond_dc

    goto :goto_e4

    :cond_dc
    move v13, v10

    goto :goto_e5

    .line 449
    :catchall_de
    move-exception v0

    move-wide/from16 v23, v8

    move-object v9, v15

    goto/16 :goto_406

    .line 391
    :cond_e4
    :goto_e4
    const/4 v13, 0x1

    .line 392
    .local v13, "recordsDoNotExist":Z
    :goto_e5
    :try_start_e5
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v14
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_400

    const-string v10, "[addSubInfoRecord] New record created: "

    move/from16 v16, v12

    .end local v12    # "setDisplayName":Z
    .local v16, "setDisplayName":Z
    const-string v12, "[addSubInfoRecord] Record already exists"

    move-wide/from16 v23, v8

    .end local v8    # "identity":J
    .local v23, "identity":J
    if-eqz v14, :cond_125

    .line 393
    if-eqz v13, :cond_118

    .line 395
    const/4 v3, -0x1

    .line 396
    .end local p3    # "slotIndex":I
    .local v3, "slotIndex":I
    move-object/from16 v9, p2

    :try_start_f8
    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 398
    .local v0, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_f8 .. :try_end_10e} :catchall_112

    .line 399
    .end local v0    # "uri":Landroid/net/Uri;
    move/from16 v5, v16

    goto/16 :goto_1d5

    .line 449
    .end local v13    # "recordsDoNotExist":Z
    :catchall_112
    move-exception v0

    move-object v9, v15

    move/from16 v12, v16

    goto/16 :goto_406

    .line 400
    .end local v3    # "slotIndex":I
    .restart local v13    # "recordsDoNotExist":Z
    .restart local p3    # "slotIndex":I
    :cond_118
    move-object/from16 v9, p2

    :try_start_11a
    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11f

    goto/16 :goto_1d3

    .line 449
    .end local v13    # "recordsDoNotExist":Z
    :catchall_11f
    move-exception v0

    move-object v9, v15

    move/from16 v12, v16

    goto/16 :goto_406

    .line 403
    .restart local v13    # "recordsDoNotExist":Z
    :cond_125
    move-object/from16 v9, p2

    if-eqz v13, :cond_147

    .line 404
    const/4 v12, 0x1

    .line 405
    .end local v16    # "setDisplayName":Z
    .restart local v12    # "setDisplayName":Z
    :try_start_12a
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 406
    .restart local v0    # "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_140
    .catchall {:try_start_12a .. :try_end_140} :catchall_143

    .line 407
    .end local v0    # "uri":Landroid/net/Uri;
    move v5, v12

    goto/16 :goto_1d5

    .line 449
    .end local v13    # "recordsDoNotExist":Z
    :catchall_143
    move-exception v0

    move-object v9, v15

    goto/16 :goto_406

    .line 408
    .end local v12    # "setDisplayName":Z
    .restart local v13    # "recordsDoNotExist":Z
    .restart local v16    # "setDisplayName":Z
    :cond_147
    const/4 v10, 0x0

    :try_start_148
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v10, v14

    .line 409
    .local v10, "subId":I
    const/4 v14, 0x1

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v22, v17

    .line 410
    .local v22, "oldSimInfoId":I
    const/4 v14, 0x2

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 411
    .local v21, "nameSource":I
    const/4 v14, 0x3

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, "oldIccId":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "oldCardId":Ljava/lang/String;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V
    :try_end_168
    .catchall {:try_start_148 .. :try_end_168} :catchall_3fb

    move-object/from16 v26, v25

    .line 415
    .local v26, "value":Landroid/content/ContentValues;
    move/from16 v9, v22

    .end local v22    # "oldSimInfoId":I
    .local v9, "oldSimInfoId":I
    if-eq v3, v9, :cond_17c

    .line 416
    move/from16 v22, v9

    .end local v9    # "oldSimInfoId":I
    .restart local v22    # "oldSimInfoId":I
    :try_start_170
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v25, v13

    move-object/from16 v13, v26

    .end local v26    # "value":Landroid/content/ContentValues;
    .local v13, "value":Landroid/content/ContentValues;
    .local v25, "recordsDoNotExist":Z
    invoke-virtual {v13, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_182

    .line 415
    .end local v22    # "oldSimInfoId":I
    .end local v25    # "recordsDoNotExist":Z
    .restart local v9    # "oldSimInfoId":I
    .local v13, "recordsDoNotExist":Z
    .restart local v26    # "value":Landroid/content/ContentValues;
    :cond_17c
    move/from16 v22, v9

    move/from16 v25, v13

    move-object/from16 v13, v26

    .line 424
    .end local v9    # "oldSimInfoId":I
    .end local v26    # "value":Landroid/content/ContentValues;
    .local v13, "value":Landroid/content/ContentValues;
    .restart local v22    # "oldSimInfoId":I
    .restart local v25    # "recordsDoNotExist":Z
    :goto_182
    if-eqz v14, :cond_1af

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_198

    .line 425
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1ac

    .line 426
    :cond_198
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1af

    .line 427
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1af

    .line 429
    :cond_1ac
    invoke-virtual {v13, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1af
    .catchall {:try_start_170 .. :try_end_1af} :catchall_11f

    .line 432
    :cond_1af
    :try_start_1af
    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5
    :try_end_1b5
    .catchall {:try_start_1af .. :try_end_1b5} :catchall_3fb

    .line 433
    .local v5, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v5, :cond_1c2

    .line 434
    :try_start_1b7
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, "cardId":Ljava/lang/String;
    if-eqz v6, :cond_1c2

    if-eq v6, v8, :cond_1c2

    .line 436
    invoke-virtual {v13, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c2
    .catchall {:try_start_1b7 .. :try_end_1c2} :catchall_11f

    .line 440
    .end local v6    # "cardId":Ljava/lang/String;
    :cond_1c2
    :try_start_1c2
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v0
    :try_end_1c6
    .catchall {:try_start_1c2 .. :try_end_1c6} :catchall_3fb

    if-lez v0, :cond_1d0

    .line 441
    :try_start_1c8
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v11, v0, v13, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d0
    .catchall {:try_start_1c8 .. :try_end_1d0} :catchall_11f

    .line 445
    :cond_1d0
    :try_start_1d0
    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1d3
    .catchall {:try_start_1d0 .. :try_end_1d3} :catchall_3fb

    .line 449
    .end local v5    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v8    # "oldCardId":Ljava/lang/String;
    .end local v10    # "subId":I
    .end local v13    # "value":Landroid/content/ContentValues;
    .end local v14    # "oldIccId":Ljava/lang/String;
    .end local v21    # "nameSource":I
    .end local v22    # "oldSimInfoId":I
    .end local v25    # "recordsDoNotExist":Z
    :goto_1d3
    move/from16 v5, v16

    .end local v16    # "setDisplayName":Z
    .end local p3    # "slotIndex":I
    .restart local v3    # "slotIndex":I
    .local v5, "setDisplayName":Z
    :goto_1d5
    if-eqz v15, :cond_1da

    .line 450
    :try_start_1d7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_1da
    const-string v0, "sim_id=?"

    .line 455
    .end local v18    # "selection":Ljava/lang/String;
    .local v0, "selection":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v8, v9

    move-object v6, v8

    .line 456
    .end local v19    # "args":[Ljava/lang/String;
    .local v6, "args":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v8

    if-eqz v8, :cond_200

    .line 457
    const-string v8, "icc_id=? AND subscription_type=?"

    move-object v0, v8

    .line 459
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    move-object v6, v8

    move-object v6, v0

    goto :goto_203

    .line 456
    :cond_200
    const/4 v10, 0x1

    move-object v8, v6

    move-object v6, v0

    .line 461
    .end local v0    # "selection":Ljava/lang/String;
    .local v6, "selection":Ljava/lang/String;
    .local v8, "args":[Ljava/lang/String;
    :goto_203
    sget-object v13, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v12, v11

    move v0, v10

    move-object v9, v15

    .end local v15    # "cursor":Landroid/database/Cursor;
    .local v9, "cursor":Landroid/database/Cursor;
    move-object v15, v6

    move-object/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_212
    .catchall {:try_start_1d7 .. :try_end_212} :catchall_40d

    move-object v9, v10

    .line 464
    if-eqz v9, :cond_309

    :try_start_215
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_309

    .line 466
    :cond_21b
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 470
    .restart local v10    # "subId":I
    invoke-virtual {v1, v3, v10, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->addToSubIdList(III)Z

    move-result v12

    if-eqz v12, :cond_2d4

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v12

    .line 478
    .local v12, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v13

    .line 480
    .local v13, "defaultSubId":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addSubInfoRecord] sSlotIndexToSubIds.size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sSlotIndexToSubIds:Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;

    .line 481
    invoke-virtual {v15}, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " slotIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " subId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " defaultSubId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " simCount="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 480
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v14

    if-nez v14, :cond_2d0

    .line 489
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v14

    if-eqz v14, :cond_297

    if-eq v12, v0, :cond_297

    .line 492
    invoke-virtual {v1, v13}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isActiveSubId(I)Z

    move-result v14

    if-eqz v14, :cond_297

    sget-object v14, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    .line 493
    invoke-virtual {v14}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isActiveSubId(I)Z

    move-result v14

    if-eqz v14, :cond_297

    sget-object v14, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    .line 494
    invoke-virtual {v14}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v14

    if-ne v14, v10, :cond_2b0

    iget v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    if-eq v14, v3, :cond_2b0

    .line 498
    :cond_297
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting default fallback subid to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v1, v10, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultFallbackSubId(II)V

    .line 501
    iput v3, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->lastPhoneId:I

    .line 506
    :cond_2b0
    if-ne v12, v0, :cond_2d3

    .line 508
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addSubInfoRecord] one sim set defaults to subId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultDataSubId(I)V

    .line 512
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultSmsSubId(I)V

    .line 513
    invoke-virtual {v1, v10}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_2d3

    .line 516
    :cond_2d0
    invoke-virtual {v1, v10, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->updateDefaultSubIdsIfNeeded(II)V

    .line 518
    .end local v12    # "subIdCountMax":I
    .end local v13    # "defaultSubId":I
    :cond_2d3
    :goto_2d3
    goto :goto_2d9

    .line 520
    :cond_2d4
    const-string v12, "[addSubInfoRecord] current SubId is already known, IGNORE"

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 525
    :goto_2d9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[addSubInfoRecord] hashmap("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 527
    .end local v10    # "subId":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_2fe
    .catchall {:try_start_215 .. :try_end_2fe} :catchall_301

    if-nez v10, :cond_21b

    goto :goto_309

    .line 530
    :catchall_301
    move-exception v0

    if-eqz v9, :cond_307

    .line 531
    :try_start_304
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_307
    nop

    .end local v3    # "slotIndex":I
    .end local v23    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "uniqueId":Ljava/lang/String;
    .end local p2    # "displayName":Ljava/lang/String;
    .end local p4    # "subscriptionType":I
    throw v0

    .line 530
    .restart local v3    # "slotIndex":I
    .restart local v23    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "uniqueId":Ljava/lang/String;
    .restart local p2    # "displayName":Ljava/lang/String;
    .restart local p4    # "subscriptionType":I
    :cond_309
    :goto_309
    if-eqz v9, :cond_30e

    .line 531
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_30e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 539
    invoke-virtual {v1, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v7

    if-eqz v7, :cond_31c

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged()V

    goto/16 :goto_3f5

    .line 543
    :cond_31c
    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 544
    .local v7, "subId":I
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-nez v10, :cond_340

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addSubInfoRecord]- getSubId failed invalid subId = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_33a
    .catchall {:try_start_304 .. :try_end_33a} :catchall_40d

    .line 548
    nop

    .line 611
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    const/4 v0, -0x1

    return v0

    .line 550
    :cond_340
    if-eqz v5, :cond_3d8

    .line 551
    :try_start_342
    iget-object v10, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v10

    .line 563
    .local v10, "simCarrierName":Ljava/lang/String;
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v12

    .line 567
    .local v12, "simNumeric":Ljava/lang/String;
    const-string v13, "20404"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35f

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_35f

    .line 568
    const-string v0, ""

    .local v0, "simMvnoName":Ljava/lang/String;
    goto :goto_369

    .line 570
    .end local v0    # "simMvnoName":Ljava/lang/String;
    :cond_35f
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v13

    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7, v12, v0, v14}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "simMvnoName":Ljava/lang/String;
    :goto_369
    sget-boolean v13, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v13, :cond_389

    .line 574
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[addSubInfoRecord]- simNumeric: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", simMvnoName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 577
    :cond_389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_391

    .line 578
    move-object v13, v0

    .local v13, "nameToSet":Ljava/lang/String;
    goto :goto_3b0

    .line 580
    .end local v13    # "nameToSet":Ljava/lang/String;
    :cond_391
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_399

    .line 581
    move-object v13, v10

    .restart local v13    # "nameToSet":Ljava/lang/String;
    goto :goto_3b0

    .line 583
    .end local v13    # "nameToSet":Ljava/lang/String;
    :cond_399
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CARD "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 588
    .restart local v13    # "nameToSet":Ljava/lang/String;
    :goto_3b0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 589
    .local v14, "value":Landroid/content/ContentValues;
    const-string v15, "display_name"

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "simMvnoName":Ljava/lang/String;
    .local v16, "simMvnoName":Ljava/lang/String;
    invoke-virtual {v11, v15, v14, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[addSubInfoRecord] sim name = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 604
    .end local v10    # "simCarrierName":Ljava/lang/String;
    .end local v12    # "simNumeric":Ljava/lang/String;
    .end local v13    # "nameToSet":Ljava/lang/String;
    .end local v14    # "value":Landroid/content/ContentValues;
    .end local v16    # "simMvnoName":Ljava/lang/String;
    :cond_3d8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[addSubInfoRecord]- info size="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sSlotIndexToSubIds:Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SubscriptionController$WatchedSlotIndexToSubIds;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_3f5
    .catchall {:try_start_342 .. :try_end_3f5} :catchall_40d

    .line 611
    .end local v5    # "setDisplayName":Z
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "subId":I
    .end local v8    # "args":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    :goto_3f5
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    nop

    .line 613
    const/4 v0, 0x0

    return v0

    .line 449
    .end local v3    # "slotIndex":I
    .restart local v11    # "resolver":Landroid/content/ContentResolver;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .local v16, "setDisplayName":Z
    .restart local v18    # "selection":Ljava/lang/String;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local p3    # "slotIndex":I
    :catchall_3fb
    move-exception v0

    move-object v9, v15

    move/from16 v12, v16

    .end local v15    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    goto :goto_406

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v16    # "setDisplayName":Z
    .end local v23    # "identity":J
    .local v8, "identity":J
    .local v12, "setDisplayName":Z
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catchall_400
    move-exception v0

    move-wide/from16 v23, v8

    move/from16 v16, v12

    move-object v9, v15

    .end local v8    # "identity":J
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local p3    # "slotIndex":I
    .restart local v3    # "slotIndex":I
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v23    # "identity":J
    :goto_406
    if-eqz v9, :cond_40b

    .line 450
    :try_start_408
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_40b
    nop

    .end local v3    # "slotIndex":I
    .end local v23    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "uniqueId":Ljava/lang/String;
    .end local p2    # "displayName":Ljava/lang/String;
    .end local p4    # "subscriptionType":I
    throw v0
    :try_end_40d
    .catchall {:try_start_408 .. :try_end_40d} :catchall_40d

    .line 611
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "setDisplayName":Z
    .end local v18    # "selection":Ljava/lang/String;
    .end local v19    # "args":[Ljava/lang/String;
    .restart local v3    # "slotIndex":I
    .restart local v23    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "uniqueId":Ljava/lang/String;
    .restart local p2    # "displayName":Ljava/lang/String;
    .restart local p4    # "subscriptionType":I
    :catchall_40d
    move-exception v0

    goto :goto_412

    .end local v3    # "slotIndex":I
    .end local v23    # "identity":J
    .restart local v8    # "identity":J
    .restart local p3    # "slotIndex":I
    :catchall_40f
    move-exception v0

    move-wide/from16 v23, v8

    .end local v8    # "identity":J
    .end local p3    # "slotIndex":I
    .restart local v3    # "slotIndex":I
    .restart local v23    # "identity":J
    :goto_412
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw v0
.end method

.method public getDefaultFallbackSubId()I
    .registers 2

    .line 1026
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    return v0
.end method

.method protected getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .registers 60
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 231
    .local v2, "id":I
    const-string v3, "icc_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 233
    .local v30, "iccId":Ljava/lang/String;
    const-string v3, "sim_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 235
    .local v15, "simSlotIndex":I
    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "displayName":Ljava/lang/String;
    const-string v3, "carrier_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 239
    .local v31, "carrierName":Ljava/lang/String;
    const-string v3, "name_source"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 241
    .local v13, "nameSource":I
    const-string v3, "color"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 243
    .local v12, "iconTint":I
    const-string v3, "number"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "number":Ljava/lang/String;
    const-string v4, "data_roaming"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 248
    .local v11, "dataRoaming":I
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108054b

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 250
    .local v32, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v4, "mcc_string"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, "mcc":Ljava/lang/String;
    const-string v4, "mnc_string"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "mnc":Ljava/lang/String;
    const-string v4, "ehplmns"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "ehplmnsRaw":Ljava/lang/String;
    const-string v4, "hplmns"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "hplmnsRaw":Ljava/lang/String;
    const-string v4, ","

    if-nez v8, :cond_99

    const/4 v6, 0x0

    goto :goto_9d

    :cond_99
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "ehplmns":[Ljava/lang/String;
    :goto_9d
    if-nez v7, :cond_a1

    const/4 v4, 0x0

    goto :goto_a5

    :cond_a1
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "hplmns":[Ljava/lang/String;
    :goto_a5
    const-string v5, "card_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "cardId":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "hplmns":[Ljava/lang/String;
    .local v17, "hplmns":[Ljava/lang/String;
    const-string v4, "iso_country_code"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "countryIso":Ljava/lang/String;
    move-object/from16 v18, v6

    .end local v6    # "ehplmns":[Ljava/lang/String;
    .local v18, "ehplmns":[Ljava/lang/String;
    iget-object v6, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v6

    .line 268
    .local v6, "publicCardId":I
    move-object/from16 v19, v7

    .end local v7    # "hplmnsRaw":Ljava/lang/String;
    .local v19, "hplmnsRaw":Ljava/lang/String;
    const-string v7, "is_embedded"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v20, 0x0

    move-object/from16 v21, v8

    .end local v8    # "ehplmnsRaw":Ljava/lang/String;
    .local v21, "ehplmnsRaw":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v7, v8, :cond_d8

    move v7, v8

    goto :goto_da

    :cond_d8
    move/from16 v7, v20

    .line 270
    .local v7, "isEmbedded":Z
    :goto_da
    const-string v8, "carrier_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 273
    .local v8, "carrierId":I
    if-eqz v7, :cond_fa

    .line 274
    nop

    .line 275
    move-object/from16 v23, v3

    .end local v3    # "number":Ljava/lang/String;
    .local v23, "number":Ljava/lang/String;
    const-string v3, "access_rules"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 274
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v3

    move-object/from16 v33, v3

    .local v3, "accessRules":[Landroid/telephony/UiccAccessRule;
    goto :goto_ff

    .line 277
    .end local v23    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    :cond_fa
    move-object/from16 v23, v3

    .end local v3    # "number":Ljava/lang/String;
    .restart local v23    # "number":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v33, v3

    .line 279
    .local v33, "accessRules":[Landroid/telephony/UiccAccessRule;
    :goto_ff
    nop

    .line 280
    const-string v3, "access_rules_from_carrier_configs"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 279
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v3

    .line 281
    .local v3, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    move/from16 v24, v6

    .end local v6    # "publicCardId":I
    .local v24, "publicCardId":I
    const-string v6, "is_opportunistic"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v25, v3

    const/4 v3, 0x1

    .end local v3    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v25, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    if-ne v6, v3, :cond_121

    const/4 v3, 0x1

    goto :goto_123

    :cond_121
    move/from16 v3, v20

    :goto_123
    move v6, v3

    .line 283
    .local v6, "isOpportunistic":Z
    const-string v3, "group_uuid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "groupUUID":Ljava/lang/String;
    move-object/from16 v26, v3

    .end local v3    # "groupUUID":Ljava/lang/String;
    .local v26, "groupUUID":Ljava/lang/String;
    const-string v3, "profile_class"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 287
    .local v3, "profileClass":I
    move/from16 v27, v3

    .end local v3    # "profileClass":I
    .local v27, "profileClass":I
    const-string v3, "subscription_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 289
    .local v3, "subType":I
    move/from16 v28, v3

    .end local v3    # "subType":I
    .local v28, "subType":I
    const-string v3, "group_owner"

    move/from16 v29, v6

    const/4 v6, 0x0

    .end local v6    # "isOpportunistic":Z
    .local v29, "isOpportunistic":Z
    invoke-virtual {v0, v1, v3, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getOptionalStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 291
    .local v34, "groupOwner":Ljava/lang/String;
    const-string v3, "uicc_applications_enabled"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_160

    move/from16 v20, v6

    :cond_160
    move/from16 v6, v20

    .line 294
    .local v6, "areUiccApplicationsEnabled":Z
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->VDBG:Z

    if-eqz v3, :cond_243

    .line 296
    invoke-static/range {v30 .. v30}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "iccIdToPrint":Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "cardIdToPrint":Ljava/lang/String;
    move-object/from16 v16, v5

    .end local v5    # "cardId":Ljava/lang/String;
    .local v16, "cardId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[getSubInfoRecord] id:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iccid:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " simSlotIndex:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " carrierid:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " displayName:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " nameSource:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iconTint:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dataRoaming:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mcc:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mnc:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " countIso:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isEmbedded:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " accessRules:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " carrierConfigAccessRules: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static/range {v25 .. v25}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cardId:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " publicCardId:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v24

    .end local v24    # "publicCardId":I
    .local v0, "publicCardId":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "publicCardId":I
    .restart local v24    # "publicCardId":I
    const-string v0, " isOpportunistic:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v29

    .end local v29    # "isOpportunistic":Z
    .local v0, "isOpportunistic":Z
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .end local v0    # "isOpportunistic":Z
    .restart local v29    # "isOpportunistic":Z
    const-string v0, " groupUUID:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    .end local v26    # "groupUUID":Ljava/lang/String;
    .local v0, "groupUUID":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "groupUUID":Ljava/lang/String;
    .restart local v26    # "groupUUID":Ljava/lang/String;
    const-string v0, " profileClass:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v27

    .end local v27    # "profileClass":I
    .local v0, "profileClass":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "profileClass":I
    .restart local v27    # "profileClass":I
    const-string v0, " subscriptionType: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v28

    .end local v28    # "subType":I
    .local v0, "subType":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "subType":I
    .restart local v28    # "subType":I
    const-string v0, " carrierConfigAccessRules:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    .end local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v0, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v0    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .restart local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    const-string v0, " areUiccApplicationsEnabled: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    move-object/from16 v5, p0

    invoke-direct {v5, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_246

    .line 294
    .end local v1    # "cardIdToPrint":Ljava/lang/String;
    .end local v3    # "iccIdToPrint":Ljava/lang/String;
    .end local v16    # "cardId":Ljava/lang/String;
    .restart local v5    # "cardId":Ljava/lang/String;
    :cond_243
    move-object/from16 v16, v5

    move-object v5, v0

    .line 315
    .end local v5    # "cardId":Ljava/lang/String;
    .restart local v16    # "cardId":Ljava/lang/String;
    :goto_246
    iget-object v0, v5, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "line1Number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25d

    move-object/from16 v1, v23

    .end local v23    # "number":Ljava/lang/String;
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25f

    .line 317
    move-object v3, v0

    move-object v1, v3

    .end local v1    # "number":Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    goto :goto_25f

    .line 316
    .end local v3    # "number":Ljava/lang/String;
    .restart local v23    # "number":Ljava/lang/String;
    :cond_25d
    move-object/from16 v1, v23

    .line 320
    .end local v23    # "number":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_25f
    :goto_25f
    new-instance v35, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-object/from16 v36, v25

    move-object/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    .end local v25    # "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .end local v26    # "groupUUID":Ljava/lang/String;
    .end local v27    # "profileClass":I
    .end local v28    # "subType":I
    .local v36, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    .local v37, "groupUUID":Ljava/lang/String;
    .local v38, "profileClass":I
    .local v39, "subType":I
    move-object/from16 v3, v35

    const/16 v23, 0x0

    move-object/from16 v40, v0

    move-object/from16 v41, v4

    move-object/from16 v0, v17

    .end local v4    # "countryIso":Ljava/lang/String;
    .end local v17    # "hplmns":[Ljava/lang/String;
    .local v0, "hplmns":[Ljava/lang/String;
    .local v40, "line1Number":Ljava/lang/String;
    .local v41, "countryIso":Ljava/lang/String;
    move v4, v2

    move-object/from16 v42, v16

    .end local v16    # "cardId":Ljava/lang/String;
    .local v42, "cardId":Ljava/lang/String;
    move-object/from16 v5, v30

    move/from16 v43, v2

    move/from16 v46, v6

    move-object/from16 v2, v18

    move/from16 v44, v24

    move/from16 v45, v29

    .end local v6    # "areUiccApplicationsEnabled":Z
    .end local v18    # "ehplmns":[Ljava/lang/String;
    .end local v24    # "publicCardId":I
    .end local v29    # "isOpportunistic":Z
    .local v2, "ehplmns":[Ljava/lang/String;
    .local v43, "id":I
    .local v44, "publicCardId":I
    .local v45, "isOpportunistic":Z
    .local v46, "areUiccApplicationsEnabled":Z
    move v6, v15

    move/from16 v48, v7

    move-object/from16 v47, v19

    .end local v7    # "isEmbedded":Z
    .end local v19    # "hplmnsRaw":Ljava/lang/String;
    .local v47, "hplmnsRaw":Ljava/lang/String;
    .local v48, "isEmbedded":Z
    move-object v7, v14

    move/from16 v50, v8

    move-object/from16 v49, v21

    .end local v8    # "carrierId":I
    .end local v21    # "ehplmnsRaw":Ljava/lang/String;
    .local v49, "ehplmnsRaw":Ljava/lang/String;
    .local v50, "carrierId":I
    move-object/from16 v8, v31

    move-object/from16 v51, v9

    .end local v9    # "mnc":Ljava/lang/String;
    .local v51, "mnc":Ljava/lang/String;
    move v9, v13

    move-object/from16 v52, v10

    .end local v10    # "mcc":Ljava/lang/String;
    .local v52, "mcc":Ljava/lang/String;
    move v10, v12

    move/from16 v53, v11

    .end local v11    # "dataRoaming":I
    .local v53, "dataRoaming":I
    move-object v11, v1

    move/from16 v54, v12

    .end local v12    # "iconTint":I
    .local v54, "iconTint":I
    move/from16 v12, v53

    move/from16 v55, v13

    .end local v13    # "nameSource":I
    .local v55, "nameSource":I
    move-object/from16 v13, v32

    move-object/from16 v56, v14

    .end local v14    # "displayName":Ljava/lang/String;
    .local v56, "displayName":Ljava/lang/String;
    move-object/from16 v14, v52

    move/from16 v57, v15

    .end local v15    # "simSlotIndex":I
    .local v57, "simSlotIndex":I
    move-object/from16 v15, v51

    move-object/from16 v16, v41

    move/from16 v17, v48

    move-object/from16 v18, v33

    move-object/from16 v19, v42

    move/from16 v20, v44

    move/from16 v21, v45

    move-object/from16 v22, v37

    move/from16 v24, v50

    move/from16 v25, v38

    move/from16 v26, v39

    move-object/from16 v27, v34

    move-object/from16 v28, v36

    move/from16 v29, v46

    invoke-direct/range {v3 .. v29}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 327
    .local v3, "info":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    invoke-virtual {v3, v2, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;)V

    .line 328
    return-object v3
.end method

.method public getSubscriptionInfo(Ljava/lang/String;ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 847
    invoke-virtual {p0, p2, p1, p3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 848
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v1, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 849
    .local v1, "mSubInfo":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    return-object v1
.end method

.method public getSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;

    .line 860
    move-object v0, p1

    .line 862
    .local v0, "pkgName":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 863
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 866
    :cond_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const-string v3, "getSubscriptionInfoForIccId"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 869
    return-object v2

    .line 872
    :cond_16
    if-nez p2, :cond_1e

    .line 873
    const-string v1, "[getSubscriptionInfoForIccId]- null iccid"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 874
    return-object v2

    .line 878
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 880
    .local v3, "identity":J
    :try_start_22
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "icc_id=?"

    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v9, v1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_a4

    .line 884
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_75

    .line 885
    :goto_3a
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 886
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    .line 887
    .local v5, "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    if-eqz v5, :cond_72

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSubscriptionInfoForIccId]+ iccId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-static {p2}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", subInfo="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_3a .. :try_end_68} :catchall_73

    .line 893
    nop

    .line 900
    if-eqz v1, :cond_6e

    .line 901
    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_a4

    .line 905
    :cond_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    return-object v5

    .line 895
    .end local v5    # "si":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    :cond_72
    goto :goto_3a

    .line 900
    :catchall_73
    move-exception v2

    goto :goto_9d

    .line 897
    :cond_75
    :try_start_75
    const-string v5, "[getSubscriptionInfoForIccId]- Query fail"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_73

    .line 900
    :cond_7a
    if-eqz v1, :cond_7f

    .line 901
    :try_start_7c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_a4

    .line 905
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_7f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    nop

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSubscriptionInfoForIccId]- iccId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",subInfo=null"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 911
    return-object v2

    .line 900
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :goto_9d
    if-eqz v1, :cond_a2

    .line 901
    :try_start_9f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 903
    :cond_a2
    nop

    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v3    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "callingPackage":Ljava/lang/String;
    .end local p2    # "iccId":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    throw v2
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_a4

    .line 905
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "pkgName":Ljava/lang/String;
    .restart local v3    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "callingPackage":Ljava/lang/String;
    .restart local p2    # "iccId":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    :catchall_a4
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    throw v1
.end method

.method public getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "resultValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    new-array v6, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    const-string v5, "_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 728
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_19e

    .line 729
    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 730
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1ca

    :cond_3b
    goto/16 :goto_187

    :sswitch_3d
    const-string v1, "wfc_ims_roaming_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x11

    goto/16 :goto_188

    :sswitch_49
    const-string v1, "wfc_ims_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xf

    goto/16 :goto_188

    :sswitch_55
    const-string v1, "d2d_sharing_contacts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x1a

    goto/16 :goto_188

    :sswitch_61
    const-string v1, "enable_channel_50_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x9

    goto/16 :goto_188

    :sswitch_6d
    const-string v1, "group_uuid"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x15

    goto/16 :goto_188

    :sswitch_79
    const-string v1, "enable_etws_test_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x8

    goto/16 :goto_188

    :sswitch_85
    const-string v1, "vonr_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x1b

    goto/16 :goto_188

    :sswitch_91
    const-string v1, "vonr_ui_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x1c

    goto/16 :goto_188

    :sswitch_9d
    const-string v1, "data_enabled_override_rules"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x16

    goto/16 :goto_188

    :sswitch_a9
    const-string v1, "voims_opt_in_status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x18

    goto/16 :goto_188

    :sswitch_b5
    const-string v1, "alert_reminder_interval"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x5

    goto/16 :goto_188

    :sswitch_c0
    const-string v1, "allowed_network_types_for_reasons"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x17

    goto/16 :goto_188

    :sswitch_cc
    const-string v4, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto/16 :goto_188

    :sswitch_d6
    const-string v1, "show_cmas_opt_out_dialog"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xb

    goto/16 :goto_188

    :sswitch_e2
    const-string v1, "enable_cmas_amber_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x2

    goto/16 :goto_188

    :sswitch_ed
    const-string v1, "wfc_ims_roaming_mode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x10

    goto/16 :goto_188

    :sswitch_f9
    const-string v1, "alert_sound_duration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x4

    goto/16 :goto_188

    :sswitch_104
    const-string v1, "vt_ims_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xd

    goto/16 :goto_188

    :sswitch_110
    const-string v1, "enable_emergency_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x3

    goto/16 :goto_188

    :sswitch_11b
    const-string v1, "wfc_ims_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xe

    goto/16 :goto_188

    :sswitch_127
    const-string v1, "d2d_sharing_status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x19

    goto :goto_188

    :sswitch_132
    const-string v1, "cross_sim_calling_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x13

    goto :goto_188

    :sswitch_13d
    const-string v1, "enable_alert_speech"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x7

    goto :goto_188

    :sswitch_147
    const-string v1, "enable_cmas_test_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xa

    goto :goto_188

    :sswitch_152
    const-string v1, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v8

    goto :goto_188

    :sswitch_15c
    const-string v1, "is_opportunistic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x14

    goto :goto_188

    :sswitch_167
    const-string v1, "volte_vt_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0xc

    goto :goto_188

    :sswitch_172
    const-string v1, "ims_rcs_uce_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/16 v1, 0x12

    goto :goto_188

    :sswitch_17d
    const-string v1, "enable_alert_vibrate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x6

    goto :goto_188

    :goto_187
    move v1, v3

    :goto_188
    packed-switch v1, :pswitch_data_240

    .line 765
    const-string v1, "Invalid column name"

    goto :goto_194

    .line 762
    :pswitch_18e
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 763
    goto :goto_197

    .line 765
    :goto_194
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 766
    :goto_197
    goto :goto_1a3

    .line 769
    :cond_198
    const-string v1, "Valid row not present in db"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_1a3

    .line 772
    :cond_19e
    const-string v1, "Query failed"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1a3
    .catchall {:try_start_2d .. :try_end_1a3} :catchall_1bd

    .line 774
    :goto_1a3
    if-eqz v2, :cond_1a8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 776
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriptionProperty Query value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 777
    return-object v0

    .line 724
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_1bd
    move-exception v1

    if-eqz v2, :cond_1c8

    :try_start_1c0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1c3
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_1c4

    goto :goto_1c8

    :catchall_1c4
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c8
    :goto_1c8
    throw v1

    nop

    :sswitch_data_1ca
    .sparse-switch
        -0x773be030 -> :sswitch_17d
        -0x74c28e34 -> :sswitch_172
        -0x744070a5 -> :sswitch_167
        -0x6c716e4c -> :sswitch_15c
        -0x5cb49b9e -> :sswitch_152
        -0x55773f83 -> :sswitch_147
        -0x52e5f19f -> :sswitch_13d
        -0x4fd32f21 -> :sswitch_132
        -0x4d0dc9c2 -> :sswitch_127
        -0x489bd97a -> :sswitch_11b
        -0x1b84c7bf -> :sswitch_110
        -0x190a3530 -> :sswitch_104
        -0x14d407f9 -> :sswitch_f9
        0xac8e5e4 -> :sswitch_ed
        0xc23defa -> :sswitch_e2
        0xe5af4a6 -> :sswitch_d6
        0x18468858 -> :sswitch_cc
        0x1875c6cb -> :sswitch_c0
        0x1b9209cf -> :sswitch_b5
        0x1deaefb7 -> :sswitch_a9
        0x1e8b87b7 -> :sswitch_9d
        0x26d597d8 -> :sswitch_91
        0x45b2f73f -> :sswitch_85
        0x4bbbb7ac -> :sswitch_79
        0x4c71ed7b -> :sswitch_6d
        0x4cc628c3 -> :sswitch_61
        0x4ed1639f -> :sswitch_55
        0x4f8cec7e -> :sswitch_49
        0x5fa7eb60 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
        :pswitch_18e
    .end packed-switch
.end method

.method protected logdl(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1085
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 6

    .line 195
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_registry"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 198
    .local v0, "trm":Landroid/telephony/TelephonyRegistryManager;
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 206
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastSimInfoContentChanged(Landroid/content/Intent;)V

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    .line 212
    .local v1, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_24
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v3, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_3c

    .line 216
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mOpptSubInfoListChangedDirtyBit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 217
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 219
    :cond_38
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateActiveSubscriptionInfoList(Ljava/util/List;)V

    .line 220
    return-void

    .line 214
    .end local v3    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_3c
    move-exception v3

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method public notifySubscriptionInfoChanged(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 993
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_registry"

    .line 995
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    .line 996
    .local v0, "trm":Landroid/telephony/TelephonyRegistryManager;
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 1004
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastSimInfoContentChanged(Landroid/content/Intent;)V

    .line 1007
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/MultiSimSettingController;->notifySubscriptionInfoChanged()V

    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    .line 1010
    .local v1, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1011
    :try_start_23
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1012
    .local v3, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_3b

    .line 1014
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mOpptSubInfoListChangedDirtyBit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1015
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifyOpportunisticSubscriptionInfoChanged()V

    .line 1017
    :cond_37
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateActiveSubscriptionInfoList(Ljava/util/List;)V

    .line 1018
    return-void

    .line 1012
    .end local v3    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v3
.end method

.method public putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .param p3, "detectedType"    # I
    .param p4, "subCount"    # I
    .param p5, "propKey"    # Ljava/lang/String;

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSubinfoRecordUpdatedExtra: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " detectedType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " propKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 1043
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1044
    .local v0, "subIds":[I
    if-eqz v0, :cond_3c

    array-length v1, v0

    if-lez v1, :cond_3c

    .line 1045
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p1, p2, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_4b

    .line 1047
    :cond_3c
    const-string v1, "putSubinfoRecordUpdatedExtra: no valid subs"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 1048
    const-string v1, "phone"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    const-string v1, "slot"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    :goto_4b
    const-string v1, "simDetectStatus"

    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    const-string v1, "simCount"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    const-string v1, "simPropKey"

    if-eqz p5, :cond_5d

    .line 1060
    invoke-virtual {p1, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_62

    .line 1062
    :cond_5d
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    :goto_62
    return-void
.end method

.method public setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .registers 6
    .param p1, "subId"    # I

    .line 920
    const-string v0, "setDefaultDataSubId"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    .local v0, "identity":J
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_65

    .line 934
    :try_start_e
    sget-boolean v2, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v2, :cond_3e

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultDataSubIdWithoutCapabilitySwitch] subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Binder.getCallingPid and Binder.getCallingUid are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 935
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 974
    :cond_3e
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v2

    .line 975
    .local v2, "previousDefaultSub":I
    const-string v3, "multi_sim_data_call"

    invoke-virtual {p0, v3, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setGlobalSetting(Ljava/lang/String;I)V

    .line 976
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyDefaultDataSubChanged()V

    .line 977
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    .line 978
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v3

    if-eq v2, v3, :cond_5e

    .line 979
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getDefaultSubId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->sendDefaultChangedBroadcast(I)V
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_63

    .line 982
    .end local v2    # "previousDefaultSub":I
    :cond_5e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 983
    nop

    .line 984
    return-void

    .line 982
    :catchall_63
    move-exception v2

    goto :goto_6d

    .line 929
    :cond_65
    :try_start_65
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "setDefaultDataSubIdWithoutCapabilitySwitch called with DEFAULT_SUB_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .end local p1    # "subId":I
    throw v2
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_63

    .line 982
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/MtkSubscriptionController;
    .restart local p1    # "subId":I
    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 983
    throw v2
.end method

.method public setDefaultVoiceSubId(I)V
    .registers 6
    .param p1, "subId"    # I

    .line 782
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 785
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    .line 786
    move-object v1, v0

    goto :goto_f

    :cond_9
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 788
    .local v1, "newHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_f
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 789
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 790
    .local v3, "currentHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v1, :cond_29

    if-nez v3, :cond_29

    .line 791
    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 792
    const-string v0, "[setDefaultVoiceSubId] setUserSelectedOutgoingPhoneAccount(null) when SIM plug out"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 796
    :cond_29
    return-void
.end method

.method public setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;

    .line 628
    sget-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z

    if-eqz v0, :cond_40

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setSubscriptionProperty] propKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", propValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Binder.getCallingPid and Binder.getCallingUid are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 635
    :cond_40
    const-string v0, "setSubscriptionProperty"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 639
    .local v0, "token":J
    :try_start_49
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->validateSubId(I)V

    .line 640
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 641
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->setSubscriptionPropertyIntoContentResolver(ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I

    move-result v3

    .line 644
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 650
    if-eqz v3, :cond_89

    .line 651
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getPhoneId(I)I

    move-result v8

    .line 653
    .local v8, "phoneId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    .line 654
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 653
    invoke-virtual {p0, v5, v6}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 655
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_7a

    const/4 v6, 0x0

    goto :goto_7e

    :cond_7a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    :goto_7e
    move v10, v6

    .line 656
    .local v10, "subCount":I
    const/4 v9, 0x4

    move-object v6, p0

    move-object v7, v4

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->putSubinfoRecordUpdatedExtra(Landroid/content/Intent;IIILjava/lang/String;)V

    .line 658
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V
    :try_end_89
    .catchall {:try_start_49 .. :try_end_89} :catchall_8e

    .line 661
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v8    # "phoneId":I
    .end local v10    # "subCount":I
    :cond_89
    nop

    .line 663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    return v3

    .line 663
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "result":I
    :catchall_8e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v2
.end method

.method protected setSubscriptionPropertyIntoContentResolver(ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I
    .registers 9
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .param p4, "resolver"    # Landroid/content/ContentResolver;

    .line 670
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 671
    .local v0, "value":Landroid/content/ContentValues;
    sget-object v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->GROUP_SHARING_PROPERTIES:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 672
    .local v1, "updateEntireGroup":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubscriptionPropertyIntoContentResolver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_16a

    :cond_2e
    goto/16 :goto_14a

    :sswitch_30
    const-string v2, "wfc_ims_roaming_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x12

    goto/16 :goto_14b

    :sswitch_3c
    const-string v2, "wfc_ims_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x10

    goto/16 :goto_14b

    :sswitch_48
    const-string v2, "enable_channel_50_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x9

    goto/16 :goto_14b

    :sswitch_54
    const-string v2, "enable_etws_test_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x8

    goto/16 :goto_14b

    :sswitch_60
    const-string v2, "vonr_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x16

    goto/16 :goto_14b

    :sswitch_6c
    const-string v2, "vonr_ui_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x17

    goto/16 :goto_14b

    :sswitch_78
    const-string v2, "voims_opt_in_status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x15

    goto/16 :goto_14b

    :sswitch_84
    const-string v2, "alert_reminder_interval"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x5

    goto/16 :goto_14b

    :sswitch_8f
    const-string v2, "allowed_network_types_for_reasons"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x18

    goto/16 :goto_14b

    :sswitch_9b
    const-string v2, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto/16 :goto_14b

    :sswitch_a6
    const-string v2, "show_cmas_opt_out_dialog"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xb

    goto/16 :goto_14b

    :sswitch_b2
    const-string v2, "enable_cmas_amber_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x2

    goto/16 :goto_14b

    :sswitch_bd
    const-string v2, "wfc_ims_roaming_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x11

    goto/16 :goto_14b

    :sswitch_c9
    const-string v2, "alert_sound_duration"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x4

    goto/16 :goto_14b

    :sswitch_d4
    const-string v2, "vt_ims_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xe

    goto/16 :goto_14b

    :sswitch_e0
    const-string v2, "enable_emergency_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x3

    goto :goto_14b

    :sswitch_ea
    const-string v2, "wfc_ims_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xf

    goto :goto_14b

    :sswitch_f5
    const-string v2, "cross_sim_calling_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x14

    goto :goto_14b

    :sswitch_100
    const-string v2, "enable_alert_speech"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x7

    goto :goto_14b

    :sswitch_10a
    const-string v2, "enable_cmas_test_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xa

    goto :goto_14b

    :sswitch_115
    const-string v2, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_14b

    :sswitch_11f
    const-string v2, "is_opportunistic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xd

    goto :goto_14b

    :sswitch_12a
    const-string v2, "volte_vt_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0xc

    goto :goto_14b

    :sswitch_135
    const-string v2, "ims_rcs_uce_enabled"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x13

    goto :goto_14b

    :sswitch_140
    const-string v2, "enable_alert_vibrate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x6

    goto :goto_14b

    :goto_14a
    const/4 v2, -0x1

    :goto_14b
    packed-switch v2, :pswitch_data_1d0

    .line 706
    const-string v2, "Invalid column name"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_164

    .line 703
    :pswitch_154
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    goto :goto_164

    .line 700
    :pswitch_158
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    nop

    .line 710
    :goto_164
    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->updateDatabase(Landroid/content/ContentValues;IZ)I

    move-result v2

    return v2

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x773be030 -> :sswitch_140
        -0x74c28e34 -> :sswitch_135
        -0x744070a5 -> :sswitch_12a
        -0x6c716e4c -> :sswitch_11f
        -0x5cb49b9e -> :sswitch_115
        -0x55773f83 -> :sswitch_10a
        -0x52e5f19f -> :sswitch_100
        -0x4fd32f21 -> :sswitch_f5
        -0x489bd97a -> :sswitch_ea
        -0x1b84c7bf -> :sswitch_e0
        -0x190a3530 -> :sswitch_d4
        -0x14d407f9 -> :sswitch_c9
        0xac8e5e4 -> :sswitch_bd
        0xc23defa -> :sswitch_b2
        0xe5af4a6 -> :sswitch_a6
        0x18468858 -> :sswitch_9b
        0x1875c6cb -> :sswitch_8f
        0x1b9209cf -> :sswitch_84
        0x1deaefb7 -> :sswitch_78
        0x26d597d8 -> :sswitch_6c
        0x45b2f73f -> :sswitch_60
        0x4bbbb7ac -> :sswitch_54
        0x4cc628c3 -> :sswitch_48
        0x4f8cec7e -> :sswitch_3c
        0x5fa7eb60 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_158
        :pswitch_154
    .end packed-switch
.end method
