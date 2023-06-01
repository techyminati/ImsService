.class public Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
.super Ljava/lang/Object;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrDumpManager"
.end annotation


# instance fields
.field public mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/server/anr/AnrManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/anr/AnrManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 1092
    iput-object p1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z
    .registers 5
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1141
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    monitor-enter v0

    .line 1142
    if-eqz p1, :cond_1c

    :try_start_5
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    .line 1143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1144
    # invokes: Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->isValid()Z
    invoke-static {p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->access$200(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1145
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1147
    :cond_1c
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1149
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public cancelDump(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)V
    .registers 5
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1096
    if-eqz p1, :cond_23

    iget v0, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_23

    .line 1100
    :cond_8
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    monitor-enter v0

    .line 1101
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1102
    .local v1, "value":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    if-eqz v1, :cond_1e

    .line 1103
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCancelled:Z

    .line 1105
    .end local v1    # "value":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    :cond_1e
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_20

    throw v1

    .line 1097
    :cond_23
    :goto_23
    return-void
.end method

.method public dumpAnrDebugInfo(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;ZZ)V
    .registers 8
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .param p2, "onlyDumpSelf"    # Z
    .param p3, "isSilentANR"    # Z

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAnrDebugInfo begin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onlyDumpSelf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSilentANR = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AnrManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    if-nez p1, :cond_29

    .line 1157
    return-void

    .line 1161
    :cond_29
    :try_start_29
    invoke-direct {p0, p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1165
    :cond_44
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->dumpAnrDebugInfoLocked(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;ZZ)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_47} :catch_48

    .line 1168
    goto :goto_4c

    .line 1166
    :catch_48
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpAnrDebugInfo end: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , isSilentANR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void
.end method

.method protected dumpAnrDebugInfoLocked(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;ZZ)V
    .registers 33
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .param p2, "onlyDumpSelf"    # Z
    .param p3, "isSilentANR"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p1

    .line 1176
    :try_start_9
    const-string v0, "AnrManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpAnrDebugInfoLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", onlyDumpSelf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSilentANR = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1179
    monitor-exit p1

    return-void

    .line 1182
    :cond_37
    iget v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    move v5, v0

    .line 1183
    .local v5, "appPid":I
    iget v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppUid:I

    move v6, v0

    .line 1184
    .local v6, "uid":I
    iget v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppUserid:I

    move v7, v0

    .line 1185
    .local v7, "userId":I
    iget v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentAppPid:I

    move v8, v0

    .line 1186
    .local v8, "parentAppPid":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 1187
    .local v15, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v9, 0x14

    invoke-direct {v0, v9}, Landroid/util/SparseArray;-><init>(I)V

    move-object v14, v0

    .line 1188
    .local v14, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1189
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v12, v0

    .line 1200
    .local v12, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    const/4 v0, 0x1

    if-nez v3, :cond_158

    if-nez v4, :cond_158

    .line 1204
    move v9, v5

    .line 1205
    .local v9, "parentPid":I
    if-lez v8, :cond_6c

    move v9, v8

    .line 1206
    :cond_6c
    if-eq v9, v5, :cond_75

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    :cond_75
    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$400(Lcom/mediatek/server/anr/AnrManagerService;)I

    move-result v10

    if-eq v10, v5, :cond_92

    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$400(Lcom/mediatek/server/anr/AnrManagerService;)I

    move-result v10

    if-eq v10, v9, :cond_92

    .line 1208
    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$400(Lcom/mediatek/server/anr/AnrManagerService;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_92
    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    monitor-enter v10
    :try_end_99
    .catchall {:try_start_9 .. :try_end_99} :catchall_471

    .line 1212
    :try_start_99
    iget-object v11, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mProcessListField:Ljava/lang/reflect/Field;
    invoke-static {v11}, Lcom/mediatek/server/anr/AnrManagerService;->access$500(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v11

    iget-object v13, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v13}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessList;

    .line 1213
    .local v11, "mProcessList":Lcom/android/server/am/ProcessList;
    iget-object v13, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1214
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mLruProcessesField:Ljava/lang/reflect/Field;
    invoke-static {v13}, Lcom/mediatek/server/anr/AnrManagerService;->access$600(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1216
    .local v13, "mLruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    .local v0, "i":I
    :goto_bf
    if-ltz v0, :cond_147

    .line 1217
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ProcessRecord;
    :try_end_c7
    .catchall {:try_start_99 .. :try_end_c7} :catchall_14f

    move-object/from16 v17, v16

    .line 1218
    .local v17, "r":Lcom/android/server/am/ProcessRecord;
    move/from16 v16, v8

    move-object/from16 v8, v17

    .end local v17    # "r":Lcom/android/server/am/ProcessRecord;
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    .local v16, "parentAppPid":I
    if-eqz v8, :cond_139

    move-object/from16 v17, v11

    .end local v11    # "mProcessList":Lcom/android/server/am/ProcessList;
    .local v17, "mProcessList":Lcom/android/server/am/ProcessList;
    :try_start_d1
    iget-object v11, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1219
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mThreadField:Ljava/lang/reflect/Field;
    invoke-static {v11}, Lcom/mediatek/server/anr/AnrManagerService;->access$700(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/IApplicationThread;

    if-eqz v11, :cond_132

    .line 1220
    iget-object v11, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mPidField:Ljava/lang/reflect/Field;
    invoke-static {v11}, Lcom/mediatek/server/anr/AnrManagerService;->access$800(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_ef
    .catchall {:try_start_d1 .. :try_end_ef} :catchall_135

    .line 1221
    .local v11, "pid":I
    if-lez v11, :cond_12f

    if-eq v11, v5, :cond_12f

    if-eq v11, v9, :cond_12f

    move/from16 v18, v9

    .end local v9    # "parentPid":I
    .local v18, "parentPid":I
    :try_start_f7
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1222
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$400(Lcom/mediatek/server/anr/AnrManagerService;)I

    move-result v9

    if-eq v11, v9, :cond_13d

    .line 1223
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mPersistentField:Ljava/lang/reflect/Field;
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$900(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_119

    .line 1224
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 1225
    :cond_119
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v9

    if-eqz v9, :cond_129

    .line 1226
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    .line 1228
    :cond_129
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13d

    .line 1221
    .end local v18    # "parentPid":I
    .restart local v9    # "parentPid":I
    :cond_12f
    move/from16 v18, v9

    .end local v9    # "parentPid":I
    .restart local v18    # "parentPid":I
    goto :goto_13d

    .line 1219
    .end local v11    # "pid":I
    .end local v18    # "parentPid":I
    .restart local v9    # "parentPid":I
    :cond_132
    move/from16 v18, v9

    .end local v9    # "parentPid":I
    .restart local v18    # "parentPid":I
    goto :goto_13d

    .line 1233
    .end local v0    # "i":I
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "mLruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v17    # "mProcessList":Lcom/android/server/am/ProcessList;
    .end local v18    # "parentPid":I
    .restart local v9    # "parentPid":I
    :catchall_135
    move-exception v0

    move/from16 v18, v9

    .end local v9    # "parentPid":I
    .restart local v18    # "parentPid":I
    goto :goto_154

    .line 1218
    .end local v18    # "parentPid":I
    .restart local v0    # "i":I
    .restart local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "parentPid":I
    .local v11, "mProcessList":Lcom/android/server/am/ProcessList;
    .restart local v13    # "mLruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_139
    move/from16 v18, v9

    move-object/from16 v17, v11

    .line 1216
    .end local v8    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "parentPid":I
    .end local v11    # "mProcessList":Lcom/android/server/am/ProcessList;
    .restart local v17    # "mProcessList":Lcom/android/server/am/ProcessList;
    .restart local v18    # "parentPid":I
    :cond_13d
    :goto_13d
    add-int/lit8 v0, v0, -0x1

    move/from16 v8, v16

    move-object/from16 v11, v17

    move/from16 v9, v18

    goto/16 :goto_bf

    .end local v16    # "parentAppPid":I
    .end local v17    # "mProcessList":Lcom/android/server/am/ProcessList;
    .end local v18    # "parentPid":I
    .local v8, "parentAppPid":I
    .restart local v9    # "parentPid":I
    .restart local v11    # "mProcessList":Lcom/android/server/am/ProcessList;
    :cond_147
    move/from16 v16, v8

    move/from16 v18, v9

    move-object/from16 v17, v11

    .line 1233
    .end local v0    # "i":I
    .end local v8    # "parentAppPid":I
    .end local v9    # "parentPid":I
    .end local v11    # "mProcessList":Lcom/android/server/am/ProcessList;
    .end local v13    # "mLruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v16    # "parentAppPid":I
    .restart local v18    # "parentPid":I
    monitor-exit v10

    goto :goto_15a

    .end local v16    # "parentAppPid":I
    .end local v18    # "parentPid":I
    .restart local v8    # "parentAppPid":I
    .restart local v9    # "parentPid":I
    :catchall_14f
    move-exception v0

    move/from16 v16, v8

    move/from16 v18, v9

    .end local v8    # "parentAppPid":I
    .end local v9    # "parentPid":I
    .restart local v16    # "parentAppPid":I
    .restart local v18    # "parentPid":I
    :goto_154
    monitor-exit v10
    :try_end_155
    .catchall {:try_start_f7 .. :try_end_155} :catchall_156

    .end local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    .end local p1    # "dumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .end local p2    # "onlyDumpSelf":Z
    .end local p3    # "isSilentANR":Z
    :try_start_155
    throw v0

    .restart local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    .restart local p1    # "dumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .restart local p2    # "onlyDumpSelf":Z
    .restart local p3    # "isSilentANR":Z
    :catchall_156
    move-exception v0

    goto :goto_154

    .line 1203
    .end local v16    # "parentAppPid":I
    .end local v18    # "parentPid":I
    .restart local v8    # "parentAppPid":I
    :cond_158
    move/from16 v16, v8

    .line 1252
    .end local v8    # "parentAppPid":I
    .restart local v16    # "parentAppPid":I
    :goto_15a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1253
    .local v8, "remotePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    if-eq v5, v0, :cond_166

    .line 1254
    # invokes: Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    invoke-static {v5, v8, v14}, Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;->access$1000(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 1258
    :cond_166
    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    move-object v11, v9

    .line 1261
    .local v11, "annotation":Ljava/lang/String;
    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_1e9

    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1e9

    .line 1262
    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1263
    invoke-virtual {v12, v9, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v9

    .line 1265
    .local v9, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    if-eqz v9, :cond_186

    .line 1266
    iget-object v13, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v9}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v0

    # setter for: Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F
    invoke-static {v13, v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$1102(Lcom/mediatek/server/anr/AnrManagerService;F)F

    .line 1268
    :cond_186
    iget-object v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, "codePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1e6

    .line 1271
    const-string v13, "AnrManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "appPid":I
    .local v19, "appPid":I
    const-string v5, "App crashed on incremental package "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " which is "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1272
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F
    invoke-static {v5}, Lcom/mediatek/server/anr/AnrManagerService;->access$1100(Lcom/mediatek/server/anr/AnrManagerService;)F

    move-result v5

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v5, v5, v18

    float-to-int v5, v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "% loaded."

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1271
    invoke-static {v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v5, "incremental"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 1276
    .local v5, "incrementalService":Landroid/os/IBinder;
    if-eqz v5, :cond_1e3

    .line 1277
    new-instance v10, Landroid/os/incremental/IncrementalManager;

    .line 1278
    invoke-static {v5}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 1279
    .local v10, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    iget-object v13, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    move-object/from16 v20, v5

    .end local v5    # "incrementalService":Landroid/os/IBinder;
    .local v20, "incrementalService":Landroid/os/IBinder;
    invoke-virtual {v10, v0}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v5

    # setter for: Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;
    invoke-static {v13, v5}, Lcom/mediatek/server/anr/AnrManagerService;->access$1202(Lcom/mediatek/server/anr/AnrManagerService;Landroid/os/incremental/IncrementalMetrics;)Landroid/os/incremental/IncrementalMetrics;

    goto :goto_1eb

    .line 1276
    .end local v10    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    .end local v20    # "incrementalService":Landroid/os/IBinder;
    .restart local v5    # "incrementalService":Landroid/os/IBinder;
    :cond_1e3
    move-object/from16 v20, v5

    .end local v5    # "incrementalService":Landroid/os/IBinder;
    .restart local v20    # "incrementalService":Landroid/os/IBinder;
    goto :goto_1eb

    .line 1269
    .end local v19    # "appPid":I
    .end local v20    # "incrementalService":Landroid/os/IBinder;
    .local v5, "appPid":I
    :cond_1e6
    move/from16 v19, v5

    .end local v5    # "appPid":I
    .restart local v19    # "appPid":I
    goto :goto_1eb

    .line 1261
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v9    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v19    # "appPid":I
    .restart local v5    # "appPid":I
    :cond_1e9
    move/from16 v19, v5

    .line 1285
    .end local v5    # "appPid":I
    .restart local v19    # "appPid":I
    :goto_1eb
    iget-object v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    move-object v5, v0

    .line 1286
    .local v5, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1287
    const-string v9, "ANR in "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    if-eqz v9, :cond_20f

    .line 1289
    const-string v9, " ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    .line 1290
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :cond_20f
    const-string v9, ", time="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1293
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    if-eqz v11, :cond_22d

    .line 1295
    const-string v9, "Reason: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    :cond_22d
    iget v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentAppPid:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_247

    iget v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentAppPid:I

    iget v10, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    if-eq v9, v10, :cond_247

    .line 1299
    const-string v9, "Parent: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 1300
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    .line 1301
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_247
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$1200(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v9

    if-eqz v9, :cond_266

    .line 1306
    const-string v9, "Package is "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$1100(Lcom/mediatek/server/anr/AnrManagerService;)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "% loaded.\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_266
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$1300(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v9

    move-object v10, v9

    .line 1317
    .local v10, "anrController":Landroid/app/AnrController;
    if-eqz v10, :cond_2c4

    .line 1318
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$1300(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1319
    .local v9, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {v13}, Lcom/mediatek/server/anr/AnrManagerService;->access$1300(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1320
    .local v13, "aInfo_uid":I
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    move/from16 v18, v6

    move/from16 v20, v7

    .end local v6    # "uid":I
    .end local v7    # "userId":I
    .local v18, "uid":I
    .local v20, "userId":I
    invoke-interface {v10, v9, v13}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v6

    # setter for: Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J
    invoke-static {v0, v6, v7}, Lcom/mediatek/server/anr/AnrManagerService;->access$1402(Lcom/mediatek/server/anr/AnrManagerService;J)J

    .line 1323
    invoke-interface {v10, v9, v13}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 1324
    const-string v0, "AnrManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR delay of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    .end local v10    # "anrController":Landroid/app/AnrController;
    .end local v11    # "annotation":Ljava/lang/String;
    .local v21, "annotation":Ljava/lang/String;
    .local v22, "anrController":Landroid/app/AnrController;
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J
    invoke-static {v7}, Lcom/mediatek/server/anr/AnrManagerService;->access$1400(Lcom/mediatek/server/anr/AnrManagerService;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms started for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cc

    .line 1317
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "aInfo_uid":I
    .end local v18    # "uid":I
    .end local v20    # "userId":I
    .end local v21    # "annotation":Ljava/lang/String;
    .end local v22    # "anrController":Landroid/app/AnrController;
    .restart local v6    # "uid":I
    .restart local v7    # "userId":I
    .restart local v10    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "annotation":Ljava/lang/String;
    :cond_2c4
    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v22, v10

    move-object/from16 v21, v11

    .line 1327
    .end local v6    # "uid":I
    .end local v7    # "userId":I
    .end local v10    # "anrController":Landroid/app/AnrController;
    .end local v11    # "annotation":Ljava/lang/String;
    .restart local v18    # "uid":I
    .restart local v20    # "userId":I
    .restart local v21    # "annotation":Ljava/lang/String;
    .restart local v22    # "anrController":Landroid/app/AnrController;
    :goto_2cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1328
    .local v6, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v7, v0

    .line 1331
    .local v7, "processStats":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_2e8

    .line 1332
    monitor-exit p1

    return-void

    .line 1336
    :cond_2e8
    const/4 v0, 0x0

    .line 1337
    .local v0, "nativeProcs":[Ljava/lang/String;
    if-nez v4, :cond_2f6

    if-eqz v3, :cond_2ee

    goto :goto_2f6

    .line 1345
    :cond_2ee
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/server/anr/AnrManagerService;->access$1500()[Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v23, v0

    goto :goto_31b

    .line 1338
    :cond_2f6
    :goto_2f6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2f7
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/server/anr/AnrManagerService;->access$1500()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_319

    .line 1339
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/server/anr/AnrManagerService;->access$1500()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    iget-object v11, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_316

    .line 1340
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    iget-object v10, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v10, v11, v13

    move-object v0, v11

    .line 1341
    goto :goto_319

    .line 1338
    :cond_316
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f7

    .end local v9    # "i":I
    :cond_319
    :goto_319
    move-object/from16 v23, v0

    .line 1348
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v23, "nativeProcs":[Ljava/lang/String;
    :goto_31b
    if-nez v23, :cond_31f

    const/4 v9, 0x0

    goto :goto_323

    :cond_31f
    invoke-static/range {v23 .. v23}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v9

    :goto_323
    move-object v11, v9

    .line 1349
    .local v11, "pids":[I
    const/4 v9, 0x0

    .line 1351
    .local v9, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_33f

    .line 1352
    new-instance v10, Ljava/util/ArrayList;

    array-length v13, v11

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v10

    .line 1353
    array-length v10, v11

    const/4 v13, 0x0

    :goto_330
    if-ge v13, v10, :cond_33f

    aget v24, v11, v13

    .line 1354
    .local v24, "i":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    nop

    .end local v24    # "i":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_330

    .line 1358
    :cond_33f
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v24, v9

    .end local v9    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_345
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_37f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1359
    .local v9, "remotePid":Ljava/lang/Integer;
    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/mediatek/server/anr/AnrManagerService;->isJavaProcess(I)Z

    move-result v10

    if-eqz v10, :cond_367

    .line 1360
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_37e

    .line 1361
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37e

    .line 1364
    :cond_367
    if-nez v24, :cond_371

    .line 1365
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v10

    goto :goto_373

    .line 1364
    :cond_371
    move-object/from16 v10, v24

    .line 1367
    .end local v24    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_373
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_37c

    .line 1368
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    .end local v9    # "remotePid":Ljava/lang/Integer;
    :cond_37c
    move-object/from16 v24, v10

    .end local v10    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_37e
    :goto_37e
    goto :goto_345

    .line 1373
    :cond_37f
    const-string v0, "AnrManager"

    const-string v9, "dumpStackTraces begin!"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 1375
    .local v13, "tracesFileException":Ljava/io/StringWriter;
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    .line 1376
    if-eqz v4, :cond_394

    const/4 v10, 0x0

    goto :goto_395

    :cond_394
    move-object v10, v7

    .line 1377
    :goto_395
    if-eqz v4, :cond_39a

    const/16 v25, 0x0

    goto :goto_39c

    :cond_39a
    move-object/from16 v25, v14

    :goto_39c
    iget-object v9, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1378
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->offsets:[J
    invoke-static {v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$1700(Lcom/mediatek/server/anr/AnrManagerService;)[J

    move-result-object v26

    .line 1375
    move-object v9, v15

    move-object/from16 v27, v11

    .end local v11    # "pids":[I
    .local v27, "pids":[I
    move-object/from16 v11, v25

    move-object/from16 v25, v12

    .end local v12    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .local v25, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v12, v24

    move-object/from16 v28, v14

    .end local v14    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v28, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v14, v26

    move-object/from16 v26, v15

    .end local v15    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v15, v21

    invoke-static/range {v9 .. v15}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    # setter for: Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;
    invoke-static {v0, v9}, Lcom/mediatek/server/anr/AnrManagerService;->access$1602(Lcom/mediatek/server/anr/AnrManagerService;Ljava/io/File;)Ljava/io/File;

    .line 1379
    const-string v0, "AnrManager"

    const-string v9, "dumpStackTraces end!"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_3c9

    .line 1382
    monitor-exit p1

    return-void

    .line 1385
    :cond_3c9
    const/4 v9, 0x0

    .line 1386
    .local v9, "cpuInfo":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mMonitorCpuUsageField:Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$1900(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAppProfiler:Ljava/lang/Class;
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$1800(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44b

    .line 1387
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    .line 1388
    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mProcessCpuTrackerField:Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$2000(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v10, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v10}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker;

    move-object v10, v0

    .line 1389
    .local v10, "mProcessCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    monitor-enter v10
    :try_end_3f8
    .catchall {:try_start_155 .. :try_end_3f8} :catchall_471

    .line 1390
    :try_start_3f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-virtual {v11}, Lcom/mediatek/server/anr/AnrManagerService;->getAndroidTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnrTime:J

    .line 1391
    invoke-virtual {v10, v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 1393
    monitor-exit v10
    :try_end_428
    .catchall {:try_start_3f8 .. :try_end_428} :catchall_448

    .line 1394
    :try_start_428
    iget-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mUpdateCpuStatsNow:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/mediatek/server/anr/AnrManagerService;->access$2100(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v11}, Lcom/mediatek/server/anr/AnrManagerService;->access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_447
    .catchall {:try_start_428 .. :try_end_447} :catchall_471

    goto :goto_44b

    .line 1393
    :catchall_448
    move-exception v0

    :try_start_449
    monitor-exit v10
    :try_end_44a
    .catchall {:try_start_449 .. :try_end_44a} :catchall_448

    .end local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    .end local p1    # "dumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .end local p2    # "onlyDumpSelf":Z
    .end local p3    # "isSilentANR":Z
    :try_start_44a
    throw v0

    .line 1400
    .end local v10    # "mProcessCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    .restart local p1    # "dumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .restart local p2    # "onlyDumpSelf":Z
    .restart local p3    # "isSilentANR":Z
    :cond_44b
    :goto_44b
    invoke-virtual {v13}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1401
    iget-wide v10, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnrTime:J

    invoke-virtual {v7, v10, v11}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    const-string v0, "AnrManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->isDumpable(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z

    move-result v0

    if-nez v0, :cond_46c

    .line 1406
    monitor-exit p1

    return-void

    .line 1409
    :cond_46c
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCompleted:Z

    .line 1410
    .end local v5    # "info":Ljava/lang/StringBuilder;
    .end local v6    # "report":Ljava/lang/StringBuilder;
    .end local v7    # "processStats":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v8    # "remotePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "cpuInfo":Ljava/lang/String;
    .end local v13    # "tracesFileException":Ljava/io/StringWriter;
    .end local v16    # "parentAppPid":I
    .end local v18    # "uid":I
    .end local v19    # "appPid":I
    .end local v20    # "userId":I
    .end local v21    # "annotation":Ljava/lang/String;
    .end local v22    # "anrController":Landroid/app/AnrController;
    .end local v23    # "nativeProcs":[Ljava/lang/String;
    .end local v24    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "pids":[I
    .end local v28    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    monitor-exit p1

    .line 1411
    return-void

    .line 1410
    :catchall_471
    move-exception v0

    monitor-exit p1
    :try_end_473
    .catchall {:try_start_44a .. :try_end_473} :catchall_471

    throw v0
.end method

.method public removeDumpRecord(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)V
    .registers 5
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1109
    if-eqz p1, :cond_1e

    iget v0, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_1e

    .line 1113
    :cond_8
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    monitor-enter v0

    .line 1114
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    iget v2, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1115
    monitor-exit v0

    .line 1116
    return-void

    .line 1115
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v1

    .line 1110
    :cond_1e
    :goto_1e
    return-void
.end method

.method public startAsyncDump(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;Z)V
    .registers 11
    .param p1, "dumpRecord"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .param p2, "isSilentANR"    # Z

    .line 1119
    const-string v0, "AnrManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncDump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSilentANR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    if-eqz p1, :cond_6b

    iget v0, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    goto :goto_6b

    .line 1124
    :cond_26
    iget v0, p1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    .line 1125
    .local v0, "appPid":I
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 1126
    :try_start_2b
    iget-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1127
    monitor-exit v1

    return-void

    .line 1130
    :cond_39
    iget-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;
    invoke-static {v2}, Lcom/mediatek/server/anr/AnrManagerService;->access$100(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1134
    .local v2, "msg":Landroid/os/Message;
    if-eqz p2, :cond_52

    const/4 v3, 0x1

    goto :goto_53

    :cond_52
    const/4 v3, 0x0

    :goto_53
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1135
    iget-object v3, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    # getter for: Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;
    invoke-static {v3}, Lcom/mediatek/server/anr/AnrManagerService;->access$100(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    move-result-object v3

    .line 1136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    .line 1135
    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1137
    nop

    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1

    .line 1138
    return-void

    .line 1137
    :catchall_68
    move-exception v2

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_68

    throw v2

    .line 1121
    .end local v0    # "appPid":I
    :cond_6b
    :goto_6b
    return-void
.end method
