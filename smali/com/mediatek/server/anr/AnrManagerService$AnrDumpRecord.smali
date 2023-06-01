.class public Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;
.super Ljava/lang/Object;
.source "AnrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/anr/AnrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnrDumpRecord"
.end annotation


# instance fields
.field protected mAnnotation:Ljava/lang/String;

.field protected mAnrTime:J

.field protected mAppCrashing:Z

.field protected mAppInfo:Landroid/content/pm/ApplicationInfo;

.field protected mAppPid:I

.field protected mAppString:Ljava/lang/String;

.field protected mAppUid:I

.field protected mAppUserid:I

.field public mCpuInfo:Ljava/lang/String;

.field public mInfo:Ljava/lang/StringBuilder;

.field protected mIsCancelled:Z

.field protected mIsCompleted:Z

.field protected mParentAppPid:I

.field protected mParentShortComponentName:Ljava/lang/String;

.field protected mProcessName:Ljava/lang/String;

.field protected mShortComponentName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/server/anr/AnrManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/server/anr/AnrManagerService;IIILandroid/content/pm/ApplicationInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .registers 30
    .param p1, "this$0"    # Lcom/mediatek/server/anr/AnrManagerService;
    .param p2, "appPid"    # I
    .param p3, "appUid"    # I
    .param p4, "appUserid"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "appCrashing"    # Z
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "appString"    # Ljava/lang/String;
    .param p9, "shortComponentName"    # Ljava/lang/String;
    .param p10, "parentAppPid"    # I
    .param p11, "parentShortComponentName"    # Ljava/lang/String;
    .param p12, "annotation"    # Ljava/lang/String;
    .param p13, "anrTime"    # J

    .line 1053
    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->this$0:Lcom/mediatek/server/anr/AnrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 1054
    move/from16 v2, p2

    iput v2, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    .line 1055
    move/from16 v3, p3

    iput v3, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppUid:I

    .line 1056
    move/from16 v4, p4

    iput v4, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppUserid:I

    .line 1057
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 1058
    move/from16 v6, p6

    iput-boolean v6, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppCrashing:Z

    .line 1059
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mProcessName:Ljava/lang/String;

    .line 1060
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppString:Ljava/lang/String;

    .line 1061
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mShortComponentName:Ljava/lang/String;

    .line 1062
    move/from16 v10, p10

    iput v10, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentAppPid:I

    .line 1063
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mParentShortComponentName:Ljava/lang/String;

    .line 1064
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 1065
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnrTime:J

    .line 1066
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;)Z
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;

    .line 1032
    invoke-direct {p0}, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->isValid()Z

    move-result v0

    return v0
.end method

.method private isValid()Z
    .registers 3

    .line 1069
    iget v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCancelled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCompleted:Z

    if-eqz v0, :cond_d

    goto :goto_f

    .line 1074
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 1070
    :cond_f
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValid! mAppPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIsCancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnrManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AnrDumpRecord{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    iget-object v1, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mAppString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IsCancelled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/server/anr/AnrManagerService$AnrDumpRecord;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
