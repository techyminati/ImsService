.class public Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;
.super Lcom/android/internal/telephony/dataconnection/DcController;
.source "MtkDcController.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkDcc"

.field private static final MTK_SRLTE_SUPPORT:Z

.field private static final PROP_MTK_CDMA_LTE_MODE:Ljava/lang/String; = "ro.vendor.mtk_c2k_lte_mode"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    .line 77
    const-string v0, "ro.vendor.mtk_c2k_lte_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    sput-boolean v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->MTK_SRLTE_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p4, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40007

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method private isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 5
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 341
    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_8
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "isIpMatched: address count is different but matched"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 345
    :cond_11
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onDataStateChanged$0(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .registers 3
    .param p0, "i"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getActiveDcCount()I
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected onDataStateChanged(Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/DataCallResponse;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListAll:Ljava/util/ArrayList;

    monitor-enter v2

    .line 96
    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 97
    .local v0, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_45b

    .line 99
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v2, :cond_30

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: dcsList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " dcListActiveByCid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    goto :goto_32

    .line 99
    :cond_30
    move-object/from16 v3, p1

    .line 105
    :goto_32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v2, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/DataCallResponse;

    .line 108
    .local v5, "dcs":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v5}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v5    # "dcs":Landroid/telephony/data/DataCallResponse;
    goto :goto_3b

    .line 113
    :cond_53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 115
    .local v6, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v7, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_93

    .line 116
    sget-boolean v7, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v7, :cond_90

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDataStateChanged: add to retry dc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 117
    :cond_90
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v6    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_93
    goto :goto_60

    .line 120
    :cond_94
    sget-boolean v5, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v5, :cond_ac

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 124
    :cond_ac
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v5, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    const/4 v6, 0x0

    .line 127
    .local v6, "isAnyDataCallDormant":Z
    const/4 v7, 0x0

    .line 128
    .local v7, "isAnyDataCallActive":Z
    const/4 v8, 0x0

    .line 130
    .local v8, "isInternetDataCallActive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_383

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/data/DataCallResponse;

    .line 132
    .local v10, "newState":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 133
    .local v13, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v13, :cond_da

    .line 135
    const-string v11, "onDataStateChanged: no associated DC yet, ignore"

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->loge(Ljava/lang/String;)V

    .line 136
    goto :goto_b8

    .line 139
    :cond_da
    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnContexts()Ljava/util/List;

    move-result-object v14

    .line 140
    .local v14, "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_f3

    .line 141
    sget-boolean v15, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v15, :cond_ed

    const-string v15, "onDataStateChanged: no connected apns, ignore"

    invoke-virtual {v1, v15}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->loge(Ljava/lang/String;)V

    .line 275
    :cond_ed
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    goto/16 :goto_369

    .line 145
    :cond_f3
    sget-boolean v15, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v15, :cond_11b

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChanged: Found ConnId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " newState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 149
    :cond_11b
    invoke-interface {v14}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    sget-object v12, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;->INSTANCE:Lcom/mediatek/internal/telephony/dataconnection/MtkDcController$$ExternalSyntheticLambda0;

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    if-eqz v11, :cond_12f

    .line 151
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_12f

    .line 152
    const/4 v8, 0x1

    .line 154
    :cond_12f
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v11

    if-nez v11, :cond_20f

    .line 155
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_150

    .line 156
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v11, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCleanupRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    goto/16 :goto_369

    .line 159
    :cond_150
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result v11

    .line 160
    .local v11, "failCause":I
    const/4 v12, 0x0

    .line 161
    .local v12, "isImsOrEIMSType":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_15d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_192

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 162
    .local v16, "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v17, v0

    .end local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .local v17, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .local v18, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    const-string v2, "ims"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18b

    .line 163
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "emergency"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    goto :goto_18b

    .line 168
    .end local v16    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_186
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_15d

    .line 164
    .restart local v16    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_18b
    :goto_18b
    const/4 v12, 0x1

    .line 165
    const-string v0, "Current dataconnection is ims or eims, no need to restart radio,modem will handle the pdn state"

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 166
    goto :goto_196

    .line 161
    .end local v16    # "apncontext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :cond_192
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .line 169
    .end local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :goto_196
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 170
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 169
    invoke-static {v0, v11, v2}, Landroid/telephony/DataFailCause;->isRadioRestartFailure(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1c8

    if-nez v12, :cond_1c8

    .line 171
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_1c2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataStateChanged: X restart radio, failCause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 175
    :cond_1c2
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendRestartRadio()V

    goto :goto_20d

    .line 176
    :cond_1c8
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFailure(I)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 177
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_1e8

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataStateChanged: inactive, add to cleanup list. failCause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 181
    :cond_1e8
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20d

    .line 183
    :cond_1ec
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_204

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataStateChanged: inactive, add to retry list. failCause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 187
    :cond_204
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    move-object v0, v13

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-virtual {v0, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->setLostConnectionCause(I)V

    .line 192
    .end local v11    # "failCause":I
    .end local v12    # "isImsOrEIMSType":Z
    :goto_20d
    goto/16 :goto_369

    .line 195
    .end local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :cond_20f
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .end local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setPduSessionId(I)V

    .line 197
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updatePcscfAddr(Landroid/telephony/data/DataCallResponse;)V

    .line 200
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    .line 201
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateResponseFields(Landroid/telephony/data/DataCallResponse;)V

    .line 202
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v11}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 203
    if-eqz v15, :cond_369

    const-string v2, "onDataStateChanged: no change"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    goto/16 :goto_369

    .line 205
    :cond_237
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v2, v11}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_350

    .line 207
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-static {v2, v11}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_273

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 209
    invoke-static {v2, v11}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_273

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 211
    invoke-static {v2, v11}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_273

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 213
    invoke-direct {v1, v2, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v2

    if-nez v2, :cond_26a

    goto :goto_273

    .line 260
    :cond_26a
    if-eqz v15, :cond_369

    .line 261
    const-string v2, "onDataStateChanged: no changes"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    goto/16 :goto_369

    .line 216
    :cond_273
    :goto_273
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 217
    invoke-static {v2, v11}, Lcom/android/internal/telephony/util/LinkPropertiesUtils;->compareAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;

    move-result-object v2

    .line 219
    .local v2, "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz v15, :cond_2a5

    .line 220
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onDataStateChanged: oldLp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " newLp="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " car="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 223
    :cond_2a5
    const/4 v11, 0x0

    .line 224
    .local v11, "needToClean":Z
    iget-object v12, v2, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2ac
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2ec

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkAddress;

    .line 225
    .local v15, "added":Landroid/net/LinkAddress;
    iget-object v3, v2, Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkAddress;

    .line 226
    .local v16, "removed":Landroid/net/LinkAddress;
    nop

    .line 227
    move-object/from16 v19, v2

    .end local v2    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .local v19, "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 228
    move-object/from16 v20, v3

    invoke-virtual {v15}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 226
    invoke-static {v2, v3}, Lcom/android/internal/telephony/util/NetUtils;->addressTypeMatches(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 229
    const/4 v2, 0x1

    .line 230
    .end local v11    # "needToClean":Z
    .local v2, "needToClean":Z
    move v11, v2

    goto :goto_2e7

    .line 232
    .end local v2    # "needToClean":Z
    .end local v16    # "removed":Landroid/net/LinkAddress;
    .restart local v11    # "needToClean":Z
    :cond_2e0
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_2be

    .line 225
    .end local v19    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .local v2, "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_2e5
    move-object/from16 v19, v2

    .line 233
    .end local v2    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v15    # "added":Landroid/net/LinkAddress;
    .restart local v19    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    :goto_2e7
    move-object/from16 v3, p1

    move-object/from16 v2, v19

    goto :goto_2ac

    .line 235
    .end local v19    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v2    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_2ec
    move-object/from16 v19, v2

    .end local v2    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v19    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->MTK_SRLTE_SUPPORT:Z

    if-eqz v2, :cond_306

    iget-object v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 236
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_306

    .line 237
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v2, :cond_304

    .line 238
    const-string v2, "onDataStateChanged: IRAT set needToClean false"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 240
    :cond_304
    const/4 v11, 0x0

    goto :goto_31e

    .line 241
    :cond_306
    const-string v2, "OP07"

    const-string v3, "persist.vendor.operator.optr"

    .line 242
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31e

    .line 243
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v2, :cond_31d

    .line 244
    const-string v2, "onDataStateChanged: OP07 set needToClean false"

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 246
    :cond_31d
    const/4 v11, 0x0

    .line 250
    :cond_31e
    :goto_31e
    if-eqz v11, :cond_34f

    .line 251
    sget-boolean v2, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v2, :cond_34c

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: addr change, cleanup apns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " oldLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newLp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 257
    :cond_34c
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 259
    .end local v11    # "needToClean":Z
    .end local v19    # "car":Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult;, "Lcom/android/internal/telephony/util/LinkPropertiesUtils$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_34f
    goto :goto_369

    .line 265
    :cond_350
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    if-eqz v15, :cond_369

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataStateChanged: interface change, cleanup apns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 275
    .end local v0    # "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    :cond_369
    :goto_369
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_372

    .line 276
    const/4 v0, 0x1

    move v7, v0

    .line 278
    :cond_372
    invoke-virtual {v10}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37b

    .line 279
    const/4 v0, 0x1

    move v6, v0

    .line 281
    .end local v10    # "newState":Landroid/telephony/data/DataCallResponse;
    .end local v13    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v14    # "apnContexts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    :cond_37b
    move-object/from16 v3, p1

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_b8

    .line 283
    .end local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .local v0, "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .local v2, "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :cond_383
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    .end local v0    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v2    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    .restart local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .restart local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result v0

    if-ne v0, v3, :cond_3f1

    .line 285
    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLteEndcUsingUserDataForIdleDetection()Z

    move-result v0

    .line 288
    .local v0, "isPhysicalLinkStateFocusingOnInternetData":Z
    if-eqz v0, :cond_39c

    if-eqz v8, :cond_3a0

    goto :goto_39e

    :cond_39c
    if-eqz v7, :cond_3a0

    .line 290
    :goto_39e
    move v11, v2

    goto :goto_3a1

    :cond_3a0
    move v11, v3

    :goto_3a1
    move v2, v11

    .line 291
    .local v2, "physicalLinkState":I
    iget v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    if-eq v3, v2, :cond_3b3

    .line 292
    iput v2, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    .line 293
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget v9, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mPhysicalLinkState:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 295
    :cond_3b3
    if-eqz v6, :cond_3c8

    if-nez v7, :cond_3c8

    .line 301
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v3, :cond_3c0

    .line 302
    const-string v3, "onDataStateChanged: Data activity DORMANT. stopNetStatePoll"

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 304
    :cond_3c0
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v9, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStopNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    goto :goto_3f1

    .line 306
    :cond_3c8
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v3, :cond_3e8

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isAnyDataCallDormant = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 311
    :cond_3e8
    if-eqz v7, :cond_3f1

    .line 312
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    sget-object v9, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendStartNetStatPoll(Lcom/android/internal/telephony/DctConstants$Activity;)V

    .line 317
    .end local v0    # "isPhysicalLinkStateFocusingOnInternetData":Z
    .end local v2    # "physicalLinkState":I
    :cond_3f1
    :goto_3f1
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v0, :cond_411

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataStateChanged: dcsToRetry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " apnsToCleanup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 323
    :cond_411
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_415
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_427

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 324
    .local v2, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 325
    .end local v2    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_415

    .line 328
    :cond_427
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 329
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    sget-boolean v3, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->DBG:Z

    if-eqz v3, :cond_451

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDataStateChanged: send EVENT_LOST_CONNECTION dc.mTag="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;->log(Ljava/lang/String;)V

    .line 330
    :cond_451
    const v3, 0x40009

    iget v9, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(II)V

    .line 331
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_42b

    .line 334
    :cond_45a
    return-void

    .line 97
    .end local v4    # "dcsToRetry":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v5    # "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .end local v6    # "isAnyDataCallDormant":Z
    .end local v7    # "isAnyDataCallActive":Z
    .end local v8    # "isInternetDataCallActive":Z
    .end local v17    # "dcListActiveByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DataConnection;>;"
    .end local v18    # "dataCallResponseListByCid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/telephony/data/DataCallResponse;>;"
    :catchall_45b
    move-exception v0

    :try_start_45c
    monitor-exit v2
    :try_end_45d
    .catchall {:try_start_45c .. :try_end_45d} :catchall_45b

    throw v0
.end method
