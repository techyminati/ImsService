.class public Lmediatek/telecom/FormattedLog$Builder;
.super Ljava/lang/Object;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/FormattedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallId:Ljava/lang/String;

.field private mCallNumber:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mExtraMessage:Ljava/lang/StringBuilder;

.field private mOpType:Lmediatek/telecom/FormattedLog$OpType;

.field private mServiceName:Ljava/lang/String;

.field private mStatusInfo:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized appendExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 234
    if-eqz p1, :cond_c

    .line 235
    :try_start_3
    iget-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_c

    .line 233
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 237
    .restart local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_c
    :goto_c
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized buildDebugMsg()Lmediatek/telecom/FormattedLog;
    .registers 6

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 249
    const-string v0, "unknown"

    iput-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 252
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    :cond_9
    new-instance v0, Lmediatek/telecom/FormattedLog;

    const-string v1, "[Debug][%s][%s][%s][%s][%s][%s] %s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mOpType:Lmediatek/telecom/FormattedLog$OpType;

    .line 253
    # invokes: Lmediatek/telecom/FormattedLog;->opTypeToString(Lmediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    invoke-static {v4}, Lmediatek/telecom/FormattedLog;->access$000(Lmediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lmediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmediatek/telecom/FormattedLog$1;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 252
    monitor-exit p0

    return-object v0

    .line 247
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildDumpInfo()Lmediatek/telecom/FormattedLog;
    .registers 8

    monitor-enter p0

    .line 265
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "statusInfo":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 267
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 270
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 277
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    :cond_48
    goto :goto_10

    .line 282
    :cond_49
    iget-object v2, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    if-nez v2, :cond_51

    .line 283
    const-string v2, "unknown"

    iput-object v2, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    .line 286
    :cond_51
    new-instance v2, Lmediatek/telecom/FormattedLog;

    const-string v3, "[Debug][%s][%s][Dump][%s][%s]-%s-%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lmediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lmediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmediatek/telecom/FormattedLog$1;)V
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_7a

    monitor-exit p0

    return-object v2

    .line 264
    .end local v0    # "statusInfo":Ljava/lang/StringBuilder;
    .end local v1    # "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetStatusInfo(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 205
    if-eqz p1, :cond_12

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 206
    iget-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_12

    .line 204
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 208
    .restart local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_12
    :goto_12
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized setActionName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    monitor-enter p0

    .line 148
    :try_start_1
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mAction:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 149
    monitor-exit p0

    return-object p0

    .line 147
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "action":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCallId(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    monitor-enter p0

    .line 178
    :try_start_1
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 179
    monitor-exit p0

    return-object p0

    .line 177
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "id":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCallNumber(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    monitor-enter p0

    .line 160
    if-eqz p1, :cond_18

    :try_start_3
    const-string v0, "conferenceCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 161
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 162
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;

    goto :goto_1a

    .line 164
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    :cond_18
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mCallNumber:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 166
    :goto_1a
    monitor-exit p0

    return-object p0

    .line 159
    .end local p1    # "number":Ljava/lang/String;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCategory(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 2
    .param p1, "category"    # Ljava/lang/String;

    monitor-enter p0

    .line 112
    :try_start_1
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mCategory:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 113
    monitor-exit p0

    return-object p0

    .line 111
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "category":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExtraMessage(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 219
    if-eqz p1, :cond_11

    .line 220
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mExtraMessage:Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_11

    .line 218
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "msg":Ljava/lang/String;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 223
    .restart local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .restart local p1    # "msg":Ljava/lang/String;
    :cond_11
    :goto_11
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized setOpType(Lmediatek/telecom/FormattedLog$OpType;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 2
    .param p1, "type"    # Lmediatek/telecom/FormattedLog$OpType;

    monitor-enter p0

    .line 136
    :try_start_1
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mOpType:Lmediatek/telecom/FormattedLog$OpType;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 137
    monitor-exit p0

    return-object p0

    .line 135
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "type":Lmediatek/telecom/FormattedLog$OpType;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServiceName(Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    monitor-enter p0

    .line 124
    :try_start_1
    iput-object p1, p0, Lmediatek/telecom/FormattedLog$Builder;->mServiceName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 125
    monitor-exit p0

    return-object p0

    .line 123
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "serviceName":Ljava/lang/String;
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/FormattedLog$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 191
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 192
    iget-object v0, p0, Lmediatek/telecom/FormattedLog$Builder;->mStatusInfo:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_1a

    .line 190
    .end local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1

    .line 194
    .restart local p0    # "this":Lmediatek/telecom/FormattedLog$Builder;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object p0
.end method
