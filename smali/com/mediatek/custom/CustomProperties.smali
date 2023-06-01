.class public Lcom/mediatek/custom/CustomProperties;
.super Ljava/lang/Object;
.source "CustomProperties.java"


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "HostName"

.field public static final MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field public static final MODEL:Ljava/lang/String; = "Model"

.field public static final MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final MODULE_BROWSER:Ljava/lang/String; = "browser"

.field public static final MODULE_CMMB:Ljava/lang/String; = "cmmb"

.field public static final MODULE_DM:Ljava/lang/String; = "dm"

.field public static final MODULE_FMTRANSMITTER:Ljava/lang/String; = "fmtransmitter"

.field public static final MODULE_HTTP_STREAMING:Ljava/lang/String; = "http_streaming"

.field public static final MODULE_MMS:Ljava/lang/String; = "mms"

.field public static final MODULE_RTSP_STREAMING:Ljava/lang/String; = "rtsp_streaming"

.field public static final MODULE_SYSTEM:Ljava/lang/String; = "system"

.field public static final MODULE_WLAN:Ljava/lang/String; = "wlan"

.field public static final PROP_MODULE_MAX:I = 0x20

.field public static final PROP_NAME_MAX:I = 0x40

.field public static final RDS_VALUE:Ljava/lang/String; = "RDSValue"

.field public static final SSID:Ljava/lang/String; = "SSID"

.field public static final UAPROF_URL:Ljava/lang/String; = "UAProfileURL"

.field public static final USER_AGENT:Ljava/lang/String; = "UserAgent"

.field static mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 137
    const-string v0, "custom_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "/system/framework/CustomPropInterface.jar"

    invoke-direct {v0, v2, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/mediatek/custom/CustomProperties;->mLoader:Ljava/lang/ClassLoader;

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 179
    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_b

    goto :goto_13

    .line 180
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "module.length >32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_13
    :goto_13
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_22

    .line 186
    invoke-static {p0, p1, p2}, Lcom/mediatek/custom/CustomProperties;->native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name.length > 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static loadInterface()Ljava/lang/Class;
    .registers 4

    .line 193
    :try_start_0
    sget-object v0, Lcom/mediatek/custom/CustomProperties;->mLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.mediatek.custom.CustomPropInterface"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 197
    .local v0, "clazz":Ljava/lang/Class;
    goto :goto_f

    .line 194
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_9
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .line 196
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 199
    .end local v1    # "clazz":Ljava/lang/Class;
    .local v0, "clazz":Ljava/lang/Class;
    :goto_f
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CustomProp]loadInterface->clazz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    return-object v0
.end method

.method private static native native_get_string(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
