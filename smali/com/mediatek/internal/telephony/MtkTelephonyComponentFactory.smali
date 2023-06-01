.class public Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "MtkTelephonyComponentFactory.java"


# static fields
.field private static sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;
    .registers 1

    .line 178
    sget-object v0, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;

    .line 181
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;->sInstance:Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public initCarrierExpress()V
    .registers 3

    .line 547
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "Creating CarrierExpress"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, Lcom/mediatek/internal/telephony/carrierexpress/CarrierExpressFwkHandler;->init()V

    .line 549
    return-void
.end method

.method public initEmbmsAdaptor(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sCommandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 465
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;->getDefault(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/MtkEmbmsAdaptor;

    .line 466
    return-void
.end method

.method public initGwsdService(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 554
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "ro.vendor.mtk_gwsd_capability"

    const-string v2, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 555
    const-string v2, "ro.vendor.mtk_gwsd_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 556
    const-string v2, "com.mediatek.gwsd.service.GwsdService"

    .line 557
    .local v2, "className":Ljava/lang/String;
    const-string v5, ""

    .line 558
    .local v5, "classPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 561
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_25
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 562
    const-string v7, "/system/framework/mediatek-gwsdv2.jar"

    move-object v5, v7

    .line 565
    :cond_34
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 566
    const-string v1, "/system/framework/mediatek-gwsd.jar"

    move-object v5, v1

    .line 568
    :cond_41
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 569
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 570
    .local v1, "classLoader":Ldalvik/system/PathClassLoader;
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    move-object v6, v4

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v4, "getInstance"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    invoke-virtual {v6, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 573
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_78} :catch_7a

    .line 576
    nop

    .end local v1    # "classLoader":Ldalvik/system/PathClassLoader;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_82

    .line 574
    :catch_7a
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "className":Ljava/lang/String;
    .end local v5    # "classPackage":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_82
    :goto_82
    return-void
.end method

.method public initRadioManager(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numPhones"    # I
    .param p3, "sCommandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 261
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;

    .line 262
    return-void
.end method

.method public initSubscriptionController(Landroid/content/Context;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 3
    .param p1, "c"    # Landroid/content/Context;

    .line 205
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionController;->mtkInit(Landroid/content/Context;)Lcom/mediatek/internal/telephony/MtkSubscriptionController;

    move-result-object v0

    return-object v0
.end method

.method public initVoDataService(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 585
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "com.mediatek.vodata.service.VoDataService"

    .line 586
    .local v1, "className":Ljava/lang/String;
    const-string v2, "/system/framework/mediatek-vodata.jar"

    .line 587
    .local v2, "classPackage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 589
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_7
    new-instance v4, Ldalvik/system/PathClassLoader;

    .line 590
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 591
    .local v4, "classLoader":Ldalvik/system/PathClassLoader;
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 592
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v6, "getInstance"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v5

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 594
    .local v6, "method":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_40

    .line 597
    nop

    .end local v4    # "classLoader":Ldalvik/system/PathClassLoader;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    goto :goto_46

    .line 595
    :catch_40
    move-exception v4

    .line 596
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "not found VoData library"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method public makeCallManager()Lcom/android/internal/telephony/CallManager;
    .registers 2

    .line 496
    new-instance v0, Lcom/mediatek/internal/telephony/MtkCallManager;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkCallManager;-><init>()V

    return-object v0
.end method

.method public makeCatService(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)Lcom/android/internal/telephony/cat/CatService;
    .registers 22
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "uiccProfile"    # Lcom/android/internal/telephony/uicc/UiccProfile;
    .param p7, "slotId"    # I

    .line 270
    move-object/from16 v8, p6

    const/4 v0, 0x1

    .line 271
    .local v0, "phoneType":I
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v9

    .line 272
    .local v9, "subId":[I
    const-string v1, "MtkCatService"

    const/4 v2, 0x0

    if-eqz v9, :cond_40

    .line 273
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    aget v4, v9, v2

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeCatService phoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v9, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    goto :goto_43

    .line 272
    :cond_40
    move/from16 v10, p7

    move v11, v0

    .line 277
    .end local v0    # "phoneType":I
    .local v11, "phoneType":I
    :goto_43
    if-eqz v8, :cond_54

    .line 278
    const/4 v0, 0x2

    if-ne v11, v0, :cond_4e

    .line 279
    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    move-object v12, v0

    .end local p2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    goto :goto_56

    .line 281
    .end local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local p2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_4e
    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    move-object v12, v0

    .end local p2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    goto :goto_56

    .line 277
    .end local v0    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local p2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_54
    move-object/from16 v12, p2

    .line 284
    .end local p2    # "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .local v12, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCatService  ca = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-eqz p1, :cond_8a

    if-eqz v12, :cond_8a

    if-eqz p3, :cond_8a

    if-eqz p4, :cond_8a

    if-eqz p5, :cond_8a

    if-nez v8, :cond_77

    goto :goto_8a

    .line 291
    :cond_77
    new-instance v13, Lcom/mediatek/internal/telephony/cat/MtkCatService;

    move-object v0, v13

    move-object v1, p1

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/cat/MtkCatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccProfile;I)V

    return-object v13

    .line 287
    :cond_8a
    :goto_8a
    const-string v0, "makeCatService exception, will not create MtkCatservice!!!!"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeCdmaInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 452
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    return-object v0
.end method

.method public makeCdmaSMSDispatcher(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 458
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    return-object v0
.end method

.method public makeCdmaSubscriptionSourceManager(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSubscriptionSourceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeCommandParamsFactory(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cat/CommandParamsFactory;
    .registers 5
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .line 303
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V

    return-object v0
.end method

.method public makeConnectionServiceName()Landroid/content/ComponentName;
    .registers 4

    .line 532
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "makeConnectionServiceName mtk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.services.telephony.MtkTelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;Z)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .registers 19
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p5, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p6, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p7, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p8, "doAllocatePduSessionId"    # Z

    .line 516
    new-instance v9, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;Z)V

    .line 518
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    const-string v1, "2097152,4194304,8388608,262144,524288,2097152"

    sput-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->TCP_BUFFER_SIZES_LTE:Ljava/lang/String;

    .line 519
    return-object v0
.end method

.method public makeDcController(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)Lcom/android/internal/telephony/dataconnection/DcController;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p4, "dataServiceManager"    # Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 528
    new-instance v6, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Looper;)V

    return-object v6
.end method

.method public makeDcHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 329
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;->makeMtkDcHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;

    .line 330
    return-void
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 313
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object v0
.end method

.method public makeDefaultPhoneNotifier(Landroid/content/Context;)Lcom/android/internal/telephony/DefaultPhoneNotifier;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "makeDefaultPhoneNotifier mtk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkPhoneNotifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 539
    new-instance v0, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkDeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeDisplayInfoController(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DisplayInfoController;
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 318
    new-instance v0, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkDisplayInfoController;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 210
    new-instance v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makeGsmInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 428
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/gsm/MtkGsmInboundSmsHandler;

    move-result-object v0

    return-object v0
.end method

.method public makeGsmSMSDispatcher(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;
    .param p3, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 375
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/gsm/MtkGsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 477
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "makeIccPhoneBookInterfaceManager mtk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 359
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIconLoader(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/IconLoader;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 308
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object v0
.end method

.method public makeImsPhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .line 488
    :try_start_0
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 489
    :catch_6
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TelephonyComponentFactoryEx"

    const-string v2, "makeImsPhoneExt"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    const/4 v1, 0x0

    return-object v1
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .registers 3
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 483
    new-instance v0, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/imsphone/MtkImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-object v0
.end method

.method public makeImsSmsDispatcher(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)Lcom/android/internal/telephony/ImsSmsDispatcher;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "smsDispatchersController"    # Lcom/android/internal/telephony/SmsDispatchersController;

    .line 367
    new-instance v0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isCurrentFormat3gpp2"    # Z

    .line 406
    new-instance v0, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "referenceNumber"    # I
    .param p10, "sequenceNumber"    # I
    .param p11, "messageCount"    # I
    .param p12, "is3gpp2WapPdu"    # Z
    .param p13, "messageBody"    # Ljava/lang/String;
    .param p14, "isClass0"    # Z
    .param p15, "subId"    # I
    .param p16, "smsSource"    # I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    .line 396
    new-instance v17, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;-><init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V

    return-object v17
.end method

.method public makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "is3gpp2WapPdu"    # Z
    .param p8, "address"    # Ljava/lang/String;
    .param p9, "displayAddr"    # Ljava/lang/String;
    .param p10, "messageBody"    # Ljava/lang/String;
    .param p11, "isClass0"    # Z
    .param p12, "subId"    # I
    .param p13, "smsSource"    # I

    .line 385
    new-instance v14, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkInboundSmsTracker;-><init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object v14
.end method

.method public makeMultiSimSettingController(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/MultiSimSettingController;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 222
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "makeMultiSimSettingController mtk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkMultiSimSettingController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/GsmCdmaPhone;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 188
    new-instance v7, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v7
.end method

.method public bridge synthetic makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .registers 7

    .line 174
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object p1

    return-object p1
.end method

.method public makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;)Lcom/android/internal/telephony/PhoneSwitcher;
    .registers 5
    .param p1, "maxDataAttachModemCount"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 346
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;->mtkMake(ILandroid/content/Context;Landroid/os/Looper;)Lcom/mediatek/internal/telephony/MtkPhoneSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public makeProxyController(Landroid/content/Context;)Lcom/android/internal/telephony/ProxyController;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    new-instance v0, Lcom/mediatek/internal/telephony/MtkProxyController;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkProxyController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeRetryManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DataThrottler;I)Lcom/android/internal/telephony/RetryManager;
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataThrottler"    # Lcom/android/internal/telephony/dataconnection/DataThrottler;
    .param p3, "apnType"    # I

    .line 505
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRetryManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/dataconnection/DataThrottler;I)V

    return-object v0
.end method

.method public makeRil(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 195
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/MtkRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public makeRilMessageDecoder(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .registers 6
    .param p1, "caller"    # Landroid/os/Handler;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "slotId"    # I

    .line 297
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/cat/MtkRilMessageDecoder;-><init>(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;I)V

    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 200
    new-instance v0, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/MtkServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSmartDataSwitchAssistant(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 334
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;->makeSmartDataSwitchAssistant(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/datasub/SmartDataSwitchAssistant;

    .line 335
    return-void
.end method

.method public makeSmsBroadcastUndelivered(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gsmInboundSmsHandler"    # Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .param p3, "cdmaInboundSmsHandler"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 414
    invoke-static {p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkSmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 416
    return-void
.end method

.method public makeSmsDispatchersController(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)Lcom/android/internal/telephony/SmsDispatchersController;
    .registers 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 439
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1, v1, v2}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    return-object v0
.end method

.method public bridge synthetic makeSmsHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkTelephonyComponentFactory;->makeSmsHeader()Lcom/mediatek/internal/telephony/MtkSmsHeader;

    move-result-object v0

    return-object v0
.end method

.method public makeSmsHeader()Lcom/mediatek/internal/telephony/MtkSmsHeader;
    .registers 2

    .line 433
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsHeader;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSmsHeader;-><init>()V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 351
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkSmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 355
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSmsUsageMonitor;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkSmsUsageMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sc"    # Lcom/android/internal/telephony/SubscriptionController;

    .line 216
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;)V

    return-object v0
.end method

.method public makeSuppServManager(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 339
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->makeSuppServManager(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/MtkSuppServManager;

    move-result-object v0

    .line 340
    .local v0, "ssManager":Lcom/mediatek/internal/telephony/MtkSuppServManager;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->init()V

    .line 341
    return-void
.end method

.method public makeTelephonyNetworkFactories(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 324
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/MtkTelephonyNetworkFactory;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeUiccController(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UiccController;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .line 242
    const-string v0, "TelephonyComponentFactory"

    const-string v1, "makeUiccController mtk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkUiccController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p4, "phoneId"    # I
    .param p5, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 249
    new-instance v7, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/uicc/MtkUiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    return-object v7
.end method

.method public makeUiccSlot(Landroid/content/Context;Z)Lcom/android/internal/telephony/uicc/UiccSlot;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isActive"    # Z

    .line 254
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkUiccSlot;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public makeWapPushOverSms(Landroid/content/Context;)Lcom/android/internal/telephony/WapPushOverSms;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 422
    new-instance v0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeWorldPhoneManager()V
    .registers 1

    .line 471
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->makeWorldPhoneManager()V

    .line 472
    return-void
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .registers 3
    .param p1, "pdu"    # [B

    .line 418
    new-instance v0, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;

    invoke-direct {v0, p1}, Lcom/mediatek/internal/telephony/MtkWspTypeDecoder;-><init>([B)V

    return-object v0
.end method
