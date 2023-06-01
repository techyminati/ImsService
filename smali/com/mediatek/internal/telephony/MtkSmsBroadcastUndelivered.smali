.class public Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;
.super Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.source "MtkSmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    }
.end annotation


# static fields
.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtkSmsBroadcastUndelivered"

.field private static instance:Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 87
    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    const-string v9, "display_originating_addr"

    const-string v10, "sub_id"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private static broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 8
    .param p0, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    .line 250
    .local v0, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 251
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    const-string v3, "broadcastSms: ignoring message; no phone found for subId "

    const-string v4, "MtkSmsBroadcastUndelivered"

    if-nez v2, :cond_29

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 255
    :cond_29
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 256
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_4a

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/Phone;->getInboundSmsHandler(Z)Lcom/android/internal/telephony/InboundSmsHandler;

    move-result-object v3

    .line 262
    .local v3, "handler":Lcom/android/internal/telephony/InboundSmsHandler;
    if-eqz v3, :cond_59

    .line 263
    const/4 v4, 0x2

    invoke-virtual {v3, v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_76

    .line 265
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null handler for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " format, can\'t deliver."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_76
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p2, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 107
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->instance:Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    if-nez v0, :cond_12

    .line 108
    const-string v0, "MtkSmsBroadcastUndelivered"

    const-string v1, " call initialize"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->instance:Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;

    .line 117
    :cond_12
    const/4 v0, 0x6

    if-eqz p1, :cond_18

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    .line 120
    :cond_18
    if-eqz p2, :cond_1d

    .line 121
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    .line 123
    :cond_1d
    return-void
.end method

.method public static scanRawTable(Landroid/content/Context;J)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldMessageTimestamp"    # J

    .line 134
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;ZJ)V

    .line 135
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;ZJ)V

    .line 136
    return-void
.end method

.method private static scanRawTable(Landroid/content/Context;ZJ)V
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCurrentFormat3gpp2"    # Z
    .param p2, "oldMessageTimestamp"    # J

    .line 140
    move/from16 v1, p1

    const-string v2, " ms"

    const-string v3, "finished scanning raw table in "

    const-string v4, "MtkSmsBroadcastUndelivered"

    const-string v0, "scanning raw table for undelivered messages"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 142
    .local v5, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 143
    .local v13, "contentResolver":Landroid/content/ContentResolver;
    new-instance v0, Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    move-object v14, v0

    .line 145
    .local v14, "multiPartReceivedCount":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(I)V

    move-object v15, v0

    .line 146
    .local v15, "oldMultiPartMessages":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;>;"
    const/16 v16, 0x0

    .line 149
    .local v16, "cursor":Landroid/database/Cursor;
    const-wide/32 v17, 0xf4240

    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted = 0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_31} :catch_1bf
    .catchall {:try_start_27 .. :try_end_31} :catchall_1bd

    .line 150
    const-string v19, " AND (destination_port & 262144=262144)"

    const-string v20, " AND (destination_port & 131072=131072)"

    if-eqz v1, :cond_3a

    move-object/from16 v7, v19

    goto :goto_3c

    .line 151
    :cond_3a
    move-object/from16 v7, v20

    :goto_3c
    :try_start_3c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "nonDeleteWhere":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v9, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4e
    .catch Landroid/database/SQLException; {:try_start_3c .. :try_end_4e} :catch_1bf
    .catchall {:try_start_3c .. :try_end_4e} :catchall_1bd

    move-object v7, v0

    .line 154
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_78

    .line 155
    :try_start_51
    const-string v0, "error getting pending message cursor"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_56} :catch_1b9
    .catchall {:try_start_51 .. :try_end_56} :catchall_1b5

    .line 235
    if-eqz v7, :cond_5b

    .line 236
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    div-long v8, v8, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_78
    :goto_78
    :try_start_78
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_7c
    .catch Landroid/database/SQLException; {:try_start_78 .. :try_end_7c} :catch_1b9
    .catchall {:try_start_78 .. :try_end_7c} :catchall_1b5

    if-eqz v0, :cond_f6

    .line 163
    :try_start_7e
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v8, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    .line 164
    .local v0, "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    move-object/from16 v8, p0

    invoke-virtual {v0, v8, v7, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v9

    check-cast v9, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_94} :catch_e0
    .catch Landroid/database/SQLException; {:try_start_7e .. :try_end_94} :catch_1b9
    .catchall {:try_start_7e .. :try_end_94} :catchall_1b5

    .line 169
    .end local v0    # "telephonyComponentFactory":Lcom/android/internal/telephony/TelephonyComponentFactory;
    .local v9, "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    nop

    .line 171
    :try_start_95
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_a0

    .line 173
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    goto :goto_df

    .line 175
    :cond_a0
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v0, v9}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;)V

    .line 176
    .local v0, "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 177
    .local v12, "receivedCount":Ljava/lang/Integer;
    if-nez v12, :cond_c0

    .line 178
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getTimestamp()J

    move-result-wide v21

    cmp-long v11, v21, p2

    if-gez v11, :cond_df

    .line 182
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 185
    :cond_c0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v11, v16, 0x1

    .line 186
    .local v11, "newCount":I
    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;->getMessageCount()I

    move-result v8

    if-ne v11, v8, :cond_d8

    .line 189
    const-string v8, "found complete multi-part message"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v9}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 192
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_df

    .line 194
    :cond_d8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v0    # "reference":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v9    # "tracker":Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;
    .end local v11    # "newCount":I
    .end local v12    # "receivedCount":Ljava/lang/Integer;
    :cond_df
    :goto_df
    goto :goto_78

    .line 166
    :catch_e0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error loading SmsTracker: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto :goto_78

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 205
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v8, 0x0

    .line 208
    .local v8, "phoneId":I
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_100
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;

    .line 210
    .local v11, "message":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "address=? AND reference_number=? AND count=? AND deleted=0 AND sub_id=?"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    if-eqz v1, :cond_11d

    move-object/from16 v9, v19

    goto :goto_11f

    .line 212
    :cond_11d
    move-object/from16 v9, v20

    :goto_11f
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "where":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 214
    invoke-virtual {v11}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v13, v12, v9, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 215
    .local v1, "rows":I
    if-nez v1, :cond_13a

    .line 216
    const-string v12, "No rows were deleted from raw table!"

    invoke-static {v4, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v9

    goto :goto_15f

    .line 218
    :cond_13a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v9

    .end local v9    # "where":Ljava/lang/String;
    .local v21, "where":Ljava/lang/String;
    const-string v9, "Deleted "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rows from raw table for incomplete "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " part message"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_15f
    if-lez v1, :cond_181

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v9

    .line 224
    .local v9, "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    iget-object v12, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    move-object/from16 v22, v10

    .end local v10    # "nonDeleteWhere":Ljava/lang/String;
    .local v22, "nonDeleteWhere":Ljava/lang/String;
    iget v10, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v9, v8, v12, v1, v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V

    .line 226
    if-eqz v0, :cond_17e

    .line 227
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v10

    iget-boolean v12, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    move-object/from16 v23, v0

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .local v23, "phone":Lcom/android/internal/telephony/Phone;
    iget v0, v11, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v10, v12, v1, v0}, Lcom/android/internal/telephony/metrics/SmsStats;->onDroppedIncomingMultipartSms(ZII)V
    :try_end_17d
    .catch Landroid/database/SQLException; {:try_start_95 .. :try_end_17d} :catch_1b9
    .catchall {:try_start_95 .. :try_end_17d} :catchall_1b5

    goto :goto_185

    .line 226
    .end local v23    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_17e
    move-object/from16 v23, v0

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v23    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_185

    .line 222
    .end local v9    # "metrics":Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .end local v22    # "nonDeleteWhere":Ljava/lang/String;
    .end local v23    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v10    # "nonDeleteWhere":Ljava/lang/String;
    :cond_181
    move-object/from16 v23, v0

    move-object/from16 v22, v10

    .line 231
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "rows":I
    .end local v10    # "nonDeleteWhere":Ljava/lang/String;
    .end local v11    # "message":Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered$SmsReferenceKey;
    .end local v21    # "where":Ljava/lang/String;
    .restart local v22    # "nonDeleteWhere":Ljava/lang/String;
    .restart local v23    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_185
    move/from16 v1, p1

    move-object/from16 v9, v16

    move-object/from16 v10, v22

    move-object/from16 v0, v23

    goto/16 :goto_100

    .line 208
    .end local v22    # "nonDeleteWhere":Ljava/lang/String;
    .end local v23    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v10    # "nonDeleteWhere":Ljava/lang/String;
    :cond_18f
    move-object/from16 v23, v0

    move-object/from16 v22, v10

    .line 235
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "phoneId":I
    .end local v10    # "nonDeleteWhere":Ljava/lang/String;
    if-eqz v7, :cond_198

    .line 236
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v5

    div-long v8, v8, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto :goto_1e9

    .line 235
    :catchall_1b5
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_1ea

    .line 232
    :catch_1b9
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_1c0

    .line 235
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_1bd
    move-exception v0

    goto :goto_1ea

    .line 232
    :catch_1bf
    move-exception v0

    .line 233
    .local v0, "e":Landroid/database/SQLException;
    :goto_1c0
    :try_start_1c0
    const-string v1, "error reading pending SMS messages"

    invoke-static {v4, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c5
    .catchall {:try_start_1c0 .. :try_end_1c5} :catchall_1bd

    .line 235
    nop

    .end local v0    # "e":Landroid/database/SQLException;
    if-eqz v16, :cond_1cb

    .line 236
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    div-long v7, v7, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object/from16 v7, v16

    .line 241
    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :goto_1e9
    return-void

    .line 235
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :goto_1ea
    if-eqz v16, :cond_1ef

    .line 236
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    div-long v7, v7, v17

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    throw v0
.end method
