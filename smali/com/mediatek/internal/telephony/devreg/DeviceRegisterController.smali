.class public Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;
.super Ljava/lang/Object;
.source "DeviceRegisterController.java"


# static fields
.field private static sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;


# instance fields
.field private mHandler:[Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

.field private mSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/MtkUiccSmsController;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "controller"    # Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    .line 52
    iput-object v0, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mHandler:[Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

    .line 63
    iput-object p3, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    .line 65
    nop

    .line 66
    :try_start_b
    invoke-static {p1}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;

    move-result-object v0

    .line 67
    .local v0, "factoryBase":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    invoke-virtual {v0, p1, p0}, Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;->makeDeviceRegisterExt(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    .line 71
    .end local v0    # "factoryBase":Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
    goto :goto_21

    .line 68
    :catch_16
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    new-instance v1, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;

    invoke-direct {v1, p1, p0}, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V

    sput-object v1, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    array-length v0, p2

    new-array v0, v0, [Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mHandler:[Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    array-length v1, p2

    if-ge v0, v1, :cond_38

    .line 74
    iget-object v1, p0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mHandler:[Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

    new-instance v2, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;

    aget-object v3, p2, v0

    invoke-direct {v2, v3, p0}, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterHandler;-><init>(Lcom/android/internal/telephony/Phone;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 76
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method private static getDeviceRegisterExt()Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;
    .registers 1

    .line 120
    sget-object v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    return-object v0
.end method


# virtual methods
.method public handleAutoRegMessage(ILjava/lang/String;[B)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .line 154
    sget-object v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    if-eqz v0, :cond_7

    .line 155
    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;->handleAutoRegMessage(ILjava/lang/String;[B)V

    .line 157
    :cond_7
    return-void
.end method

.method public handleAutoRegMessage([B)V
    .registers 3
    .param p1, "pdu"    # [B

    .line 140
    sget-object v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    if-eqz v0, :cond_7

    .line 141
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;->handleAutoRegMessage([B)V

    .line 143
    :cond_7
    return-void
.end method

.method public sendDataSms(ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 19
    .param p1, "subId"    # I
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 108
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->mSmsController:Lcom/mediatek/internal/telephony/MtkUiccSmsController;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/mediatek/internal/telephony/MtkUiccSmsController;->sendData(ILjava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 117
    return-void
.end method

.method public setCdmaCardEsnOrMeid(Ljava/lang/String;)V
    .registers 3
    .param p1, "esnMeid"    # Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;->sDeviceRegisterExt:Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;

    if-eqz v0, :cond_7

    .line 130
    invoke-interface {v0, p1}, Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;->setCdmaCardEsnOrMeid(Ljava/lang/String;)V

    .line 132
    :cond_7
    return-void
.end method
