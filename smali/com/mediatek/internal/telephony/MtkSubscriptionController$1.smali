.class Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 124
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 128
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 132
    .local v2, "identity":J
    :try_start_12
    iget-object v0, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 133
    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$000(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$100(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_121

    move-object v4, v0

    .line 135
    .local v4, "subLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    nop

    .line 138
    if-eqz v4, :cond_126

    .line 140
    :try_start_31
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 141
    .local v5, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 142
    .local v6, "subId":I
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 144
    .local v7, "slotId":I
    iget-object v8, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$200(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "simCarrierName":Ljava/lang/String;
    iget-object v9, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$300(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "simNumeric":Ljava/lang/String;
    const-string v10, "20404"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6e

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 152
    const-string v10, ""

    .local v10, "simMvnoName":Ljava/lang/String;
    goto :goto_7d

    .line 154
    .end local v10    # "simMvnoName":Ljava/lang/String;
    :cond_6e
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    .line 155
    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$400(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;

    move-result-object v11

    .line 154
    const/4 v12, 0x1

    invoke-virtual {v10, v6, v9, v12, v11}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 157
    .restart local v10    # "simMvnoName":Ljava/lang/String;
    :goto_7d
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[mSubReceiver] simMvnoName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 158
    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->ENGDEBUG:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$500()Z

    move-result v11

    if-eqz v11, :cond_b7

    .line 159
    iget-object v11, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[mSubReceiver]- simNumeric: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", simMvnoName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$600(Lcom/mediatek/internal/telephony/MtkSubscriptionController;Ljava/lang/String;)V

    .line 162
    :cond_b7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bf

    .line 163
    move-object v11, v10

    .local v11, "nameToSet":Ljava/lang/String;
    goto :goto_de

    .line 165
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_bf
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c7

    .line 166
    move-object v11, v8

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto :goto_de

    .line 168
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_c7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CARD "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 173
    .restart local v11    # "nameToSet":Ljava/lang/String;
    :goto_de
    iget-object v12, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    # getter for: Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->access$700(Lcom/mediatek/internal/telephony/MtkSubscriptionController;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 174
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v13, "value":Landroid/content/ContentValues;
    const-string v14, "display_name"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v13, v15, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 182
    iget-object v14, v1, Lcom/mediatek/internal/telephony/MtkSubscriptionController$1;->this$0:Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "[mSubReceiver] sim name = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_117} :catch_11c

    .line 183
    .end local v5    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subId":I
    .end local v7    # "slotId":I
    .end local v8    # "simCarrierName":Ljava/lang/String;
    .end local v9    # "simNumeric":Ljava/lang/String;
    .end local v10    # "simMvnoName":Ljava/lang/String;
    .end local v12    # "resolver":Landroid/content/ContentResolver;
    .end local v13    # "value":Landroid/content/ContentValues;
    move-object/from16 v0, v16

    goto/16 :goto_35

    .line 186
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_11b
    goto :goto_126

    .line 184
    :catch_11c
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_126

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "subLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_121
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw v0

    .line 189
    .end local v2    # "identity":J
    :cond_126
    :goto_126
    return-void
.end method
