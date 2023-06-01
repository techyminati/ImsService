.class public final Lcom/mediatek/server/anr/AnrManagerService;
.super Lcom/mediatek/anr/AnrManagerNative;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;,
        Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;,
        Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;,
        Lcom/mediatek/server/anr/AnrManagerService$BinderWatchdog;,
        Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_SERVICES:Ljava/lang/String; = "com.android.server.am.ActiveServices"

.field private static final ACTIVITY_MANAGER:Ljava/lang/String; = "com.android.server.am.ActivityManagerService"

.field private static final ACTIVITY_RECORD:Ljava/lang/String; = "com.android.server.wm.ActivityRecord"

.field private static final ANR_BOOT_DEFER_TIME:J = 0x7530L

.field private static final ANR_CPU_DEFER_TIME:J = 0x1f40L

.field private static final ANR_CPU_THRESHOLD:F = 90.0f

.field private static final APP_ERRORS:Ljava/lang/String; = "com.android.server.am.AppErrors"

.field private static final APP_PROFILER:Ljava/lang/String; = "com.android.server.am.AppProfiler"

.field private static final ATM_SERVICE:Ljava/lang/String; = "com.android.server.wm.ActivityTaskManagerService"

.field private static final BATTERY_STATS:Ljava/lang/String; = "com.android.server.am.BatteryStatsService"

.field private static final BINDERINFO_PATH:Ljava/lang/String; = "/dev/binderfs/binder_logs"

.field private static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field private static final DISABLE_ANR_DUMP_FOR_3RD_APP:I = 0x0

.field private static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field private static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field private static final ENABLE_ANR_DUMP_FOR_3RD_APP:I = 0x1

.field private static final EVENT_BOOT_COMPLETED:I = 0x2329

.field private static final INVALID_ANR_FLOW:I = -0x1

.field private static final INVALID_ANR_OPTION:I = -0x1

.field private static final IS_USER_BUILD:Z

.field private static final IS_USER_LOAD:Z

.field private static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static final MESSAGE_MAP_BUFFER_COUNT_MAX:I = 0x5

.field private static final MESSAGE_MAP_BUFFER_SIZE_MAX:I = 0xc350

.field private static final MONITOR_CPU_MIN_TIME:J = 0x9c4L

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field private static final NORMAL_ANR_FLOW:I = 0x0

.field private static final PROCESS_ERROR_STATE_RECORD:Ljava/lang/String; = "com.android.server.am.ProcessErrorStateRecord"

.field private static final PROCESS_LIST:Ljava/lang/String; = "com.android.server.am.ProcessList"

.field private static final PROCESS_RECORD:Ljava/lang/String; = "com.android.server.am.ProcessRecord"

.field private static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field private static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final SKIP_ANR_FLOW:I = 0x1

.field private static final SKIP_ANR_FLOW_AND_KILL:I = 0x2

.field private static final START_ANR_DUMP_MSG:I = 0x3eb

.field private static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field private static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field private static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "AnrManager"

.field private static lock:Ljava/lang/Object;

.field private static final mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

.field private static final mDumpStackTraces:Ljava/lang/Object;

.field private static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mZygotePids:[I

.field private static sEnhanceEnable:Z

.field private static sInstance:Lcom/mediatek/server/anr/AnrManagerService;


# instance fields
.field private aInfo:Landroid/content/pm/ApplicationInfo;

.field private anrDialogDelayMs:J

.field private exceptionLog:Lcom/mediatek/aee/ExceptionLog;

.field private incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

.field private loadingProgress:F

.field private mAMS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mActiveServicesField:Ljava/lang/reflect/Field;

.field private mAmsPid:I

.field private mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

.field private mAnrFlow:I

.field private mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

.field private mAnrOption:I

.field private mAppProfiler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mBatteryStatsServiceField:Ljava/lang/reflect/Field;

.field private mControllerField:Ljava/lang/reflect/Field;

.field private mCpuDeferred:J

.field private mCrashingField:Ljava/lang/reflect/Field;

.field private mEventBootCompleted:J

.field private mInfoField:Ljava/lang/reflect/Field;

.field private mKill:Ljava/lang/reflect/Method;

.field private final mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLruProcessesField:Ljava/lang/reflect/Field;

.field private mMakeAppNotRespondingLocked:Ljava/lang/reflect/Method;

.field private mMonitorCpuUsageField:Ljava/lang/reflect/Field;

.field private mNotRespondingField:Ljava/lang/reflect/Field;

.field private mNoteProcessANR:Ljava/lang/reflect/Method;

.field private mParentAppField:Ljava/lang/reflect/Field;

.field private mParentPidField:Ljava/lang/reflect/Field;

.field private mPersistentField:Ljava/lang/reflect/Field;

.field private mPidField:Ljava/lang/reflect/Field;

.field private mPkgListField:Ljava/lang/reflect/Field;

.field private mProcessCpuTrackerField:Ljava/lang/reflect/Field;

.field private mProcessErrorStateRecord:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mProcessListField:Ljava/lang/reflect/Field;

.field private mProcessNameField:Ljava/lang/reflect/Field;

.field private mProcessRecord:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mScheduleServiceTimeoutLocked:Ljava/lang/reflect/Method;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mShowNotRespondingUiMsgField:Ljava/lang/reflect/Field;

.field private mThreadField:Ljava/lang/reflect/Field;

.field private mTracesFile:Ljava/io/File;

.field private mUiHandlerField:Ljava/lang/reflect/Field;

.field private mUidField:Ljava/lang/reflect/Field;

.field private mUpdateCpuStatsNow:Ljava/lang/reflect/Method;

.field private mUserIdField:Ljava/lang/reflect/Field;

.field private final offsets:[J


# direct methods
.method static constructor <clinit>()V
    .registers 24

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/server/anr/AnrManagerService;->sEnhanceEnable:Z

    .line 138
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1b

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 139
    const-string v4, "userdebug"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    nop

    :goto_1c
    sput-boolean v0, Lcom/mediatek/server/anr/AnrManagerService;->IS_USER_BUILD:Z

    .line 141
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/server/anr/AnrManagerService;->IS_USER_LOAD:Z

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mZygotePids:[I

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mDumpStackTraces:Ljava/lang/Object;

    .line 148
    const-string v4, "/system/bin/netd"

    const-string v5, "/system/bin/audioserver"

    const-string v6, "/system/bin/cameraserver"

    const-string v7, "/system/bin/drmserver"

    const-string v8, "/system/bin/mediadrmserver"

    const-string v9, "/system/bin/mediaserver"

    const-string v10, "mediaserver"

    const-string v11, "/vendor/bin/hw/android.hardware.media.c2@1.2-mediatek"

    const-string v12, "/vendor/bin/hw/android.hardware.media.c2@1.2-mediatek-64b"

    const-string v13, "/system/bin/sdcard"

    const-string v14, "/system/bin/surfaceflinger"

    const-string v15, "vendor/bin/hw/camerahalserver"

    const-string v16, "/system/bin/vold"

    const-string v17, "media.extractor"

    const-string v18, "media.metrics"

    const-string v19, "media.codec"

    const-string v20, "media.swcodec"

    const-string v21, "media.transcoding"

    const-string v22, "com.android.bluetooth"

    const-string v23, "/apex/com.android.os.statsd/bin/statsd"

    filled-new-array/range {v4 .. v23}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 166
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    .line 171
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->lock:Ljava/lang/Object;

    .line 196
    sput-object v0, Lcom/mediatek/server/anr/AnrManagerService;->sInstance:Lcom/mediatek/server/anr/AnrManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 115
    invoke-direct {p0}, Lcom/mediatek/anr/AnrManagerNative;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 202
    iput-wide v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mEventBootCompleted:J

    .line 203
    iput-wide v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrFlow:I

    .line 205
    iput v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrOption:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    .line 207
    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    .line 208
    const/4 v3, 0x2

    new-array v4, v3, [J

    iput-object v4, p0, Lcom/mediatek/server/anr/AnrManagerService;->offsets:[J

    .line 209
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F

    .line 210
    iput-wide v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J

    .line 211
    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

    .line 213
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecord()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessRecord:Ljava/lang/Class;

    .line 214
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessErrorStateRecord()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessErrorStateRecord:Ljava/lang/Class;

    .line 215
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManagerService;->getActivityManagerService()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAMS:Ljava/lang/Class;

    .line 216
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManagerService;->getAppProfiler()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAppProfiler:Ljava/lang/Class;

    .line 218
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-string v2, "killLocked"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mKill:Ljava/lang/reflect/Method;

    .line 220
    const-string v1, "updateCpuStatsNow"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUpdateCpuStatsNow:Ljava/lang/reflect/Method;

    .line 221
    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string v2, "noteProcessAnr"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getBatteryStatsServiceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mNoteProcessANR:Ljava/lang/reflect/Method;

    .line 223
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/android/server/am/ProcessRecord;

    aput-object v2, v1, v4

    const-string v2, "scheduleServiceTimeoutLocked"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getActiveServicesMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mScheduleServiceTimeoutLocked:Ljava/lang/reflect/Method;

    .line 225
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "makeAppNotRespondingLSP"

    invoke-direct {p0, v1, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessErrorStateRecordMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mMakeAppNotRespondingLocked:Ljava/lang/reflect/Method;

    .line 229
    const-string v0, "mPid"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mPidField:Ljava/lang/reflect/Field;

    .line 230
    const-string v1, "processName"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessNameField:Ljava/lang/reflect/Field;

    .line 231
    const-string v1, "mThread"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mThreadField:Ljava/lang/reflect/Field;

    .line 232
    const-string v1, "mNotResponding"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessErrorStateRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mNotRespondingField:Ljava/lang/reflect/Field;

    .line 233
    const-string v1, "mCrashing"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessErrorStateRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mCrashingField:Ljava/lang/reflect/Field;

    .line 234
    const-string v1, "userId"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUserIdField:Ljava/lang/reflect/Field;

    .line 235
    const-string v1, "uid"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUidField:Ljava/lang/reflect/Field;

    .line 236
    const-string v1, "info"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mInfoField:Ljava/lang/reflect/Field;

    .line 237
    const-string v1, "mPkgList"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mPkgListField:Ljava/lang/reflect/Field;

    .line 238
    const-string v1, "mPersistent"

    invoke-direct {p0, v1}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mPersistentField:Ljava/lang/reflect/Field;

    .line 239
    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mParentPidField:Ljava/lang/reflect/Field;

    .line 240
    const-string v0, "app"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getActivityRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mParentAppField:Ljava/lang/reflect/Field;

    .line 244
    const-string v0, "mLruProcesses"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getPLField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mLruProcessesField:Ljava/lang/reflect/Field;

    .line 245
    const-string v0, "mProcessList"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessListField:Ljava/lang/reflect/Field;

    .line 246
    const-string v0, "mProcessCpuTracker"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAppProfilerField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessCpuTrackerField:Ljava/lang/reflect/Field;

    .line 247
    const-string v0, "MONITOR_CPU_USAGE"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAppProfilerField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mMonitorCpuUsageField:Ljava/lang/reflect/Field;

    .line 248
    const-string v0, "SHOW_NOT_RESPONDING_UI_MSG"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mShowNotRespondingUiMsgField:Ljava/lang/reflect/Field;

    .line 249
    const-string v0, "mBatteryStatsService"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mBatteryStatsServiceField:Ljava/lang/reflect/Field;

    .line 250
    const-string v0, "mServices"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mActiveServicesField:Ljava/lang/reflect/Field;

    .line 251
    const-string v0, "mUiHandler"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUiHandlerField:Ljava/lang/reflect/Field;

    .line 252
    const-string v0, "mController"

    invoke-direct {p0, v0}, Lcom/mediatek/server/anr/AnrManagerService;->getATMField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mControllerField:Ljava/lang/reflect/Field;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/server/anr/AnrManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/server/anr/AnrManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p1, "x1"    # F

    .line 115
    iput p1, p0, Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/os/incremental/IncrementalMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/server/anr/AnrManagerService;Landroid/os/incremental/IncrementalMetrics;)Landroid/os/incremental/IncrementalMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p1, "x1"    # Landroid/os/incremental/IncrementalMetrics;

    .line 115
    iput-object p1, p0, Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/server/anr/AnrManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/server/anr/AnrManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-wide v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/mediatek/server/anr/AnrManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p1, "x1"    # J

    .line 115
    iput-wide p1, p0, Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J

    return-wide p1
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .registers 1

    .line 115
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/mediatek/server/anr/AnrManagerService;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p1, "x1"    # Ljava/io/File;

    .line 115
    iput-object p1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/server/anr/AnrManagerService;)[J
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->offsets:[J

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAppProfiler:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mMonitorCpuUsageField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessCpuTrackerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUpdateCpuStatsNow:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/server/anr/AnrManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/server/anr/AnrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessListField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mLruProcessesField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mThreadField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mPidField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/server/anr/AnrManagerService;)Ljava/lang/reflect/Field;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService;

    .line 115
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mPersistentField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private getAMSField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "var"    # Ljava/lang/String;

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAMS:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 382
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 383
    return-object v0

    .line 384
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAMSMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAMS:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 310
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 311
    return-object v0

    .line 312
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_e
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getATMField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "var"    # Ljava/lang/String;

    .line 401
    :try_start_0
    const-string v0, "com.android.server.wm.ActivityTaskManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 402
    .local v0, "mATM":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 403
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 404
    return-object v1

    .line 405
    .end local v0    # "mATM":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_f
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActiveServicesMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;

    .line 330
    :try_start_0
    const-string v0, "com.android.server.am.ActiveServices"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 331
    .local v0, "activeServices":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 332
    .end local v0    # "activeServices":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActivityManagerService()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 271
    :try_start_0
    const-string v0, "com.android.server.am.ActivityManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 272
    :catch_7
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActivityRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "var"    # Ljava/lang/String;

    .line 370
    :try_start_0
    const-string v0, "com.android.server.wm.ActivityRecord"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 371
    .local v0, "mActivityRecord":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 372
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 373
    return-object v1

    .line 374
    .end local v0    # "mActivityRecord":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_f
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppErrorsMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;

    .line 339
    :try_start_0
    const-string v0, "com.android.server.am.AppErrors"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 340
    .local v0, "appErrors":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 341
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 342
    return-object v1

    .line 343
    .end local v0    # "appErrors":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_f
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppProfiler()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 279
    :try_start_0
    const-string v0, "com.android.server.am.AppProfiler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 280
    :catch_7
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getAppProfilerField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "var"    # Ljava/lang/String;

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAppProfiler:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 392
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 393
    return-object v0

    .line 394
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBatteryStatsServiceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;

    .line 319
    :try_start_0
    const-string v0, "com.android.server.am.BatteryStatsService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    .local v0, "batteryStatsService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 321
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 322
    return-object v1

    .line 323
    .end local v0    # "batteryStatsService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_f
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/mediatek/server/anr/AnrManagerService;
    .registers 2

    .line 422
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->sInstance:Lcom/mediatek/server/anr/AnrManagerService;

    if-nez v0, :cond_17

    .line 423
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_7
    sget-object v1, Lcom/mediatek/server/anr/AnrManagerService;->sInstance:Lcom/mediatek/server/anr/AnrManagerService;

    if-nez v1, :cond_12

    .line 425
    new-instance v1, Lcom/mediatek/server/anr/AnrManagerService;

    invoke-direct {v1}, Lcom/mediatek/server/anr/AnrManagerService;-><init>()V

    sput-object v1, Lcom/mediatek/server/anr/AnrManagerService;->sInstance:Lcom/mediatek/server/anr/AnrManagerService;

    .line 427
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 429
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->sInstance:Lcom/mediatek/server/anr/AnrManagerService;

    return-object v0
.end method

.method private getPLField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5
    .param p1, "var"    # Ljava/lang/String;

    .line 412
    :try_start_0
    const-string v0, "com.android.server.am.ProcessList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 413
    .local v0, "mATM":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 414
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 415
    return-object v1

    .line 416
    .end local v0    # "mATM":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_f
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessErrorStateRecord()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 263
    :try_start_0
    const-string v0, "com.android.server.am.ProcessErrorStateRecord"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 264
    :catch_7
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessErrorStateRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "var"    # Ljava/lang/String;

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessErrorStateRecord:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 361
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 362
    return-object v0

    .line 363
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessErrorStateRecordMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessErrorStateRecord:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 299
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 300
    return-object v0

    .line 301
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_b
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessErrorStateRecordMethod Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnrManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessRecord()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 255
    :try_start_0
    const-string v0, "com.android.server.am.ProcessRecord"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessRecordField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "var"    # Ljava/lang/String;

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessRecord:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 351
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 352
    return-object v0

    .line 353
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getProcessRecordMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "cls"    # [Ljava/lang/Class;

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mProcessRecord:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 288
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 289
    return-object v0

    .line 290
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_b
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessRecordMethod Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnrManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    return-object v1
.end method

.method private isBuiltinApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1818
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    return v1
.end method

.method private isException()Ljava/lang/Boolean;
    .registers 4

    .line 1441
    :try_start_0
    const-string v0, "free"

    .line 1443
    .local v0, "status":Ljava/lang/String;
    const-string v1, "vendor.debug.mtk.aee.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "vendor.debug.mtk.aee.status64"

    .line 1445
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "vendor.debug.mtk.aee.vstatus"

    .line 1447
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "vendor.debug.mtk.aee.vstatus64"

    .line 1449
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1451
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39

    return-object v1

    .line 1455
    .end local v0    # "status":Ljava/lang/String;
    :cond_38
    goto :goto_54

    .line 1453
    :catch_39
    move-exception v0

    .line 1454
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnrManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private needAnrDump(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1826
    invoke-direct {p0, p1}, Lcom/mediatek/server/anr/AnrManagerService;->isBuiltinApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    const-string v0, "persist.vendor.anr.dumpthr"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .line 1787
    const-string v0, "writeStringToFile close error: "

    const-string v1, " "

    const-string v2, "AnrManager"

    if-nez p1, :cond_9

    .line 1788
    return-void

    .line 1791
    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1792
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 1794
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 1795
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 1798
    :try_start_16
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 1799
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1800
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_4e
    .catchall {:try_start_16 .. :try_end_26} :catchall_4c

    .line 1805
    nop

    .line 1807
    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 1811
    :goto_2a
    goto :goto_48

    .line 1808
    :catch_2b
    move-exception v6

    .line 1809
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_31
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_48
    :goto_48
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1814
    goto :goto_7b

    .line 1805
    :catchall_4c
    move-exception v6

    goto :goto_7c

    .line 1801
    :catch_4e
    move-exception v6

    .line 1802
    .local v6, "e":Ljava/io/IOException;
    :try_start_4f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeStringToFile error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1802
    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_4c

    .line 1805
    nop

    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_48

    .line 1807
    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_2a

    .line 1808
    :catch_74
    move-exception v6

    .line 1809
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_31

    .line 1815
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_7b
    return-void

    .line 1805
    :goto_7c
    if-eqz v4, :cond_9f

    .line 1807
    :try_start_7e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 1811
    goto :goto_9f

    .line 1808
    :catch_82
    move-exception v7

    .line 1809
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1809
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_9f
    :goto_9f
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1814
    throw v6
.end method


# virtual methods
.method public checkAnrDebugMechanism()I
    .registers 4

    .line 1477
    sget-boolean v0, Lcom/mediatek/server/anr/AnrManagerService;->sEnhanceEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1478
    return v1

    .line 1480
    :cond_6
    const/4 v0, -0x1

    iget v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrOption:I

    if-ne v0, v2, :cond_19

    .line 1481
    const/4 v0, 0x2

    .line 1482
    .local v0, "option":I
    sget-boolean v2, Lcom/mediatek/server/anr/AnrManagerService;->IS_USER_LOAD:Z

    if-eqz v2, :cond_11

    .line 1483
    const/4 v0, 0x1

    .line 1485
    :cond_11
    const-string v2, "persist.vendor.anr.enhancement"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrOption:I

    .line 1488
    .end local v0    # "option":I
    :cond_19
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrOption:I

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_24

    .line 1496
    return v2

    .line 1490
    :pswitch_20
    return v2

    .line 1492
    :pswitch_21
    const/4 v0, 0x1

    return v0

    .line 1494
    :pswitch_23
    return v1

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_23
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 7
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;

    .line 1644
    const/4 v0, 0x0

    .line 1646
    .local v0, "result":Z
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1647
    return v0

    .line 1649
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1650
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1651
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1654
    :cond_1b
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_30

    .line 1656
    .local v1, "in":Ljava/io/InputStream;
    :try_start_20
    invoke-virtual {p0, v1, p2}, Lcom/mediatek/server/anr/AnrManagerService;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2a

    move v0, v2

    .line 1658
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1659
    nop

    .line 1663
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_39

    .line 1658
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_2a
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1659
    nop

    .end local v0    # "result":Z
    .end local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService;
    .end local p1    # "srcFile":Ljava/io/File;
    .end local p2    # "destFile":Ljava/io/File;
    throw v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_30

    .line 1660
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService;
    .restart local p1    # "srcFile":Ljava/io/File;
    .restart local p2    # "destFile":Ljava/io/File;
    :catch_30
    move-exception v1

    .line 1661
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AnrManager"

    const-string v3, "createFile fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const/4 v0, 0x0

    .line 1664
    .end local v1    # "e":Ljava/io/IOException;
    :goto_39
    return v0
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "destFile"    # Ljava/io/File;

    .line 1668
    const-string v0, "close failed.."

    const-string v1, "AnrManager"

    const/4 v2, 0x0

    .line 1670
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v4

    .line 1671
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 1673
    .local v4, "buffer":[B
    :goto_11
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "bytesRead":I
    if-ltz v6, :cond_1c

    .line 1674
    invoke-virtual {v2, v4, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_11

    .line 1676
    :cond_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1677
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_26} :catch_32
    .catchall {:try_start_6 .. :try_end_26} :catchall_30

    .line 1683
    .end local v4    # "buffer":[B
    .end local v7    # "bytesRead":I
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 1686
    goto :goto_2f

    .line 1684
    :catch_2a
    move-exception v3

    .line 1685
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 1688
    :goto_2f
    return v5

    .line 1682
    :catchall_30
    move-exception v3

    goto :goto_46

    .line 1678
    :catch_32
    move-exception v4

    .line 1679
    .local v4, "e":Ljava/io/IOException;
    :try_start_33
    const-string v5, "copyToFile fail"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_30

    .line 1680
    nop

    .line 1683
    if-eqz v2, :cond_44

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_44

    .line 1684
    :catch_3f
    move-exception v5

    .line 1685
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1686
    .end local v5    # "e":Ljava/io/IOException;
    :cond_44
    :goto_44
    nop

    .line 1680
    :goto_45
    return v3

    .line 1683
    .end local v4    # "e":Ljava/io/IOException;
    :goto_46
    if-eqz v2, :cond_51

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_51

    .line 1684
    :catch_4c
    move-exception v4

    .line 1685
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 1686
    .end local v4    # "e":Ljava/io/IOException;
    :cond_51
    :goto_51
    nop

    .line 1687
    :goto_52
    throw v3
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1635
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1636
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnrManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v1, 0x0

    return-object v1

    .line 1640
    :cond_23
    return-object v0
.end method

.method public dumpBinderInfo(I)V
    .registers 8
    .param p1, "pid"    # I

    .line 1714
    const-string v0, "AnrManager"

    const-string v1, "/data/anr/binderinfo"

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1715
    .local v2, "binderinfo":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1716
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1717
    const-string v1, "dumpBinderInfo fail due to file likely to be locked by others"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void

    .line 1721
    :cond_1b
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_27

    .line 1722
    const-string v1, "dumpBinderInfo fail due to file cannot be created"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    return-void

    .line 1726
    :cond_27
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b6

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1729
    :cond_31
    const-string v3, "/dev/binderfs/binder_logs/failed_transaction_log"

    invoke-virtual {p0, v3}, Lcom/mediatek/server/anr/AnrManagerService;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1730
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_41

    .line 1731
    const-string v4, "------ BINDER FAILED TRANSACTION LOG ------\n"

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1736
    :cond_41
    const-string v4, "/dev/binderfs/binder_logs/timeout_log"

    invoke-virtual {p0, v4}, Lcom/mediatek/server/anr/AnrManagerService;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 1737
    if-eqz v3, :cond_52

    .line 1738
    const-string v4, "------ BINDER TIMEOUT LOG ------\n"

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1743
    :cond_52
    const-string v4, "/dev/binderfs/binder_logs/transaction_log"

    invoke-virtual {p0, v4}, Lcom/mediatek/server/anr/AnrManagerService;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 1744
    if-eqz v3, :cond_63

    .line 1745
    const-string v4, "------ BINDER TRANSACTION LOG ------\n"

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1750
    :cond_63
    const-string v4, "/dev/binderfs/binder_logs/transactions"

    invoke-virtual {p0, v4}, Lcom/mediatek/server/anr/AnrManagerService;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 1751
    if-eqz v3, :cond_74

    .line 1752
    const-string v4, "------ BINDER TRANSACTIONS ------\n"

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1757
    :cond_74
    const-string v4, "/dev/binderfs/binder_logs/stats"

    invoke-virtual {p0, v4}, Lcom/mediatek/server/anr/AnrManagerService;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 1758
    if-eqz v3, :cond_85

    .line 1759
    const-string v4, "------ BINDER STATS ------\n"

    invoke-virtual {p0, v1, v4}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1764
    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/dev/binderfs/binder_logs/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1766
    .local v4, "filepath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1768
    nop

    .line 1769
    const-string v5, "------ BINDER PROCESS STATE: $i ------\n"

    invoke-virtual {p0, v1, v5}, Lcom/mediatek/server/anr/AnrManagerService;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/server/anr/AnrManagerService;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a9} :catch_aa

    .line 1776
    .end local v2    # "binderinfo":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    goto :goto_b0

    .line 1774
    :catch_aa
    move-exception v1

    .line 1775
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "dumpBinderInfo fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    .end local v1    # "e":Ljava/io/IOException;
    :goto_b0
    return-void
.end method

.method public enableTraceLog(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTraceLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnrManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v0, :cond_1d

    .line 1782
    invoke-virtual {v0, p1}, Lcom/mediatek/aee/ExceptionLog;->switchFtrace(I)V

    .line 1784
    :cond_1d
    return-void
.end method

.method public getAndroidTime()Ljava/lang/String;
    .registers 8

    .line 1623
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1626
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1627
    .local v2, "formatter":Ljava/util/Formatter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1630
    const-string v5, "%.3f"

    invoke-virtual {v2, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1627
    return-object v3
.end method

.method public getProcessState()Ljava/lang/String;
    .registers 4

    .line 1616
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 1617
    nop

    .line 1618
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1617
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1619
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .registers 6
    .param p1, "MessageInfo"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 1460
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1461
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1462
    .local v0, "tmpString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-le v1, v2, :cond_23

    .line 1463
    const-string v0, ""

    .line 1465
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1466
    sget-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    .end local v0    # "tmpString":Ljava/lang/String;
    goto :goto_53

    .line 1468
    :cond_3c
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_4a

    .line 1469
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1471
    :cond_4a
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "informMessageDump pid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnrManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void
.end method

.method public isAnrDeferrable()Z
    .registers 18

    .line 1521
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1522
    return v2

    .line 1525
    :cond_a
    const-string v1, "vendor.anr.autotest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dexopt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "AnrManager"

    if-eqz v3, :cond_21

    .line 1526
    const-string v1, "We are doing TestDexOptSkipANR; return true in this case"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return v4

    .line 1530
    :cond_21
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "enable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1531
    const-string v1, "Do Auto Test, don\'t skip ANR"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return v2

    .line 1535
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1536
    .local v6, "now":J
    sget-boolean v1, Lcom/mediatek/server/anr/AnrManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_e8

    .line 1537
    iget-wide v8, v0, Lcom/mediatek/server/anr/AnrManagerService;->mEventBootCompleted:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_c9

    sub-long v8, v6, v8

    const-wide/16 v12, 0x7530

    cmp-long v1, v8, v12

    if-gez v1, :cond_4d

    goto/16 :goto_c9

    .line 1544
    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->isException()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1545
    const-string v1, "isAnrDeferrable(): true since exception"

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return v4

    .line 1548
    :cond_5d
    sget-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v3

    .line 1549
    .local v3, "lastCpuUsage":F
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->updateProcessStats()V

    .line 1550
    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v1

    .line 1551
    .local v1, "currentCpuUsage":F
    const/high16 v8, 0x42b40000    # 90.0f

    cmpl-float v9, v3, v8

    if-lez v9, :cond_c6

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c6

    .line 1553
    iget-wide v8, v0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    cmp-long v12, v8, v10

    const-string v13, ", mCpuDeferred = "

    const-string v14, "isAnrDeferrable(): true since CpuUsage = "

    if-nez v12, :cond_9b

    .line 1554
    iput-wide v6, v0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v4

    .line 1559
    :cond_9b
    sub-long v8, v6, v8

    const-wide/16 v15, 0x1f40

    cmp-long v8, v8, v15

    if-gez v8, :cond_c6

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", now = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return v4

    .line 1566
    :cond_c6
    iput-wide v10, v0, Lcom/mediatek/server/anr/AnrManagerService;->mCpuDeferred:J

    goto :goto_e8

    .line 1540
    .end local v1    # "currentCpuUsage":F
    .end local v3    # "lastCpuUsage":F
    :cond_c9
    :goto_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnrDeferrable(): true since mEventBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/mediatek/server/anr/AnrManagerService;->mEventBootCompleted:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return v4

    .line 1569
    :cond_e8
    :goto_e8
    return v2
.end method

.method public isAnrFlowSkipped(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "appPid"    # I
    .param p2, "appProcessName"    # Ljava/lang/String;
    .param p3, "annotation"    # Ljava/lang/String;

    .line 1579
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrFlow:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_e

    .line 1580
    const-string v0, "persist.vendor.dbg.anrflow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrFlow:I

    .line 1583
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isANRFlowSkipped() AnrFlow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrFlow:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AnrManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrFlow:I

    const/4 v3, 0x1

    const-string v4, "Skipping ANR flow: "

    const-string v5, " "

    packed-switch v0, :pswitch_data_92

    .line 1601
    return v1

    .line 1593
    :pswitch_31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p1, v0, :cond_71

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kill process ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") due to ANR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 1599
    :cond_71
    return v3

    .line 1589
    :pswitch_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return v3

    .line 1587
    :pswitch_91
    return v1

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_91
        :pswitch_72
        :pswitch_31
    .end packed-switch
.end method

.method public isJavaProcess(I)Z
    .registers 8
    .param p1, "pid"    # I

    .line 1415
    const/4 v0, 0x0

    if-gtz p1, :cond_4

    .line 1416
    return v0

    .line 1419
    :cond_4
    sget-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mZygotePids:[I

    if-nez v1, :cond_16

    .line 1420
    const-string v1, "zygote64"

    const-string v2, "zygote"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, "commands":[Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    sput-object v2, Lcom/mediatek/server/anr/AnrManagerService;->mZygotePids:[I

    .line 1427
    .end local v1    # "commands":[Ljava/lang/String;
    :cond_16
    sget-object v1, Lcom/mediatek/server/anr/AnrManagerService;->mZygotePids:[I

    if-eqz v1, :cond_2d

    .line 1428
    invoke-static {p1}, Landroid/os/Process;->getParentPid(I)I

    move-result v1

    .line 1429
    .local v1, "parentPid":I
    sget-object v2, Lcom/mediatek/server/anr/AnrManagerService;->mZygotePids:[I

    array-length v3, v2

    move v4, v0

    :goto_22
    if-ge v4, v3, :cond_2d

    aget v5, v2, v4

    .line 1430
    .local v5, "zygotePid":I
    if-ne v1, v5, :cond_2a

    .line 1431
    const/4 v0, 0x1

    return v0

    .line 1429
    .end local v5    # "zygotePid":I
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1435
    .end local v1    # "parentPid":I
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a Java process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnrManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    return v0
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareStackTraceFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnrManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_67

    .line 1011
    :cond_1f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v0, "traceFile":Ljava/io/File;
    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1015
    .local v2, "traceDir":Ljava/io/File;
    const/4 v3, -0x1

    if-eqz v2, :cond_3d

    .line 1016
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_34

    .line 1017
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1020
    :cond_34
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    invoke-static {v4, v5, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1023
    :cond_3d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_46

    .line 1024
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1026
    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b6

    invoke-static {v4, v5, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4f} :catch_51

    .line 1029
    nop

    .end local v2    # "traceDir":Ljava/io/File;
    goto :goto_66

    .line 1027
    :catch_51
    move-exception v2

    .line 1028
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to prepare stack trace file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    .end local v2    # "e":Ljava/io/IOException;
    :goto_66
    return-void

    .line 1008
    .end local v0    # "traceFile":Ljava/io/File;
    :cond_67
    :goto_67
    return-void
.end method

.method public removeBroadcastMonitorMessage()V
    .registers 3

    .line 479
    invoke-virtual {p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_e

    .line 480
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->removeMessages(I)V

    .line 482
    :cond_e
    return-void
.end method

.method public removeServiceMonitorMessage()V
    .registers 3

    .line 495
    invoke-virtual {p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_e

    .line 496
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->removeMessages(I)V

    .line 498
    :cond_e
    return-void
.end method

.method public sendBroadcastMonitorMessage(JJ)V
    .registers 9
    .param p1, "timeoutTime"    # J
    .param p3, "mTimeoutPeriod"    # J

    .line 470
    invoke-virtual {p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1a

    .line 471
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const/16 v1, 0x3e9

    .line 472
    invoke-virtual {v0, v1}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "broadcastMonitor":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const-wide/16 v2, 0x2

    div-long v2, p3, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 476
    .end local v0    # "broadcastMonitor":Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method public sendServiceMonitorMessage()V
    .registers 7

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 486
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1b

    .line 487
    iget-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const/16 v3, 0x3ea

    .line 488
    invoke-virtual {v2, v3}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 489
    .local v2, "serviceMonitor":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    const-wide/16 v4, 0x3415

    add-long/2addr v4, v0

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 492
    .end local v2    # "serviceMonitor":Landroid/os/Message;
    :cond_1b
    return-void
.end method

.method public startAnrDump(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;ZJZLjava/util/UUID;)Z
    .registers 63
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processESR"    # Lcom/android/server/am/ProcessErrorStateRecord;
    .param p3, "activityShortComponentName"    # Ljava/lang/String;
    .param p4, "apInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "parentShortComponentName"    # Ljava/lang/String;
    .param p6, "parentProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p7, "aboveSystem"    # Z
    .param p8, "annotation"    # Ljava/lang/String;
    .param p9, "isSilentANR"    # Z
    .param p10, "anrTime"    # J
    .param p12, "onlyDumpSelf"    # Z
    .param p13, "errorId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p6

    move-object/from16 v11, p8

    move/from16 v10, p9

    const-string v0, "AnrManager"

    const-string v1, "startAnrDump"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1b

    .line 507
    return v9

    .line 509
    :cond_1b
    iget-object v8, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 510
    .local v8, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v7, p4

    iput-object v7, v14, Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;

    .line 511
    move-object/from16 v6, p1

    iput-object v6, v14, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 512
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    .line 513
    .local v5, "pid":I
    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 514
    .local v4, "uid":I
    iget v3, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 515
    .local v3, "userid":I
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 516
    .local v2, "processName":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 517
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v14, Lcom/mediatek/server/anr/AnrManagerService;->mControllerField:Ljava/lang/reflect/Field;

    iget-object v9, v14, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 518
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/IActivityController;

    .line 519
    .local v9, "controller":Landroid/app/IActivityController;
    iget-object v0, v14, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 520
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v29

    .line 522
    .local v29, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const/4 v0, -0x1

    .line 523
    .local v0, "parentPid":I
    if-eqz v12, :cond_58

    .line 524
    move/from16 v17, v0

    .end local v0    # "parentPid":I
    .local v17, "parentPid":I
    iget-object v0, v14, Lcom/mediatek/server/anr/AnrManagerService;->mParentPidField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v30, v0

    .end local v17    # "parentPid":I
    .restart local v0    # "parentPid":I
    goto :goto_5c

    .line 523
    :cond_58
    move/from16 v17, v0

    .end local v0    # "parentPid":I
    .restart local v17    # "parentPid":I
    move/from16 v30, v17

    .line 527
    .end local v17    # "parentPid":I
    .local v30, "parentPid":I
    :goto_5c
    invoke-virtual {v14, v5, v2, v11}, Lcom/mediatek/server/anr/AnrManagerService;->isAnrFlowSkipped(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_64

    .line 528
    return v7

    .line 531
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v0

    const/4 v7, 0x2

    if-ne v7, v0, :cond_8b

    .line 533
    :try_start_6b
    iget-object v0, v14, Lcom/mediatek/server/anr/AnrManagerService;->mThreadField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    iget v7, v14, Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I

    if-ne v5, v7, :cond_79

    const/4 v7, 0x1

    goto :goto_7a

    :cond_79
    const/4 v7, 0x0

    .line 534
    :goto_7a
    invoke-interface {v0, v7}, Landroid/app/IApplicationThread;->dumpMessage(Z)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7d} :catch_80

    .line 537
    move-object/from16 v19, v2

    goto :goto_8d

    .line 535
    :catch_80
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "AnrManager"

    move-object/from16 v19, v2

    .end local v2    # "processName":Ljava/lang/String;
    .local v19, "processName":Ljava/lang/String;
    const-string v2, "Error happens when dumping message history"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "processName":Ljava/lang/String;
    .restart local v2    # "processName":Ljava/lang/String;
    :cond_8b
    move-object/from16 v19, v2

    .line 539
    .end local v2    # "processName":Ljava/lang/String;
    .restart local v19    # "processName":Ljava/lang/String;
    :goto_8d
    const/4 v0, 0x0

    .line 541
    .local v0, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    invoke-direct {v14, v1}, Lcom/mediatek/server/anr/AnrManagerService;->needAnrDump(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_18c

    .line 542
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/mediatek/server/anr/AnrManagerService;->enableTraceLog(Z)V

    .line 543
    new-instance v2, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;

    invoke-direct {v2, v14, v5}, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;-><init>(Lcom/mediatek/server/anr/AnrManagerService;I)V

    invoke-virtual {v2}, Lcom/mediatek/server/anr/AnrManagerService$BinderDumpThread;->start()V

    .line 544
    iget-object v2, v14, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    iget-object v2, v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13e

    .line 545
    new-instance v20, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    const/4 v2, -0x1

    if-eqz v8, :cond_b3

    move/from16 v21, v5

    goto :goto_b5

    :cond_b3
    move/from16 v21, v2

    :goto_b5
    const/16 v22, 0x0

    .line 547
    if-eqz v8, :cond_bc

    move-object/from16 v23, v19

    goto :goto_be

    :cond_bc
    move-object/from16 v23, v7

    .line 548
    :goto_be
    if-eqz v8, :cond_c5

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_c7

    :cond_c5
    move-object/from16 v24, v7

    .line 550
    :goto_c7
    if-eqz v12, :cond_cc

    move/from16 v25, v30

    goto :goto_ce

    :cond_cc
    move/from16 v25, v2

    :goto_ce
    move-object v2, v1

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v1, v20

    move-object/from16 v32, v2

    move-object/from16 v31, v19

    const/16 v16, 0x0

    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "processName":Ljava/lang/String;
    .local v31, "processName":Ljava/lang/String;
    .local v32, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v2, p0

    move/from16 v33, v3

    .end local v3    # "userid":I
    .local v33, "userid":I
    move/from16 v3, v21

    move/from16 v34, v4

    .end local v4    # "uid":I
    .local v34, "uid":I
    move/from16 v35, v5

    .end local v5    # "pid":I
    .local v35, "pid":I
    move/from16 v5, v33

    move-object/from16 v6, v32

    move/from16 v7, v22

    move-object/from16 v38, v8

    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .local v38, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v8, v23

    move-object/from16 v39, v9

    .end local v9    # "controller":Landroid/app/IActivityController;
    .local v39, "controller":Landroid/app/IActivityController;
    move-object/from16 v9, v24

    move-object/from16 v10, p3

    move/from16 v11, v25

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v1 .. v15}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;-><init>(Lcom/mediatek/server/anr/AnrManagerService;IIILandroid/content/pm/ApplicationInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v20

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->checkAnrDebugMechanism()I

    move-result v1

    const/4 v9, 0x2

    if-ne v9, v1, :cond_12f

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->updateProcessStats()V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->getAndroidTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/server/anr/AnrManagerService;->getProcessState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "cpuInfo":Ljava/lang/String;
    iput-object v1, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 557
    const-string v2, "AnrManager"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v1    # "cpuInfo":Ljava/lang/String;
    :cond_12f
    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    iget-object v1, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->mDumpList:Ljava/util/HashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_14f

    .line 544
    .end local v31    # "processName":Ljava/lang/String;
    .end local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v33    # "userid":I
    .end local v34    # "uid":I
    .end local v35    # "pid":I
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "controller":Landroid/app/IActivityController;
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "userid":I
    .restart local v4    # "uid":I
    .restart local v5    # "pid":I
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "controller":Landroid/app/IActivityController;
    .restart local v19    # "processName":Ljava/lang/String;
    :cond_13e
    move-object/from16 v32, v1

    move/from16 v33, v3

    move/from16 v34, v4

    move/from16 v35, v5

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object v8, v14

    move-object/from16 v31, v19

    const/4 v9, 0x2

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "userid":I
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v19    # "processName":Ljava/lang/String;
    .restart local v31    # "processName":Ljava/lang/String;
    .restart local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "userid":I
    .restart local v34    # "uid":I
    .restart local v35    # "pid":I
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "controller":Landroid/app/IActivityController;
    move-object v1, v0

    .line 566
    .end local v0    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v1, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    :goto_14f
    if-eqz v1, :cond_163

    .line 567
    monitor-enter v1

    .line 568
    :try_start_152
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;
    :try_end_154
    .catchall {:try_start_152 .. :try_end_154} :catchall_15e

    move/from16 v7, p9

    const/4 v6, 0x0

    :try_start_157
    invoke-virtual {v0, v1, v6, v7}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->dumpAnrDebugInfo(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;ZZ)V

    .line 569
    monitor-exit v1

    goto :goto_166

    :catchall_15c
    move-exception v0

    goto :goto_161

    :catchall_15e
    move-exception v0

    move/from16 v7, p9

    :goto_161
    monitor-exit v1
    :try_end_162
    .catchall {:try_start_157 .. :try_end_162} :catchall_15c

    throw v0

    .line 566
    :cond_163
    move/from16 v7, p9

    const/4 v6, 0x0

    .line 571
    :goto_166
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;->removeDumpRecord(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)V

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/server/anr/AnrManagerService;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    move-object v5, v1

    goto :goto_19f

    .line 541
    .end local v31    # "processName":Ljava/lang/String;
    .end local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v33    # "userid":I
    .end local v34    # "uid":I
    .end local v35    # "pid":I
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "controller":Landroid/app/IActivityController;
    .restart local v0    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "userid":I
    .restart local v4    # "uid":I
    .restart local v5    # "pid":I
    .restart local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "controller":Landroid/app/IActivityController;
    .restart local v19    # "processName":Ljava/lang/String;
    :cond_18c
    move-object/from16 v32, v1

    move/from16 v33, v3

    move/from16 v34, v4

    move/from16 v35, v5

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move v7, v10

    move-object v8, v14

    move-object/from16 v31, v19

    const/4 v6, 0x0

    const/4 v9, 0x2

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "userid":I
    .end local v4    # "uid":I
    .end local v5    # "pid":I
    .end local v8    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "controller":Landroid/app/IActivityController;
    .end local v19    # "processName":Ljava/lang/String;
    .restart local v31    # "processName":Ljava/lang/String;
    .restart local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "userid":I
    .restart local v34    # "uid":I
    .restart local v35    # "pid":I
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "controller":Landroid/app/IActivityController;
    move-object v5, v0

    .line 576
    .end local v0    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v5, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    :goto_19f
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mPkgListField:Ljava/lang/reflect/Field;

    move-object/from16 v4, v38

    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/PackageList;

    .line 578
    .local v3, "pkgList":Lcom/android/server/am/PackageList;
    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->size()I

    move-result v2

    .line 579
    .local v2, "size":I
    new-array v0, v2, [Ljava/lang/String;

    .line 581
    .local v0, "list":[Ljava/lang/String;
    if-nez v2, :cond_1b6

    .line 582
    const/4 v0, 0x0

    move-object/from16 v36, v0

    goto :goto_1c8

    .line 584
    :cond_1b6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b7
    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->size()I

    move-result v10

    if-ge v1, v10, :cond_1c6

    .line 585
    invoke-virtual {v3, v1}, Lcom/android/server/am/PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b7

    :cond_1c6
    move-object/from16 v36, v0

    .line 589
    .end local v0    # "list":[Ljava/lang/String;
    .end local v1    # "i":I
    .local v36, "list":[Ljava/lang/String;
    :goto_1c8
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    const/4 v1, 0x3

    if-nez v0, :cond_1d5

    .line 591
    move/from16 v15, v35

    .end local v35    # "pid":I
    .local v15, "pid":I
    invoke-static {v15, v1}, Landroid/os/Process;->sendSignal(II)V

    move/from16 v41, v15

    goto :goto_202

    .line 592
    .end local v15    # "pid":I
    .restart local v35    # "pid":I
    :cond_1d5
    move/from16 v15, v35

    .end local v35    # "pid":I
    .restart local v15    # "pid":I
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->offsets:[J

    const/4 v14, 0x1

    aget-wide v10, v0, v14

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_200

    .line 594
    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    iget-object v11, v8, Lcom/mediatek/server/anr/AnrManagerService;->offsets:[J

    aget-wide v16, v11, v6

    aget-wide v18, v11, v14

    move v11, v15

    move/from16 v12, v34

    move-object/from16 v13, v36

    move-object v14, v0

    move/from16 v41, v15

    .end local v15    # "pid":I
    .local v41, "pid":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_202

    .line 592
    .end local v41    # "pid":I
    .restart local v15    # "pid":I
    :cond_200
    move/from16 v41, v15

    .line 598
    .end local v15    # "pid":I
    .restart local v41    # "pid":I
    :goto_202
    const/16 v0, 0x4f

    iget-object v10, v8, Lcom/mediatek/server/anr/AnrManagerService;->mUidField:Ljava/lang/reflect/Field;

    .line 599
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 600
    move-object/from16 v12, v32

    .end local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_21e

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v11

    if-eqz v11, :cond_21c

    .line 601
    move v11, v9

    goto :goto_21f

    .line 602
    :cond_21c
    const/4 v11, 0x1

    goto :goto_21f

    .line 603
    :cond_21e
    move v11, v6

    .line 604
    :goto_21f
    if-eqz v4, :cond_22b

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v13

    if-eqz v13, :cond_229

    .line 605
    move v13, v9

    goto :goto_22c

    .line 606
    :cond_229
    const/4 v13, 0x1

    goto :goto_22c

    .line 607
    :cond_22b
    move v13, v6

    .line 608
    :goto_22c
    if-eqz v4, :cond_235

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v14

    move/from16 v32, v14

    goto :goto_237

    :cond_235
    move/from16 v32, v6

    .line 609
    :goto_237
    if-eqz v12, :cond_23c

    iget-object v14, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_23e

    :cond_23c
    const-string v14, ""

    :goto_23e
    move-object/from16 v35, v14

    iget-object v14, v8, Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

    if-eqz v14, :cond_247

    const/16 v37, 0x1

    goto :goto_249

    :cond_247
    move/from16 v37, v6

    :goto_249
    iget v15, v8, Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F

    .line 610
    if-eqz v14, :cond_252

    .line 611
    invoke-virtual {v14}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v16

    goto :goto_254

    :cond_252
    const-wide/16 v16, -0x1

    :goto_254
    move-wide/from16 v42, v16

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v38, v15

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, -0x1

    .line 598
    move v1, v0

    move/from16 v40, v2

    .end local v2    # "size":I
    .local v40, "size":I
    move v2, v10

    move-object/from16 v44, v3

    .end local v3    # "pkgList":Lcom/android/server/am/PackageList;
    .local v44, "pkgList":Lcom/android/server/am/PackageList;
    move-object/from16 v3, v31

    move-object v10, v4

    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v4, p3

    move-object/from16 v45, v5

    .end local v5    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v45, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    move-object/from16 v5, p8

    move/from16 v46, v6

    move v6, v11

    move v7, v13

    move-object v13, v8

    move/from16 v8, v32

    move v11, v9

    move-object/from16 v9, v35

    move-object/from16 v47, v10

    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    .local v47, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v10, v37

    move/from16 v11, v38

    move-object/from16 v32, v12

    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-wide/from16 v12, v42

    invoke-static/range {v1 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    .line 623
    const-string v0, "AnrManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addErrorToDropBox app = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v47

    .end local v47    # "app":Lcom/android/server/am/ProcessRecord;
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " processName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v31

    .end local v31    # "processName":Ljava/lang/String;
    .local v14, "processName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activityShortComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parentShortComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parentProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " annotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mTracesFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p0

    iget-object v2, v9, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, v9, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "anr"

    .line 630
    move-object/from16 v8, v45

    .end local v45    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v8, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    if-eqz v8, :cond_2f4

    iget-object v0, v8, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    goto :goto_2f6

    :cond_2f4
    const-string v0, ""

    :goto_2f6
    iget-object v7, v9, Lcom/mediatek/server/anr/AnrManagerService;->mTracesFile:Ljava/io/File;

    const/16 v16, 0x0

    new-instance v6, Ljava/lang/Float;

    iget v3, v9, Lcom/mediatek/server/anr/AnrManagerService;->loadingProgress:F

    invoke-direct {v6, v3}, Ljava/lang/Float;-><init>(F)V

    iget-object v5, v9, Lcom/mediatek/server/anr/AnrManagerService;->incrementalMetrics:Landroid/os/incremental/IncrementalMetrics;

    .line 628
    move-object v3, v15

    move-object v4, v14

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    move-object/from16 v7, p6

    move-object/from16 v48, v8

    .end local v8    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v48, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    move-object/from16 v8, p8

    move-object v9, v0

    move-object/from16 v10, v19

    move-object/from16 v11, v16

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    move-object/from16 v38, v15

    move-object v15, v14

    .end local v14    # "processName":Ljava/lang/String;
    .local v15, "processName":Ljava/lang/String;
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v14, p13

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 633
    const-string v0, "AnrManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v39

    .end local v39    # "controller":Landroid/app/IActivityController;
    .local v2, "controller":Landroid/app/IActivityController;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v1, 0x6

    if-eqz v2, :cond_405

    .line 638
    nop

    .line 639
    move-object/from16 v3, v48

    .end local v48    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .local v3, "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    if-eqz v3, :cond_359

    :try_start_346
    iget-object v0, v3, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_34c
    .catch Landroid/os/RemoteException; {:try_start_346 .. :try_end_34c} :catch_34d

    goto :goto_35b

    .line 654
    :catch_34d
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v9, v38

    move/from16 v4, v41

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_3f3

    .line 640
    :cond_359
    :try_start_359
    const-string v0, ""
    :try_end_35b
    .catch Landroid/os/RemoteException; {:try_start_359 .. :try_end_35b} :catch_3e9

    .line 638
    :goto_35b
    move/from16 v4, v41

    .end local v41    # "pid":I
    .local v4, "pid":I
    :try_start_35d
    invoke-interface {v2, v15, v4, v0}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v5, v0

    .line 641
    .local v5, "res":I
    const-string v0, "AnrManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_378
    .catch Landroid/os/RemoteException; {:try_start_35d .. :try_end_378} :catch_3e0

    .line 642
    if-eqz v5, :cond_3d8

    .line 643
    if-gez v5, :cond_3b6

    move-object/from16 v6, p0

    :try_start_37e
    iget v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I

    if-eq v4, v0, :cond_3a9

    .line 644
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mKill:Ljava/lang/reflect/Method;
    :try_end_384
    .catch Landroid/os/RemoteException; {:try_start_37e .. :try_end_384} :catch_3af

    const/4 v7, 0x3

    :try_start_385
    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "anr"

    aput-object v9, v8, v46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_38f
    .catch Landroid/os/RemoteException; {:try_start_385 .. :try_end_38f} :catch_3a5

    const/4 v10, 0x1

    :try_start_390
    aput-object v9, v8, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9
    :try_end_396
    .catch Landroid/os/RemoteException; {:try_start_390 .. :try_end_396} :catch_3a1

    const/4 v11, 0x2

    :try_start_397
    aput-object v9, v8, v11
    :try_end_399
    .catch Landroid/os/RemoteException; {:try_start_397 .. :try_end_399} :catch_39f

    move-object/from16 v9, v38

    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    :try_start_39b
    invoke-virtual {v0, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d2

    .line 654
    .end local v5    # "res":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_39f
    move-exception v0

    goto :goto_3e6

    :catch_3a1
    move-exception v0

    move-object/from16 v9, v38

    goto :goto_3b4

    :catch_3a5
    move-exception v0

    move-object/from16 v9, v38

    goto :goto_3b3

    .line 643
    .restart local v5    # "res":I
    :cond_3a9
    move-object/from16 v9, v38

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto :goto_3bd

    .line 654
    .end local v5    # "res":I
    :catch_3af
    move-exception v0

    move-object/from16 v9, v38

    const/4 v7, 0x3

    :goto_3b3
    const/4 v10, 0x1

    :goto_3b4
    const/4 v11, 0x2

    goto :goto_3e8

    .line 643
    .restart local v5    # "res":I
    :cond_3b6
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v6, p0

    move-object/from16 v9, v38

    .line 646
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3bd
    iget-object v8, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_3c0
    .catch Landroid/os/RemoteException; {:try_start_39b .. :try_end_3c0} :catch_3d6

    .line 647
    :try_start_3c0
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mScheduleServiceTimeoutLocked:Ljava/lang/reflect/Method;

    iget-object v12, v6, Lcom/mediatek/server/anr/AnrManagerService;->mActiveServicesField:Ljava/lang/reflect/Field;

    iget-object v13, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 648
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v9, v13, v46

    .line 647
    invoke-virtual {v0, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    monitor-exit v8

    .line 652
    :goto_3d2
    return v10

    .line 650
    :catchall_3d3
    move-exception v0

    monitor-exit v8
    :try_end_3d5
    .catchall {:try_start_3c0 .. :try_end_3d5} :catchall_3d3

    .end local v2    # "controller":Landroid/app/IActivityController;
    .end local v3    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .end local v4    # "pid":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "processName":Ljava/lang/String;
    .end local v29    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v30    # "parentPid":I
    .end local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v33    # "userid":I
    .end local v34    # "uid":I
    .end local v36    # "list":[Ljava/lang/String;
    .end local v40    # "size":I
    .end local v44    # "pkgList":Lcom/android/server/am/PackageList;
    .end local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService;
    .end local p1    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local p2    # "processESR":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p3    # "activityShortComponentName":Ljava/lang/String;
    .end local p4    # "apInfo":Landroid/content/pm/ApplicationInfo;
    .end local p5    # "parentShortComponentName":Ljava/lang/String;
    .end local p6    # "parentProcess":Lcom/android/server/am/ProcessRecord;
    .end local p7    # "aboveSystem":Z
    .end local p8    # "annotation":Ljava/lang/String;
    .end local p9    # "isSilentANR":Z
    .end local p10    # "anrTime":J
    .end local p12    # "onlyDumpSelf":Z
    .end local p13    # "errorId":Ljava/util/UUID;
    :try_start_3d5
    throw v0
    :try_end_3d6
    .catch Landroid/os/RemoteException; {:try_start_3d5 .. :try_end_3d6} :catch_3d6

    .line 654
    .end local v5    # "res":I
    .restart local v2    # "controller":Landroid/app/IActivityController;
    .restart local v3    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .restart local v4    # "pid":I
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "processName":Ljava/lang/String;
    .restart local v29    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v30    # "parentPid":I
    .restart local v32    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "userid":I
    .restart local v34    # "uid":I
    .restart local v36    # "list":[Ljava/lang/String;
    .restart local v40    # "size":I
    .restart local v44    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/mediatek/server/anr/AnrManagerService;
    .restart local p1    # "service":Lcom/android/server/am/ActivityManagerService;
    .restart local p2    # "processESR":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p3    # "activityShortComponentName":Ljava/lang/String;
    .restart local p4    # "apInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p5    # "parentShortComponentName":Ljava/lang/String;
    .restart local p6    # "parentProcess":Lcom/android/server/am/ProcessRecord;
    .restart local p7    # "aboveSystem":Z
    .restart local p8    # "annotation":Ljava/lang/String;
    .restart local p9    # "isSilentANR":Z
    .restart local p10    # "anrTime":J
    .restart local p12    # "onlyDumpSelf":Z
    .restart local p13    # "errorId":Ljava/util/UUID;
    :catch_3d6
    move-exception v0

    goto :goto_3f3

    .line 642
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "res":I
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3d8
    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v6, p0

    move-object/from16 v9, v38

    .line 657
    .end local v5    # "res":I
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_410

    .line 654
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    :catch_3e0
    move-exception v0

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v6, p0

    :goto_3e6
    move-object/from16 v9, v38

    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3e8
    goto :goto_3f3

    .end local v4    # "pid":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "pid":I
    :catch_3e9
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v9, v38

    move/from16 v4, v41

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    .line 655
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "pid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "pid":I
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_3f3
    iget-object v5, v6, Lcom/mediatek/server/anr/AnrManagerService;->mControllerField:Ljava/lang/reflect/Field;

    iget-object v8, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_410

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .end local v4    # "pid":I
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v41    # "pid":I
    .restart local v48    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    :cond_405
    move-object/from16 v6, p0

    move-object/from16 v9, v38

    move/from16 v4, v41

    move-object/from16 v3, v48

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    .line 660
    .end local v38    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v41    # "pid":I
    .end local v48    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .restart local v3    # "anrDumpRecord":Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
    .restart local v4    # "pid":I
    .restart local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_410
    iget-object v5, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 663
    :try_start_413
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_417
    .catchall {:try_start_413 .. :try_end_417} :catchall_4e8

    if-eqz v0, :cond_42c

    .line 664
    :try_start_419
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_41d
    .catchall {:try_start_419 .. :try_end_41d} :catchall_423

    move/from16 v8, v34

    .end local v34    # "uid":I
    .local v8, "uid":I
    :try_start_41f
    invoke-virtual {v0, v15, v8}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    goto :goto_42e

    .line 694
    .end local v8    # "uid":I
    .restart local v34    # "uid":I
    :catchall_423
    move-exception v0

    move/from16 v8, v34

    move/from16 v13, p7

    move-object/from16 v7, p8

    goto/16 :goto_4ef

    .line 663
    :cond_42c
    move/from16 v8, v34

    .line 667
    .end local v34    # "uid":I
    .restart local v8    # "uid":I
    :goto_42e
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mNoteProcessANR:Ljava/lang/reflect/Method;

    iget-object v12, v6, Lcom/mediatek/server/anr/AnrManagerService;->mBatteryStatsServiceField:Ljava/lang/reflect/Field;

    iget-object v13, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v15, v13, v46

    iget-object v14, v6, Lcom/mediatek/server/anr/AnrManagerService;->mUidField:Ljava/lang/reflect/Field;

    .line 668
    invoke-virtual {v14, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    .line 667
    invoke-virtual {v0, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    if-eqz p9, :cond_472

    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_472

    .line 671
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mKill:Ljava/lang/reflect/Method;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v12, "bg anr"

    aput-object v12, v7, v46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v11

    invoke-virtual {v0, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    monitor-exit v5

    return v10

    .line 677
    :cond_472
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mMakeAppNotRespondingLocked:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p3, v1, v46
    :try_end_478
    .catchall {:try_start_41f .. :try_end_478} :catchall_4e2

    .line 681
    move-object/from16 v7, p8

    if-eqz v7, :cond_48e

    :try_start_47c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ANR "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_490

    :cond_48e
    const-string v12, "ANR"

    :goto_490
    aput-object v12, v1, v10

    .line 682
    if-eqz v3, :cond_49b

    .line 683
    iget-object v12, v3, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_49d

    :cond_49b
    const-string v12, ""

    :goto_49d
    aput-object v12, v1, v11

    .line 677
    move-object/from16 v11, p2

    invoke-virtual {v0, v11, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4d9

    .line 687
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 688
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, v6, Lcom/mediatek/server/anr/AnrManagerService;->mShowNotRespondingUiMsgField:Ljava/lang/reflect/Field;

    iget-object v12, v6, Lcom/mediatek/server/anr/AnrManagerService;->mAMS:Ljava/lang/Class;

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 689
    new-instance v1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v12, v6, Lcom/mediatek/server/anr/AnrManagerService;->aInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_4c2
    .catchall {:try_start_47c .. :try_end_4c2} :catchall_4de

    move/from16 v13, p7

    :try_start_4c4
    invoke-direct {v1, v9, v12, v13}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    iget-object v1, v6, Lcom/mediatek/server/anr/AnrManagerService;->mUiHandlerField:Ljava/lang/reflect/Field;

    iget-object v12, v6, Lcom/mediatek/server/anr/AnrManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 692
    .local v1, "mUiHandler":Landroid/os/Handler;
    iget-wide v10, v6, Lcom/mediatek/server/anr/AnrManagerService;->anrDialogDelayMs:J

    invoke-virtual {v1, v0, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4db

    .line 686
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "mUiHandler":Landroid/os/Handler;
    :cond_4d9
    move/from16 v13, p7

    .line 694
    :goto_4db
    monitor-exit v5

    .line 695
    const/4 v1, 0x1

    return v1

    .line 694
    :catchall_4de
    move-exception v0

    move/from16 v13, p7

    goto :goto_4ef

    :catchall_4e2
    move-exception v0

    move/from16 v13, p7

    move-object/from16 v7, p8

    goto :goto_4ef

    .end local v8    # "uid":I
    .restart local v34    # "uid":I
    :catchall_4e8
    move-exception v0

    move/from16 v13, p7

    move-object/from16 v7, p8

    move/from16 v8, v34

    .end local v34    # "uid":I
    .restart local v8    # "uid":I
    :goto_4ef
    monitor-exit v5
    :try_end_4f0
    .catchall {:try_start_4c4 .. :try_end_4f0} :catchall_4f1

    throw v0

    :catchall_4f1
    move-exception v0

    goto :goto_4ef
.end method

.method public startAnrManagerService(I)V
    .registers 8
    .param p1, "pid"    # I

    .line 434
    const-string v0, "AnrManager"

    const-string v1, "startAnrManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput p1, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAmsPid:I

    .line 436
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AnrMonitorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 438
    new-instance v2, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;-><init>(Lcom/mediatek/server/anr/AnrManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrHandler:Lcom/mediatek/server/anr/AnrManagerService$AnrMonitorHandler;

    .line 439
    new-instance v2, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    invoke-direct {v2, p0}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;-><init>(Lcom/mediatek/server/anr/AnrManagerService;)V

    iput-object v2, p0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrDumpManager:Lcom/mediatek/server/anr/AnrManagerService$AnrDumpManager;

    .line 440
    sget-object v2, Lcom/mediatek/server/anr/AnrManagerService;->mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 443
    const-string v2, "dalvik.vm.stack-trace-file"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/server/anr/AnrManagerService;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 445
    new-instance v4, Ljava/io/File;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 447
    .local v2, "traceFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 448
    .local v3, "traceDir":Ljava/io/File;
    if-eqz v3, :cond_62

    invoke-static {v3}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAnrManagerService SELinux.restoreconRecursive fail dir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_62
    const-string v0, "ro.vendor.have_aee_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 454
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->getInstance()Lcom/mediatek/aee/ExceptionLog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    .line 461
    :cond_76
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mKill:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 462
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mUpdateCpuStatsNow:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 463
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mNoteProcessANR:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 464
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mScheduleServiceTimeoutLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mMakeAppNotRespondingLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 466
    return-void
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1694
    .local v0, "out":Ljava/io/FileWriter;
    :try_start_6
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    .line 1696
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1697
    nop

    .line 1698
    return-void

    .line 1696
    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1697
    throw v1
.end method

.method public updateProcessStats()V
    .registers 8

    .line 1606
    sget-object v0, Lcom/mediatek/server/anr/AnrManagerService;->mAnrProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v0

    .line 1607
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1608
    .local v1, "now":J
    iget-object v3, p0, Lcom/mediatek/server/anr/AnrManagerService;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x9c4

    cmp-long v3, v3, v5

    if-lez v3, :cond_1d

    .line 1609
    iget-object v3, p0, Lcom/mediatek/server/anr/AnrManagerService;->mLastCpuUpdateTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1610
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1612
    .end local v1    # "now":J
    :cond_1d
    monitor-exit v0

    .line 1613
    return-void

    .line 1612
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public writeEvent(I)V
    .registers 4
    .param p1, "event"    # I

    .line 1506
    packed-switch p1, :pswitch_data_c

    goto :goto_b

    .line 1508
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/server/anr/AnrManagerService;->mEventBootCompleted:J

    .line 1509
    nop

    .line 1513
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x2329
        :pswitch_4
    .end packed-switch
.end method
