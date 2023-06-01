.class public Lcom/mediatek/server/pm/PmsExtImpl;
.super Lcom/mediatek/server/pm/PmsExt;
.source "PmsExtImpl.java"


# static fields
.field private static final KEY_WORD1:Ljava/lang/String; = "benchmark"

.field private static final PRODUCT_RSC_PATH_CAP:Ljava/lang/String; = "/product"

.field private static final REMOVABLE_SYS_APP_LIST_BAK:Ljava/io/File;

.field private static final REMOVABLE_SYS_APP_LIST_SYSTEM:Ljava/io/File;

.field private static final REMOVABLE_SYS_APP_LIST_VENDOR:Ljava/io/File;

.field private static final SYS_EXT_RSC_PATH_CAP:Ljava/lang/String; = "/system_ext"

.field private static final SYS_RSC_PATH_CAP:Ljava/lang/String; = "/system"

.field static final TAG:Ljava/lang/String; = "PmsExtImpl"

.field private static final VND_RSC_PATH_CAP:Ljava/lang/String; = "/vendor"

.field private static mAppLib32InstallDir:Ljava/io/File;

.field private static sLogEnabled:Z

.field private static sProductRscPath:Ljava/lang/String;

.field private static sRemovableSysAppEnabled:Z

.field private static sRemovableSystemAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRemovableSystemAppSetBak:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSkipScanAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSysExtRscPath:Ljava/lang/String;

.field private static sSysRscPath:Ljava/lang/String;

.field private static sUninstallerAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sVndRscPath:Ljava/lang/String;


# instance fields
.field private mMediatekApplication:Landroid/content/pm/ApplicationInfo;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPowerHalWrapper:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

.field private mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    .line 117
    const-string v1, "ro.sys.current_rsc_path"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    .line 119
    const-string v1, "ro.vendor.vnd.current_rsc_path"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    .line 121
    const-string v1, "ro.product.current_rsc_path"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    .line 123
    const-string v1, "ro.sys_ext.current_rsc_path"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSetBak:Ljava/util/HashSet;

    .line 136
    const-string v1, "persist.vendor.pms_removable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    move v0, v2

    :cond_3d
    sput-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    .line 139
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc"

    const-string v2, "permissions"

    const-string v3, "pms_sysapp_removable_system_list.txt"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_SYSTEM:Ljava/io/File;

    .line 142
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v3, "pms_sysapp_removable_vendor_list.txt"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_VENDOR:Ljava/io/File;

    .line 146
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system"

    const-string v2, "pms_sysapp_removable_list_bak.txt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_BAK:Ljava/io/File;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sSkipScanAppSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 157
    invoke-direct {p0}, Lcom/mediatek/server/pm/PmsExt;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mMediatekApplication:Landroid/content/pm/ApplicationInfo;

    .line 153
    iput-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPowerHalWrapper:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    .line 160
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    const-string v1, "/system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_16

    .line 161
    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    .line 163
    :cond_16
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    const-string v2, "/vendor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 164
    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    .line 166
    :cond_22
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    const-string v2, "/product"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 167
    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    .line 169
    :cond_2e
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    const-string v2, "/system_ext"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 170
    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    .line 172
    :cond_3a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 173
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "app-lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->mAppLib32InstallDir:Ljava/io/File;

    .line 174
    return-void
.end method

.method private buildRemovableSystemAppSet()V
    .registers 4

    .line 901
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_2d

    .line 902
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_f

    .line 903
    const-string v0, "BuildRemovableSystemAppSet start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_f
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_SYSTEM:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->sGetRemovableSystemAppFromFile(Ljava/util/HashSet;Ljava/io/File;)V

    .line 906
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_VENDOR:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->sGetRemovableSystemAppFromFile(Ljava/util/HashSet;Ljava/io/File;)V

    .line 908
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSetBak:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_BAK:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->sGetRemovableSystemAppFromFile(Ljava/util/HashSet;Ljava/io/File;)V

    .line 910
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v0, :cond_2d

    .line 911
    const-string v0, "BuildRemovableSystemAppSet end"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_2d
    return-void
.end method

.method private buildSkipScanAppSet()V
    .registers 5

    .line 1235
    const-string v0, "ro.vendor.mtk_skip_pkg_file"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "fileNameStr":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v2, "PmsExtImpl"

    if-eqz v1, :cond_11

    .line 1238
    const-string v1, "BuildSkipScanAppSet start"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_11
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1242
    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSkipScanAppSet:Ljava/util/HashSet;

    invoke-static {v3, v1}, Lcom/mediatek/server/pm/PmsExtImpl;->sGetRemovableSystemAppFromFile(Ljava/util/HashSet;Ljava/io/File;)V

    .line 1244
    :cond_23
    sget-boolean v3, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v3, :cond_2c

    .line 1245
    const-string v3, "BuildSkipScanAppSet end"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_2c
    return-void
.end method

.method private buildUninstallerAppSet()V
    .registers 14

    .line 919
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_9a

    .line 920
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_f

    .line 921
    const-string v0, "buildUninstallerAppSet start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_f
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 923
    .local v0, "allUserIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_9a

    .line 925
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .local v3, "settingIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    sget-object v5, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    aget v6, v0, v2

    invoke-direct {p0, v5, v3, v6}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 931
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 932
    .local v5, "launcherIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    sget-object v7, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    aget v8, v0, v2

    invoke-direct {p0, v7, v5, v8}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 937
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 938
    .local v6, "storeIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.APP_MARKET"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    sget-object v7, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    aget v8, v0, v2

    invoke-direct {p0, v7, v6, v8}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 943
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    .local v7, "installIntent":Landroid/content/Intent;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    nop

    .line 946
    const-string v8, "package"

    const-string v9, "foo.bar"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 947
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v11, "uninstallIntent":Landroid/content/Intent;
    invoke-virtual {v11, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 952
    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    aget v8, v0, v2

    invoke-direct {p0, v4, v7, v8}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 954
    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    aget v8, v0, v2

    invoke-direct {p0, v4, v11, v8}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 957
    sget-boolean v4, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v4, :cond_96

    .line 958
    const-string v4, "buildUninstallerAppSet end"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v3    # "settingIntent":Landroid/content/Intent;
    .end local v5    # "launcherIntent":Landroid/content/Intent;
    .end local v6    # "storeIntent":Landroid/content/Intent;
    .end local v7    # "installIntent":Landroid/content/Intent;
    .end local v11    # "uninstallIntent":Landroid/content/Intent;
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 961
    .end local v0    # "allUserIds":[I
    .end local v2    # "i":I
    :cond_9a
    return-void
.end method

.method private carrierExpressInstall(IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 26
    .param p1, "defParseFlags"    # I
    .param p2, "defScanFlags"    # I
    .param p3, "currentTime"    # J
    .param p5, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p6, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 796
    move/from16 v0, p2

    .line 797
    const-string v1, "ro.vendor.mtk_carrierexpress_inst_sup"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 798
    .local v1, "isCarrierExpressInstallEnabled":Z
    if-nez v1, :cond_33

    .line 800
    const/4 v3, 0x6

    or-int/lit8 v4, p1, 0x10

    const/high16 v10, 0x10000

    or-int v5, v0, v10

    move-object/from16 v2, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 803
    const/4 v12, 0x7

    or-int/lit8 v13, p1, 0x10

    or-int v14, v0, v10

    move-object/from16 v11, p0

    move-wide/from16 v15, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v11 .. v18}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_38

    .line 809
    :cond_33
    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Lcom/mediatek/server/pm/PmsExtImpl;->scanOperatorDirLI(I)V

    .line 811
    :goto_38
    return-void
.end method

.method private configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 748
    .local v1, "on":Z
    add-int/lit8 v2, p3, 0x1

    array-length v3, p2

    if-lt v2, v3, :cond_d

    .line 749
    const-string v2, "  Invalid argument!"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75

    .line 751
    :cond_d
    aget-object v0, p2, p3

    .line 752
    add-int/lit8 v2, p3, 0x1

    aget-object v2, p2, v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 753
    const-string v2, "a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 754
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    .line 755
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    .line 756
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 757
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    .line 758
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    .line 759
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 760
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 761
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    .line 762
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    .line 763
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    .line 764
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    .line 765
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    .line 766
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    .line 767
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHARED_LIBRARIES:Z

    .line 768
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    .line 769
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    .line 770
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    .line 771
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DATA:Z

    .line 772
    sput-boolean v1, Lcom/android/server/pm/AppsFilter;->DEBUG_LOGGING:Z

    goto :goto_75

    .line 774
    :cond_48
    const-string v2, "DEBUG_LOGGING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 775
    sput-boolean v1, Lcom/android/server/pm/AppsFilter;->DEBUG_LOGGING:Z

    goto :goto_75

    .line 776
    :cond_53
    const-string v2, "DEBUG_TRACING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 777
    sput-boolean v1, Lcom/android/server/pm/AppsFilter;->DEBUG_TRACING:Z

    goto :goto_75

    .line 780
    :cond_5e
    :try_start_5e
    const-string v2, "com.android.server.pm.PackageManagerService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 781
    .local v2, "c":Ljava/lang/Class;
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 782
    .local v3, "tagField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_6e

    .line 783
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6e} :catch_6f

    .line 787
    .end local v2    # "c":Ljava/lang/Class;
    .end local v3    # "tagField":Ljava/lang/reflect/Field;
    :cond_6e
    goto :goto_75

    .line 785
    :catch_6f
    move-exception v2

    .line 786
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "set Tag fail!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_75
    return-void
.end method

.method private dumpRemovableSysApps(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sRemovableSysAppEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 889
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v1, " sRemovableSystemAppSet:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_42

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    .line 893
    :cond_42
    sget-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    const-string v1, " sUninstallerAppSet:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d

    .line 898
    :cond_6c
    return-void
.end method

.method private getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V
    .registers 8
    .param p2, "targetIntent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .line 1115
    .local p1, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    const v2, 0xc0200

    invoke-virtual {v0, p2, v1, v2, p3}, Lcom/android/server/pm/PackageManagerService;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1119
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1120
    .local v1, "size":I
    sget-boolean v2, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v2, :cond_30

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppSetByIntent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PmsExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_30
    const/4 v2, 0x1

    if-lt v1, v2, :cond_48

    .line 1123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_48

    .line 1124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1127
    .end local v2    # "i":I
    :cond_48
    return-void
.end method

.method private static isUninstallerApp(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, "ret":Z
    sget-boolean v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v1, :cond_b

    .line 1098
    sget-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1100
    :cond_b
    return v0
.end method

.method private onUpgradeRemovableSystemAppList(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/utils/WatchedArrayMap;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)Z"
        }
    .end annotation

    .line 1141
    .local p1, "oldSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p2, "newSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "settingsPackages":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1142
    .local v0, "added":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1143
    .local v1, "removed":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1144
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1145
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1146
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1147
    sget-boolean v2, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v2, :cond_40

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgradeRemovableSystemAppList: add="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    const-string v3, "PmsExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_40
    iget-object v2, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 1151
    .local v2, "allUserIds":[I
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1152
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1153
    .local v4, "updated":Z
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_77

    .line 1154
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1155
    .local v5, "removedPkg":Ljava/lang/String;
    invoke-virtual {p3, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1156
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_76

    .line 1157
    invoke-virtual {v7, v2, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v8

    .line 1159
    .local v8, "uninstalledUsers":[I
    array-length v9, v8

    if-lez v9, :cond_76

    .line 1160
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_68
    array-length v10, v8

    if-ge v9, v10, :cond_76

    .line 1162
    aget v10, v8, v9

    const-string v11, "android"

    invoke-virtual {v7, v6, v10, v11}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1165
    const/4 v4, 0x1

    .line 1160
    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    .line 1169
    .end local v5    # "removedPkg":Ljava/lang/String;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "uninstalledUsers":[I
    .end local v9    # "i":I
    :cond_76
    goto :goto_4b

    .line 1170
    :cond_77
    if-eqz v4, :cond_7e

    .line 1171
    iget-object v5, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1173
    :cond_7e
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_8a

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_8b

    :cond_8a
    const/4 v6, 0x1

    :cond_8b
    return v6
.end method

.method private readPathsFromFile(Ljava/io/File;)Ljava/util/List;
    .registers 11
    .param p1, "packagePathsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 862
    const-string v0, "PmsExtImpl"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 863
    .local v1, "length":I
    new-array v2, v1, [B

    .line 864
    .local v2, "bytes":[B
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v3, "fileContents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 867
    .local v4, "inputStream":Ljava/io/FileInputStream;
    nop

    .line 868
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 870
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 872
    .local v6, "bufferedReader":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 873
    .local v7, "receiveString":Ljava/lang/String;
    :goto_20
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_2b

    .line 874
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 876
    :cond_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2e} :catch_49
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2e} :catch_2f

    goto :goto_62

    .line 880
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "receiveString":Ljava/lang/String;
    :catch_2f
    move-exception v4

    .line 881
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not read file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 878
    .end local v4    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v4

    .line 879
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_62
    nop

    .line 883
    :goto_63
    return-object v3
.end method

.method private static sGetRemovableSystemAppFromFile(Ljava/util/HashSet;Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1007
    .local p0, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "PmsExtImpl"

    const/4 v1, 0x0

    .line 1008
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1010
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1011
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 1016
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1018
    :cond_16
    :goto_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_43

    .line 1019
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1020
    .end local v4    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1021
    sget-boolean v4, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v4, :cond_3f

    .line 1022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_3f
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_42} :catch_88
    .catchall {:try_start_4 .. :try_end_42} :catchall_86

    goto :goto_16

    .line 1030
    .end local v3    # "line":Ljava/lang/String;
    :cond_43
    nop

    .line 1031
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1033
    nop

    .line 1034
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_4c

    .line 1038
    :cond_4b
    :goto_4b
    goto :goto_9b

    .line 1036
    :catch_4c
    move-exception v3

    .line 1037
    .local v3, "io":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v3    # "io":Ljava/io/IOException;
    goto :goto_9b

    .line 1013
    :cond_55
    :try_start_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6e} :catch_88
    .catchall {:try_start_55 .. :try_end_6e} :catchall_86

    .line 1030
    if-eqz v2, :cond_76

    .line 1031
    :try_start_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_76

    .line 1036
    :catch_74
    move-exception v3

    goto :goto_7c

    .line 1033
    :cond_76
    :goto_76
    if-eqz v1, :cond_84

    .line 1034
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7b} :catch_74

    goto :goto_84

    .line 1037
    .restart local v3    # "io":Ljava/io/IOException;
    :goto_7c
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 1038
    .end local v3    # "io":Ljava/io/IOException;
    :cond_84
    :goto_84
    nop

    .line 1014
    :goto_85
    return-void

    .line 1029
    :catchall_86
    move-exception v3

    goto :goto_9c

    .line 1026
    :catch_88
    move-exception v3

    .line 1027
    .restart local v3    # "io":Ljava/io/IOException;
    :try_start_89
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 1030
    .end local v3    # "io":Ljava/io/IOException;
    if-eqz v2, :cond_95

    .line 1031
    :try_start_92
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1033
    :cond_95
    if-eqz v1, :cond_4b

    .line 1034
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_4c

    goto :goto_4b

    .line 1040
    :goto_9b
    return-void

    .line 1030
    :goto_9c
    if-eqz v2, :cond_a4

    .line 1031
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_a4

    .line 1036
    :catch_a2
    move-exception v4

    goto :goto_aa

    .line 1033
    :cond_a4
    :goto_a4
    if-eqz v1, :cond_b2

    .line 1034
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a9} :catch_a2

    goto :goto_b2

    .line 1037
    .local v4, "io":Ljava/io/IOException;
    :goto_aa
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 1038
    .end local v4    # "io":Ljava/io/IOException;
    :cond_b2
    :goto_b2
    nop

    .line 1039
    :goto_b3
    throw v3
.end method

.method private static sWriteRemovableSystemAppToFile(Ljava/util/HashSet;Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1052
    .local p0, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "PmsExtImpl"

    const/4 v1, 0x0

    .line 1053
    .local v1, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 1055
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1056
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1058
    :cond_d
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v1, v3

    .line 1059
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 1060
    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_4f

    .line 1065
    :cond_23
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1066
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1067
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1068
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1070
    .end local v4    # "next":Ljava/lang/String;
    goto :goto_27

    .line 1071
    :cond_3a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_6b
    .catchall {:try_start_4 .. :try_end_3d} :catchall_69

    .line 1076
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 1077
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1079
    nop

    .line 1080
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_46

    .line 1084
    :cond_45
    :goto_45
    goto :goto_7e

    .line 1082
    :catch_46
    move-exception v3

    .line 1083
    .local v3, "io":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .end local v3    # "io":Ljava/io/IOException;
    goto :goto_7e

    .line 1061
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_6b
    .catchall {:try_start_4f .. :try_end_57} :catchall_69

    .line 1076
    nop

    .line 1077
    :try_start_58
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1079
    nop

    .line 1080
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5f} :catch_60

    .line 1084
    goto :goto_68

    .line 1082
    :catch_60
    move-exception v3

    .line 1083
    .restart local v3    # "io":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v3    # "io":Ljava/io/IOException;
    :goto_68
    return-void

    .line 1075
    :catchall_69
    move-exception v3

    goto :goto_7f

    .line 1072
    :catch_6b
    move-exception v3

    .line 1073
    .restart local v3    # "io":Ljava/io/IOException;
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_69

    .line 1076
    .end local v3    # "io":Ljava/io/IOException;
    if-eqz v2, :cond_78

    .line 1077
    :try_start_75
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1079
    :cond_78
    if-eqz v1, :cond_45

    .line 1080
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_46

    goto :goto_45

    .line 1086
    :goto_7e
    return-void

    .line 1076
    :goto_7f
    if-eqz v2, :cond_87

    .line 1077
    :try_start_81
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    goto :goto_87

    .line 1082
    :catch_85
    move-exception v4

    goto :goto_8d

    .line 1079
    :cond_87
    :goto_87
    if-eqz v1, :cond_95

    .line 1080
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_85

    goto :goto_95

    .line 1083
    .local v4, "io":Ljava/io/IOException;
    :goto_8d
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 1084
    .end local v4    # "io":Ljava/io/IOException;
    :cond_95
    :goto_95
    nop

    .line 1085
    :goto_96
    throw v3
.end method

.method private scanCxpApp(Ljava/io/File;Ljava/lang/String;I)V
    .registers 26
    .param p1, "uniPath"    # Ljava/io/File;
    .param p2, "opFileName"    # Ljava/lang/String;
    .param p3, "scanFlags"    # I

    .line 834
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 835
    .local v4, "opFilePath":Ljava/io/File;
    invoke-direct {v1, v4}, Lcom/mediatek/server/pm/PmsExtImpl;->readPathsFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 836
    .local v5, "appPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    .line 837
    .local v6, "startScanTime":J
    const-wide/16 v8, 0x0

    .line 838
    .local v8, "endScanTime":J
    const/4 v0, 0x0

    move-wide v9, v8

    move-wide v7, v6

    move v6, v0

    .end local v8    # "endScanTime":J
    .local v6, "i":I
    .local v7, "startScanTime":J
    .local v9, "endScanTime":J
    :goto_18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_dc

    .line 839
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 840
    .local v11, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    .line 843
    .local v15, "file":Ljava/io/File;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "scan package: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " , start at: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "ms."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "PmsExtImpl"

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :try_start_56
    iget-object v0, v1, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;
    :try_end_58
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_56 .. :try_end_58} :catch_78

    const/16 v16, 0x11

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v12

    move-object v12, v0

    move-object v1, v13

    move-object v13, v15

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v21, v15

    .end local v15    # "file":Ljava/io/File;
    .local v21, "file":Ljava/io/File;
    move/from16 v15, p3

    move-wide/from16 v16, v17

    move-object/from16 v18, v19

    :try_start_6e
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/pm/PackageManagerService;->scanPackageTracedLI(Ljava/io/File;IIJLandroid/os/UserHandle;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_71
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6e .. :try_end_71} :catch_76

    .line 852
    move-object/from16 v14, v20

    move-object/from16 v13, v21

    goto :goto_a3

    .line 850
    :catch_76
    move-exception v0

    goto :goto_7f

    .end local v21    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :catch_78
    move-exception v0

    move-object/from16 v20, v12

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v21, v15

    .line 851
    .end local v15    # "file":Ljava/io/File;
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v21    # "file":Ljava/io/File;
    :goto_7f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v21

    .end local v21    # "file":Ljava/io/File;
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, v20

    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :goto_a3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , end at: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms. elapsed time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v9, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    .end local v11    # "path":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    goto/16 :goto_18

    .line 859
    .end local v6    # "i":I
    :cond_dc
    return-void
.end method

.method private scanOperatorDirLI(I)V
    .registers 8
    .param p1, "scanFlags"    # I

    .line 814
    const-string v0, "persist.vendor.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "opStr":Ljava/lang/String;
    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_11

    goto :goto_4f

    .line 818
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usp-apks-path-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "opFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "/custom/usp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    .local v3, "customUniDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 821
    invoke-direct {p0, v3, v2, p1}, Lcom/mediatek/server/pm/PmsExtImpl;->scanCxpApp(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_54

    .line 823
    :cond_38
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/usp"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 824
    .local v4, "systemUniDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 825
    invoke-direct {p0, v4, v2, p1}, Lcom/mediatek/server/pm/PmsExtImpl;->scanCxpApp(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_54

    .line 827
    :cond_49
    const-string v5, "No Carrier Express Pack directory."

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 816
    .end local v2    # "opFileName":Ljava/lang/String;
    .end local v3    # "customUniDir":Ljava/io/File;
    .end local v4    # "systemUniDir":Ljava/io/File;
    :cond_4f
    :goto_4f
    const-string v2, "No operater defined."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_54
    return-void
.end method

.method private updateUninstallerAppSetWithPkg(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 972
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_7a

    if-eqz p1, :cond_7a

    .line 973
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_25

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already in set:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 977
    :cond_25
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v0, :cond_45

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUninstallerAppSetWithPkg for:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_45
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 983
    .local v0, "launcherIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    invoke-direct {p0, v3, v0, p2}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 988
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 989
    .local v2, "storeIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.APP_MARKET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sUninstallerAppSet:Ljava/util/HashSet;

    invoke-direct {p0, v3, v2, p2}, Lcom/mediatek/server/pm/PmsExtImpl;->getAppSetByIntent(Ljava/util/HashSet;Landroid/content/Intent;I)V

    .line 992
    sget-boolean v3, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v3, :cond_7a

    .line 993
    const-string v3, "updateUninstallerAppSetWithPkg end"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v0    # "launcherIntent":Landroid/content/Intent;
    .end local v2    # "storeIntent":Landroid/content/Intent;
    :cond_7a
    return-void
.end method


# virtual methods
.method public checkBenchmark(Landroid/content/pm/PackageParser$Package;)V
    .registers 16
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "isNeedAdd":Z
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1180
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "benchmark"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "care package name is "

    const-string v5, "PmsExtImpl"

    if-eqz v3, :cond_24

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v0, 0x1

    .line 1185
    :cond_24
    if-nez v0, :cond_58

    .line 1186
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1187
    .local v6, "requestedPermission":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requestedPermission = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v0, 0x1

    .line 1191
    goto :goto_58

    .line 1193
    .end local v6    # "requestedPermission":Ljava/lang/String;
    :cond_57
    goto :goto_2c

    .line 1196
    :cond_58
    :goto_58
    if-nez v0, :cond_8e

    .line 1197
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    .line 1198
    .local v6, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 1199
    .local v7, "className":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ActivityClassName = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, 0x1

    .line 1203
    goto :goto_8e

    .line 1205
    .end local v6    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v7    # "className":Ljava/lang/String;
    :cond_8d
    goto :goto_60

    .line 1208
    :cond_8e
    :goto_8e
    if-nez v0, :cond_e6

    .line 1209
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    .line 1210
    .local v6, "receiver":Landroid/content/pm/PackageParser$Activity;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1211
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countCategories()I

    move-result v9

    .line 1212
    .local v9, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b9
    if-ge v10, v9, :cond_e4

    .line 1213
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getCategory(I)Ljava/lang/String;

    move-result-object v11

    .line 1214
    .local v11, "category":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e1

    .line 1215
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " category ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v0, 0x1

    .line 1218
    goto :goto_e4

    .line 1212
    .end local v11    # "category":Ljava/lang/String;
    :cond_e1
    add-int/lit8 v10, v10, 0x1

    goto :goto_b9

    .line 1221
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v9    # "count":I
    .end local v10    # "i":I
    :cond_e4
    :goto_e4
    goto :goto_a8

    .line 1222
    .end local v6    # "receiver":Landroid/content/pm/PackageParser$Activity;
    :cond_e5
    goto :goto_96

    .line 1225
    :cond_e6
    if-eqz v0, :cond_100

    .line 1226
    iget-object v2, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPowerHalWrapper:Lcom/mediatek/powerhalwrapper/PowerHalWrapper;

    if-eqz v2, :cond_100

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSportsApk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_100
    return-void
.end method

.method public checkMtkResPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 379
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 380
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mMediatekApplication:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_17

    .line 386
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mMediatekApplication:Landroid/content/pm/ApplicationInfo;

    goto :goto_27

    .line 381
    :cond_17
    const-string v0, "PmsExtImpl"

    const-string v1, "Core mediatek package being redefined. Skipping."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x5

    const-string v2, "Core android package being redefined. Skipping."

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 388
    :cond_27
    :goto_27
    return-void
.end method

.method public customizeDeletePkg([ILjava/lang/String;IIZ)I
    .registers 21
    .param p1, "users"    # [I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "delFlags"    # I
    .param p5, "removedBySystem"    # Z

    .line 564
    move-object/from16 v0, p1

    const/4 v1, 0x1

    .line 565
    .local v1, "returnCode":I
    and-int/lit8 v9, p4, -0x3

    .line 566
    .local v9, "userFlags":I
    array-length v10, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_8
    if-ge v11, v10, :cond_40

    aget v12, v0, v11

    .line 567
    .local v12, "userId":I
    move-object v13, p0

    iget-object v2, v13, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    move/from16 v14, p3

    int-to-long v4, v14

    move-object/from16 v3, p2

    move v6, v12

    move v7, v9

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v1

    .line 569
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3d

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package delete failed for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", returnCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PmsExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v12    # "userId":I
    :cond_3d
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 574
    :cond_40
    move-object v13, p0

    move/from16 v14, p3

    return v1
.end method

.method public customizeDeletePkgFlags(ILjava/lang/String;)I
    .registers 5
    .param p1, "deleteFlags"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 553
    move v0, p1

    .line 554
    .local v0, "newDelFlags":I
    invoke-virtual {p0, p2}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 556
    or-int/lit8 v0, v0, 0x4

    .line 558
    :cond_9
    return v0
.end method

.method public customizeInstallPkgFlags(ILandroid/content/pm/PackageInfoLite;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/UserHandle;)I
    .registers 11
    .param p1, "installFlags"    # I
    .param p2, "pkgLite"    # Landroid/content/pm/PackageInfoLite;
    .param p4, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/PackageInfoLite;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/os/UserHandle;",
            ")I"
        }
    .end annotation

    .line 503
    .local p3, "settingsPackages":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move v0, p1

    .line 504
    .local v0, "ret":I
    iget-object v1, p2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 505
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_69

    .line 506
    iget-object v2, p2, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 507
    iget-object v2, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 508
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    const/4 v3, 0x1

    .line 507
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v2

    .line 509
    .local v2, "installedUsers":[I
    sget-boolean v3, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v4, "PmsExtImpl"

    if-eqz v3, :cond_44

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUser()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " installedUsers="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_44
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-eq p4, v3, :cond_52

    .line 516
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 515
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_69

    .line 517
    :cond_52
    if-eqz v2, :cond_69

    array-length v3, v2

    iget-object v5, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 518
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v5, v5

    if-eq v3, v5, :cond_69

    .line 519
    nop

    .line 520
    const-string v3, "built in app, set replace and allow downgrade"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    .line 527
    or-int/lit8 v0, v0, 0x2

    .line 532
    .end local v2    # "installedUsers":[I
    :cond_69
    return v0
.end method

.method public dumpCmdHandle(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .line 580
    const/4 v0, 0x1

    .line 581
    .local v0, "ret":Z
    const-string v1, "log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 582
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/server/pm/PmsExtImpl;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_1d

    .line 583
    :cond_d
    const-string v1, "removable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 584
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/server/pm/PmsExtImpl;->dumpRemovableSysApps(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_1d

    .line 586
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mediatek/server/pm/PmsExt;->dumpCmdHandle(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z

    move-result v0

    .line 588
    :goto_1d
    return v0
.end method

.method public init(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;)V
    .registers 3
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "ums"    # Lcom/android/server/pm/UserManagerService;

    .line 178
    iput-object p1, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 179
    iput-object p2, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 180
    return-void
.end method

.method public initAfterScan(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "settingsPackages":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_4c

    .line 478
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_f

    .line 479
    const-string v0, "initAfterScan start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_f
    invoke-direct {p0}, Lcom/mediatek/server/pm/PmsExtImpl;->buildUninstallerAppSet()V

    .line 481
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 482
    :cond_22
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSetBak:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 483
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSetBak:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    invoke-direct {p0, v0, v2, p1}, Lcom/mediatek/server/pm/PmsExtImpl;->onUpgradeRemovableSystemAppList(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/utils/WatchedArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 486
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_BAK:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->sWriteRemovableSystemAppToFile(Ljava/util/HashSet;Ljava/io/File;)V

    goto :goto_43

    .line 490
    :cond_3c
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->REMOVABLE_SYS_APP_LIST_BAK:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->sWriteRemovableSystemAppToFile(Ljava/util/HashSet;Ljava/io/File;)V

    .line 494
    :cond_43
    :goto_43
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v0, :cond_4c

    .line 495
    const-string v0, "initAfterScan end"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_4c
    return-void
.end method

.method public initBeforeScan()V
    .registers 3

    .line 458
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    const-string v1, "PmsExtImpl"

    if-eqz v0, :cond_b

    .line 459
    const-string v0, "initBeforeScan start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_b
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_12

    .line 461
    invoke-direct {p0}, Lcom/mediatek/server/pm/PmsExtImpl;->buildRemovableSystemAppSet()V

    .line 465
    :cond_12
    invoke-direct {p0}, Lcom/mediatek/server/pm/PmsExtImpl;->buildSkipScanAppSet()V

    .line 467
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v0, :cond_1e

    .line 468
    const-string v0, "initBeforeScan end"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1e
    return-void
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "ret":Z
    sget-boolean v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v1, :cond_b

    .line 726
    sget-object v1, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 728
    :cond_b
    return v0
.end method

.method public needSkipAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 424
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_7

    goto :goto_16

    .line 428
    :cond_7
    const/4 v0, 0x0

    .line 429
    .local v0, "ret":Z
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    .line 430
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v0

    .line 432
    :cond_15
    return v0

    .line 425
    .end local v0    # "ret":Z
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public needSkipScanning(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .registers 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p2, "updatedPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 394
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sSkipScanAppSet:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "PmsExtImpl"

    if-eqz v0, :cond_28

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip scan package:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v1

    .line 398
    :cond_28
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_85

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    if-nez p3, :cond_85

    if-nez p2, :cond_85

    .line 400
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 401
    sget-object v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSystemAppSetBak:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New added removable sys app by OTA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v3

    .line 406
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip scanning uninstalled sys package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v1

    .line 408
    :cond_85
    if-nez p3, :cond_a2

    if-eqz p2, :cond_a2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip scanning uninstalled package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return v1

    .line 411
    :cond_a2
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_e9

    if-eqz p1, :cond_e9

    if-eqz p3, :cond_e9

    .line 412
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/system/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 413
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip scanning the sys package which uninstalled before, \n but then installed later: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v1

    .line 419
    :cond_e9
    return v3
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I

    .line 447
    nop

    .line 450
    invoke-direct {p0, p1, p3}, Lcom/mediatek/server/pm/PmsExtImpl;->updateUninstallerAppSetWithPkg(Ljava/lang/String;I)V

    .line 451
    return-void
.end method

.method public scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 20
    .param p1, "index"    # I
    .param p2, "parseFlags"    # I
    .param p3, "scanFlags"    # I
    .param p4, "currentTime"    # J
    .param p6, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p7, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 230
    move v1, p1

    const/4 v0, 0x0

    .line 232
    .local v0, "targetFile":Ljava/io/File;
    const-string v2, "framework"

    const-string v3, "app"

    const-string v4, "priv-app"

    const-string v5, "overlay"

    const-string v6, "plugin"

    packed-switch v1, :pswitch_data_1ae

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown index for ext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PmsExtImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_192

    .line 331
    :pswitch_27
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 332
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 326
    :pswitch_39
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 327
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 321
    :pswitch_4b
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 322
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 316
    :pswitch_5d
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 317
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 311
    :pswitch_6f
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 312
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 306
    :pswitch_81
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 307
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 301
    :pswitch_93
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 302
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 296
    :pswitch_a5
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 297
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 291
    :pswitch_b7
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 292
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 286
    :pswitch_c9
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 287
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 281
    :pswitch_db
    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_192

    .line 282
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v2, v0

    goto/16 :goto_193

    .line 276
    :pswitch_ee
    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_192

    .line 277
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v2, v0

    goto/16 :goto_193

    .line 271
    :pswitch_101
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 272
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sVndRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 266
    :pswitch_113
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 267
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sProductRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 261
    :pswitch_125
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 262
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysExtRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_193

    .line 256
    :pswitch_137
    sget-object v2, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 257
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->sSysRscPath:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_193

    .line 253
    :pswitch_148
    new-instance v2, Ljava/io/File;

    const-string v3, "/custom/plugin"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 254
    goto :goto_193

    .line 250
    :pswitch_151
    new-instance v2, Ljava/io/File;

    const-string v3, "/custom/app"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 251
    goto :goto_193

    .line 247
    :pswitch_15a
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 248
    goto :goto_193

    .line 244
    :pswitch_165
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 245
    goto :goto_193

    .line 240
    :pswitch_170
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/operator/app"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v2

    .line 242
    goto :goto_193

    .line 237
    :pswitch_17d
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 238
    move-object v2, v0

    goto :goto_193

    .line 234
    :pswitch_189
    new-instance v2, Ljava/io/File;

    const-string v3, "/custom/framework"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 235
    goto :goto_193

    .line 339
    :cond_192
    :goto_192
    move-object v2, v0

    .end local v0    # "targetFile":Ljava/io/File;
    .local v2, "targetFile":Ljava/io/File;
    :goto_193
    if-eqz v2, :cond_1ac

    .line 341
    :try_start_195
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_195 .. :try_end_199} :catch_19b

    move-object v2, v0

    .line 344
    goto :goto_19c

    .line 342
    :catch_19b
    move-exception v0

    .line 345
    :goto_19c
    move-object v11, p0

    iget-object v3, v11, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object v4, v2

    move v5, p2

    move v6, p3

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/PackageManagerService;->scanDirTracedLI(Ljava/io/File;IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1ad

    .line 339
    :cond_1ac
    move-object v11, p0

    .line 348
    :goto_1ad
    return-void

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_189
        :pswitch_17d
        :pswitch_170
        :pswitch_165
        :pswitch_15a
        :pswitch_151
        :pswitch_148
        :pswitch_137
        :pswitch_125
        :pswitch_113
        :pswitch_101
        :pswitch_ee
        :pswitch_db
        :pswitch_c9
        :pswitch_b7
        :pswitch_a5
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method

.method public scanDirLI(IZIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 19
    .param p1, "partitionType"    # I
    .param p2, "isScanOverlay"    # Z
    .param p3, "parseFlags"    # I
    .param p4, "scanFlags"    # I
    .param p5, "currentTime"    # J
    .param p7, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p8, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 185
    const/high16 v0, 0x800000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    .line 186
    return-void

    .line 188
    :cond_6
    const/4 v0, -0x1

    .line 189
    .local v0, "index":I
    const/high16 v1, 0x20000

    and-int/2addr v1, p4

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    move v8, v1

    .line 190
    .local v8, "isPrivApp":Z
    packed-switch p1, :pswitch_data_64

    :pswitch_13
    move v9, v0

    goto :goto_54

    .line 213
    :pswitch_15
    if-eqz p2, :cond_1b

    .line 214
    const/16 v0, 0x9

    move v9, v0

    goto :goto_54

    .line 216
    :cond_1b
    if-eqz v8, :cond_20

    const/16 v1, 0x10

    goto :goto_22

    :cond_20
    const/16 v1, 0x11

    :goto_22
    move v0, v1

    .line 218
    move v9, v0

    goto :goto_54

    .line 206
    :pswitch_25
    if-eqz p2, :cond_2b

    .line 207
    const/16 v0, 0xa

    move v9, v0

    goto :goto_54

    .line 209
    :cond_2b
    if-eqz v8, :cond_30

    const/16 v1, 0x12

    goto :goto_32

    :cond_30
    const/16 v1, 0x13

    :goto_32
    move v0, v1

    .line 211
    move v9, v0

    goto :goto_54

    .line 199
    :pswitch_35
    if-eqz p2, :cond_3b

    .line 200
    const/16 v0, 0xb

    move v9, v0

    goto :goto_54

    .line 202
    :cond_3b
    if-eqz v8, :cond_40

    const/16 v1, 0x14

    goto :goto_42

    :cond_40
    const/16 v1, 0x15

    :goto_42
    move v0, v1

    .line 204
    move v9, v0

    goto :goto_54

    .line 192
    :pswitch_45
    if-eqz p2, :cond_4b

    .line 193
    const/16 v0, 0x8

    move v9, v0

    goto :goto_54

    .line 195
    :cond_4b
    if-eqz v8, :cond_50

    const/16 v1, 0xe

    goto :goto_52

    :cond_50
    const/16 v1, 0xf

    :goto_52
    move v0, v1

    .line 197
    move v9, v0

    .line 222
    .end local v0    # "index":I
    .local v9, "index":I
    :goto_54
    if-lez v9, :cond_63

    .line 223
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, v9

    move v2, p3

    move v3, p4

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 225
    :cond_63
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_45
        :pswitch_35
        :pswitch_13
        :pswitch_13
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method

.method public scanMoreDirLi(IILcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .registers 23
    .param p1, "defParseFlags"    # I
    .param p2, "defScanFlags"    # I
    .param p3, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 354
    or-int/lit8 v2, p1, 0x10

    const/high16 v8, 0x10000

    or-int v3, p2, v8

    const/16 v1, 0x16

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 357
    or-int/lit8 v11, p1, 0x10

    or-int v12, p2, v8

    const/4 v10, 0x4

    const-wide/16 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v16}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 360
    or-int/lit8 v2, p1, 0x10

    or-int v0, p2, v8

    const/high16 v9, 0x80000

    or-int v3, v0, v9

    const/16 v1, 0x17

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 363
    or-int/lit8 v12, p1, 0x10

    or-int v0, p2, v8

    or-int v13, v0, v9

    const/4 v11, 0x5

    const-wide/16 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v10 .. v17}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 366
    or-int/lit8 v2, p1, 0x10

    or-int v0, p2, v8

    or-int v3, v0, v9

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 369
    or-int/lit8 v11, p1, 0x10

    or-int v0, p2, v8

    or-int/lit8 v12, v0, 0x1

    const/4 v10, 0x1

    const-wide/16 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v16}, Lcom/mediatek/server/pm/PmsExtImpl;->scanDirLI(IIIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 372
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/server/pm/PmsExtImpl;->carrierExpressInstall(IIJLcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 374
    return-void
.end method

.method public updateActivityInfoForRemovable(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    if-eqz p1, :cond_17

    .line 674
    nop

    .line 675
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 674
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/server/pm/PmsExtImpl;->updateApplicationInfoForRemovable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 678
    :cond_17
    return-object p1
.end method

.method public updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "oldAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 602
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_24

    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 604
    invoke-virtual {p0, v0}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_24

    .line 607
    :cond_15
    iget-object v0, p0, Lcom/mediatek/server/pm/PmsExtImpl;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 607
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/server/pm/PmsExtImpl;->updateApplicationInfoForRemovable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 605
    :cond_24
    :goto_24
    return-object p1
.end method

.method public updateApplicationInfoForRemovable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .registers 15
    .param p1, "nameForUid"    # Ljava/lang/String;
    .param p2, "oldAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 624
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_bf

    if-nez p2, :cond_8

    goto/16 :goto_bf

    .line 627
    :cond_8
    const/4 v0, 0x0

    .line 628
    .local v0, "clearSystemFlag":Z
    const/4 v1, 0x0

    .line 629
    .local v1, "newAppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 630
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_ad

    .line 631
    invoke-virtual {p0, v2}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 632
    move-object v3, p1

    .line 633
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_ad

    .line 634
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "strs":[Ljava/lang/String;
    array-length v5, v4

    const-string v6, "PmsExtImpl"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_33

    .line 636
    aget-object v5, v4, v7

    invoke-static {v5}, Lcom/mediatek/server/pm/PmsExtImpl;->isUninstallerApp(Ljava/lang/String;)Z

    move-result v0

    goto :goto_85

    .line 637
    :cond_33
    array-length v5, v4

    if-le v5, v8, :cond_85

    .line 639
    aget-object v5, v4, v8

    const-string v9, "1000"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 640
    if-nez v0, :cond_85

    .line 643
    :try_start_40
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    aget-object v9, v4, v8

    .line 644
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 645
    .local v5, "pkgs":[Ljava/lang/String;
    array-length v9, v5

    :goto_53
    if-ge v7, v9, :cond_85

    aget-object v10, v5, v7

    .line 646
    .local v10, "pkg":Ljava/lang/String;
    invoke-static {v10}, Lcom/mediatek/server/pm/PmsExtImpl;->isUninstallerApp(Ljava/lang/String;)Z

    move-result v11

    move v0, v11

    .line 647
    if-eqz v0, :cond_81

    .line 648
    sget-boolean v7, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v7, :cond_85

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "shared uid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_80} :catch_84

    goto :goto_85

    .line 645
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 653
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_84
    move-exception v5

    .line 656
    :cond_85
    :goto_85
    sget-boolean v5, Lcom/mediatek/server/pm/PmsExtImpl;->sLogEnabled:Z

    if-eqz v5, :cond_ad

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "judge for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " clear ? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_ad
    if-eqz v0, :cond_be

    if-eqz p2, :cond_be

    .line 662
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, p2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object v1, v3

    .line 663
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, -0x82

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 665
    return-object v1

    .line 667
    :cond_be
    return-object p2

    .line 625
    .end local v0    # "clearSystemFlag":Z
    .end local v1    # "newAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_bf
    :goto_bf
    return-object p2
.end method

.method public updateNativeLibDir(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "codePath"    # Ljava/lang/String;

    .line 733
    const/4 v0, 0x0

    if-eqz p2, :cond_25

    const-string v1, "vendor/operator/app"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 734
    nop

    .line 735
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerService;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "apkName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mediatek/server/pm/PmsExtImpl;->mAppLib32InstallDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 738
    iput-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    .line 739
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 740
    const/4 v0, 0x1

    return v0

    .line 742
    .end local v1    # "apkName":Ljava/lang/String;
    :cond_25
    return v0
.end method

.method public updatePackageInfoForRemovable(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "oldPkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 707
    sget-boolean v0, Lcom/mediatek/server/pm/PmsExtImpl;->sRemovableSysAppEnabled:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_7

    goto :goto_10

    .line 710
    :cond_7
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/mediatek/server/pm/PmsExtImpl;->updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 711
    return-object p1

    .line 708
    :cond_10
    :goto_10
    return-object p1
.end method

.method public updatePackageSettings(ILjava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "newPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p4, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p5, "allUsers"    # [I
    .param p6, "installerPackageName"    # Ljava/lang/String;

    .line 539
    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    .line 540
    invoke-virtual {p0, p2}, Lcom/mediatek/server/pm/PmsExtImpl;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 541
    array-length v0, p5

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_20

    aget v3, p5, v2

    .line 542
    .local v3, "currentUserId":I
    const/4 v4, 0x1

    invoke-virtual {p4, v4, v3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 543
    invoke-virtual {p4, v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 541
    .end local v3    # "currentUserId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 549
    :cond_20
    return-void
.end method

.method public updateResolveInfoListForRemovable(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    if-eqz p1, :cond_2f

    .line 685
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 687
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 689
    .local v1, "info":Landroid/content/pm/LauncherActivityInfoInternal;
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 690
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 690
    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 689
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/server/pm/PmsExtImpl;->updateApplicationInfoForRemovable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_6

    .line 695
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    .end local v1    # "info":Landroid/content/pm/LauncherActivityInfoInternal;
    :cond_2f
    return-object p1
.end method
