.class public Lcom/mediatek/ims/rcsua/RcsUaService;
.super Ljava/lang/Object;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/RcsUaService$Callback;,
        Lcom/mediatek/ims/rcsua/RcsUaService$AcsRequestReason;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationMode;,
        Lcom/mediatek/ims/rcsua/RcsUaService$ImsRadioTech;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationState;
    }
.end annotation


# static fields
.field public static final ACTION_RCSUA_SERVICE_DOWN:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_DOWN"

.field public static final ACTION_RCSUA_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_UP"

.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService; = null

.field public static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REASON_DEFAULT_SMS_UNKNOWN:I = 0x0

.field public static final REASON_FT_AUTHENTICATE_FAILURE:I = 0x3

.field public static final REASON_RCS_DEFAULT_SMS:I = 0x1

.field public static final REASON_RCS_NOT_DEFAULT_SMS:I = 0x2

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field public static final REG_RADIO_3GPP:I = 0x1

.field public static final REG_RADIO_IEEE802:I = 0x2

.field public static final REG_RADIO_NONE:I = 0x0

.field public static final REG_STATE_DEREGISTERING:I = 0x3

.field public static final REG_STATE_NOT_REGISTERED:I = 0x0

.field public static final REG_STATE_REGISTERED:I = 0x2

.field public static final REG_STATE_REGISTERING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"

.field private static volatile serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# instance fields
.field private acsCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private acsSupported:Z

.field private activated:Z

.field private callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private callerContext:Landroid/content/Context;

.field private capabilities:Lcom/mediatek/ims/rcsua/Capability;

.field private clientCount:I

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private lock:Ljava/lang/Object;

.field private mRetryCount:I

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    new-instance v0, Lcom/mediatek/ims/rcsua/RcsUaService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$4;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1240
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 1250
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    .line 1251
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    .line 1252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    .line 1256
    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    .line 1074
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$2;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    .line 1111
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCallback value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerContext value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    const-string v2, "persist.vendor.service.rcs"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    .line 1116
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    new-instance v1, Landroid/os/Bundle;

    if-nez p4, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1123
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    const-string v4, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    const-string v3, "service_options"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1126
    const-string v3, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1129
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1130
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 1131
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 1132
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1133
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/mediatek/ims/rcsua/RcsUaService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService$3;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$400()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 68
    sput-object p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceDown()V

    return-void
.end method

.method static synthetic access$802(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 325
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "phoneId"    # I

    .line 335
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "startService() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1217
    move-object v0, p2

    .line 1219
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1221
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1222
    .local v2, "systemProperties":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1223
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1224
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1225
    const-string v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1226
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1227
    .local v3, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 1228
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v7

    .line 1230
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1233
    .end local v2    # "systemProperties":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v2

    .line 1235
    :goto_0
    return-object v0
.end method

.method public static isAcsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1043
    const/4 v0, 0x0

    .line 1044
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1045
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager pm  value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v4

    .line 1054
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAcsAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v2, v5

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v5
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1034
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 1036
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private notifyServiceDown()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1163
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1171
    :cond_0
    return-void
.end method

.method private notifyServiceUp()V
    .locals 2

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp to callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1151
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1159
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_1

    .line 280
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V

    sput-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 284
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 287
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 347
    const-string v0, "[RcsUaService][API]"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 352
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 356
    :goto_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 483
    const-string v0, "[RcsUaService][API]"

    const-string v1, "addCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 493
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAcsConfiguration()Z
    .locals 2

    .line 1015
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x0

    .line 1020
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1022
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v1

    .line 1023
    :goto_0
    return v0

    .line 1016
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .line 364
    const-string v0, "[RcsUaService][API]"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 369
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 373
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 843
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const/4 v0, 0x0

    .line 851
    .local v0, "value":I
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 853
    goto :goto_0

    .line 852
    :catch_0
    move-exception v1

    .line 855
    :goto_0
    return v0

    .line 846
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 865
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    const-string v0, ""

    .line 873
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 875
    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    .line 877
    :goto_0
    return-object v0

    .line 868
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 800
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    .local v0, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 810
    goto :goto_0

    .line 809
    :catch_0
    move-exception v1

    .line 811
    :goto_0
    return-object v0

    .line 803
    .end local v0    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsSwitchState()Z
    .locals 2

    .line 974
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, "state":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 981
    goto :goto_0

    .line 980
    :catch_0
    move-exception v1

    .line 982
    :goto_0
    return v0

    .line 975
    .end local v0    # "state":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveClients()[Lcom/mediatek/ims/rcsua/Client;
    .locals 5

    .line 684
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 688
    .local v0, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 689
    .local v1, "len":I
    new-array v2, v1, [Lcom/mediatek/ims/rcsua/Client;

    .line 690
    .local v2, "client":[Lcom/mediatek/ims/rcsua/Client;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 691
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Client;

    aput-object v4, v2, v3

    .line 690
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 693
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveClients client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[RcsUaService][API]"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-object v2

    .line 685
    .end local v0    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    .end local v1    # "len":I
    .end local v2    # "client":[Lcom/mediatek/ims/rcsua/Client;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAospAcsInfo()Ljava/lang/String;
    .locals 3

    .line 820
    const-string v0, ""

    .line 821
    .local v0, "info":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v1, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    const/4 v1, 0x0

    .line 829
    .local v1, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 830
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 832
    goto :goto_0

    .line 831
    :catch_0
    move-exception v2

    .line 833
    :goto_0
    return-object v0

    .line 824
    .end local v1    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ACS not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 625
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 634
    goto :goto_0

    .line 632
    :catch_0
    move-exception v1

    .line 636
    :goto_0
    return-object v0

    .line 626
    .end local v0    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    .line 703
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 709
    .local v0, "options":Landroid/os/Bundle;
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 711
    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 713
    :goto_0
    return-object v0

    .line 704
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcsConnected()Z
    .locals 2

    .line 886
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x0

    .line 894
    .local v0, "connected":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 896
    goto :goto_0

    .line 895
    :catch_0
    move-exception v1

    .line 898
    :goto_0
    return v0

    .line 889
    .end local v0    # "connected":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivated()Z
    .locals 2

    .line 646
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0

    .line 650
    :cond_0
    const/4 v0, 0x1

    .line 652
    .local v0, "activated":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 657
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1065
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 722
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$1;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :try_start_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 768
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 769
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 725
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 563
    const/4 v0, 0x0

    .line 565
    .local v0, "newClient":Lcom/mediatek/ims/rcsua/Client;
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 570
    :try_start_0
    const-string v1, "[RcsUaService][API]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",clientCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :try_start_1
    iget v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    if-nez v2, :cond_0

    .line 574
    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 577
    :cond_0
    new-instance v2, Lcom/mediatek/ims/rcsua/Client;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ims/rcsua/Client;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    move-object v0, v2

    .line 578
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V

    .line 579
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    monitor-exit v1

    .line 583
    goto :goto_0

    .line 580
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .end local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .end local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    .restart local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .restart local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .restart local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :catch_0
    move-exception v1

    .line 585
    :goto_0
    return-object v0

    .line 566
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 503
    const-string v0, "[RcsUaService][API]"

    const-string v1, "removeCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 513
    :goto_0
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 996
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1003
    goto :goto_0

    .line 1002
    :catch_0
    move-exception v1

    .line 1004
    :goto_0
    return v0

    .line 997
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSwitchState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .line 932
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x0

    .line 937
    .local v0, "result":Z
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 939
    goto :goto_0

    .line 938
    :catch_0
    move-exception v1

    .line 940
    :goto_0
    return v0

    .line 933
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcsonfiguration rcsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,rcsProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration !acsSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 959
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceIntf value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 963
    :goto_0
    return-void

    .line 956
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 666
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    :goto_0
    return-void

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopService()V
    .locals 4

    .line 295
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 304
    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 309
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 311
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 313
    :cond_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_2

    .line 314
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 316
    :cond_2
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public triggerAcsRequest(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 908
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 918
    :goto_0
    return-void

    .line 911
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerForceReregistration()V
    .locals 2

    .line 430
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerForceReregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration()V
    .locals 2

    .line 380
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 447
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 457
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRestoration()V
    .locals 2

    .line 464
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiDeregistration()V
    .locals 2

    .line 397
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiDeregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiDeregistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 407
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiRegistration()V
    .locals 2

    .line 413
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiRegistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 423
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 779
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 783
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 785
    :try_start_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 786
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 787
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    goto :goto_0

    .line 788
    :catch_0
    move-exception v1

    .line 791
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 780
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 596
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient: client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 605
    :try_start_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 606
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :cond_1
    goto :goto_0

    .line 607
    :catch_0
    move-exception v1

    .line 610
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 611
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 612
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 615
    monitor-exit v0

    .line 616
    return-void

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 523
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 533
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCapabilities(Ljava/lang/String;)V
    .locals 2
    .param p1, "featuresText"    # Ljava/lang/String;

    .line 543
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    :try_start_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
