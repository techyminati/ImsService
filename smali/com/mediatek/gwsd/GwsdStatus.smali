.class public Lcom/mediatek/gwsd/GwsdStatus;
.super Ljava/lang/Object;
.source "GwsdStatus.java"


# static fields
.field public static final ERROR_INVALID_DEFAULT_DATA_SUBSCRIPTION_ID:Ljava/lang/String; = "invalid id for default data phone"

.field public static final ERROR_INVALID_DSDS_OPERATION:Ljava/lang/String; = "can not configure mode on non default data sim when device is under dsds"

.field public static final ERROR_INVALID_PHONE_INSTANCE:Ljava/lang/String; = "invalid phone instance (null)"

.field public static final ERROR_NONE:Ljava/lang/String; = "SUCCESS"

.field public static final ERROR_OUT_OF_SERVICE:Ljava/lang/String; = "out of service on the device"

.field public static final ERROR_REPEAT_REGISTRE_LISTENER:Ljava/lang/String; = "multi listener be registered"

.field public static final ERROR_SERVICE_BUSY:Ljava/lang/String; = "service busy"

.field public static final ERROR_SIM_ABSENT:Ljava/lang/String; = "sim is absent"

.field public static final ERROR_UNKNOW:Ljava/lang/String; = "unknow error"

.field public static final STATUS_FAIL:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final SYSTEM_STATE_DEFAULT_DATA_SWITCHED:I = 0x700002

.field public static final SYSTEM_STATE_DEFAULT_DSDA_CHANGED:I = 0x700003

.field public static final SYSTEM_STATE_MODEM_RESET:I = 0x700001

.field public static final SYSTEM_STATE_MSIM_CONFIGURATION_CHANGED:I = 0x700005

.field public static final SYSTEM_STATE_OUT_OF_SERVICE:I = 0x700004


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
