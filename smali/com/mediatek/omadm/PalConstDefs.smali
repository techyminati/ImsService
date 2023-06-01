.class public Lcom/mediatek/omadm/PalConstDefs;
.super Ljava/lang/Object;
.source "PalConstDefs.java"


# static fields
.field public static final ADMIN_NET_AVAILABLE:I = 0x1

.field public static final ADMIN_NET_LOST:I = 0x3

.field public static final ADMIN_NET_UNAVAILABLE:I = 0x2

.field public static final APN_CFG_IDEX:Ljava/lang/String; = "/apn_cfg_idx"

.field public static final CHILD_DEVICE:I = 0x2

.field public static final CONFIGURATION_VER_PATH:Ljava/lang/String; = "/last_update_configuration_version"

.field public static final CURRENT_DEVICE:I = 0x1

.field public static DEBUG:Z = false

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final FEATURE_PHONE:Ljava/lang/String; = "Feature Phone"

.field public static final FIRMWARE_VER_PATH:Ljava/lang/String; = "/last_update_firmware_version"

.field public static final HOST_OPERATION:Ljava/lang/String; = "Host device operation"

.field public static final IMS_DOMAIN:Ljava/lang/String; = "vzims.com"

.field public static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final MO_WORK_PATH:Ljava/lang/String; = "/data/vendor/verizon/dmclient/data"

.field public static final NOT_AVAILABLE:Ljava/lang/String; = "n/a"

.field public static final NOT_AVAILABLE_UPPERCASE:Ljava/lang/String; = "N/A"

.field public static final NOT_IDENTIFIED:Ljava/lang/String; = "is not identified"

.field public static final NOT_READY:Ljava/lang/String; = "is not ready"

.field public static final NULL_STRING:Ljava/lang/String; = "NULL"

.field public static final OPERATION_NOT_SUPPORTED:Ljava/lang/String; = "Operation not supported"

.field public static final PARENT_DEVICE:I = 0x0

.field public static final PERMISSION_DENIED:Ljava/lang/String; = "Permission denied"

.field public static final RET_ERR:I = 0x1

.field public static final RET_ERR_ARGS:I = 0x7

.field public static final RET_ERR_NOPERM:I = 0xc

.field public static final RET_ERR_NORES:I = 0xb

.field public static final RET_ERR_STATE:I = 0xa

.field public static final RET_ERR_TMOUT:I = 0xd

.field public static final RET_ERR_UNDEF:I = 0x8

.field public static final RET_SUCC:I = 0x0

.field public static final SIM_STATE:Ljava/lang/String; = "Sim state"

.field public static final SMART_DEVICE:Ljava/lang/String; = "Smart Device"

.field public static final TAG:Ljava/lang/String;

.field public static final TELEPHONYMANAGER:Ljava/lang/String; = "TelephonyManager"

.field public static final VERSION:Ljava/lang/String; = "1.2"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omadm/PalConstDefs;->DEBUG:Z

    .line 48
    const-class v0, Lcom/mediatek/omadm/PalConstDefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/PalConstDefs;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwEcxeption(I)V
    .registers 3
    .param p0, "err"    # I

    .line 92
    sparse-switch p0, :sswitch_data_22

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :sswitch_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :sswitch_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :sswitch_21
    return-void

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_21
        0x7 -> :sswitch_17
        0xa -> :sswitch_d
    .end sparse-switch
.end method
