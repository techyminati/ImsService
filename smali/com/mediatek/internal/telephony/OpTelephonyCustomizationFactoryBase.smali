.class public Lcom/mediatek/internal/telephony/OpTelephonyCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpTelephonyCustomizationFactoryBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDataConnectionExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDataSubSelectorOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/IDataSubSelectorOPExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/DataSubSelectorOpExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDeviceRegisterExt(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)Lcom/mediatek/internal/telephony/devreg/IDeviceRegisterExt;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;

    .line 94
    new-instance v0, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/devreg/DefaultDeviceRegisterExt;-><init>(Landroid/content/Context;Lcom/mediatek/internal/telephony/devreg/DeviceRegisterController;)V

    return-object v0
.end method

.method public makeDigitsUssdManager()Lcom/mediatek/internal/telephony/digits/DigitsUssdManager;
    .registers 2

    .line 121
    new-instance v0, Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/digits/DigitsUssdManagerBase;-><init>()V

    return-object v0
.end method

.method public makeDigitsUtil()Lcom/mediatek/internal/telephony/digits/DigitsUtil;
    .registers 2

    .line 117
    new-instance v0, Lcom/mediatek/internal/telephony/digits/DigitsUtilBase;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/digits/DigitsUtilBase;-><init>()V

    return-object v0
.end method

.method public makeMtkProxyControllerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IMtkProxyControllerExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkProxyControllerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeMtkSimHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkSimHandler;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    const-string v0, "makeMtkSimHandler"

    const-string v1, "[makeMtkSimHandler] "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSimHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeSCBMManager(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/scbm/ISCBMManager;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 153
    new-instance v0, Lcom/mediatek/internal/telephony/scbm/SCBMManagerDefault;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/scbm/SCBMManagerDefault;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSelfActivationInstance(I)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .registers 4
    .param p1, "phoneId"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "instance":Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    new-instance v1, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;

    invoke-direct {v1, p1}, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;-><init>(I)V

    move-object v0, v1

    .line 105
    return-object v0
.end method

.method public makeServiceStateTrackerExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/IServiceStateTrackerExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/ServiceStateTrackerExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSimSwitchForDSSOPExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISimSwitchForDSSExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SimSwitchForDSSExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSmartDataSwitchAssistantOpExt(Landroid/content/Context;)Lcom/mediatek/internal/telephony/datasub/ISmartDataSwitchAssistantOpExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistantOpExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
