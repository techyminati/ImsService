.class public Lcom/mediatek/internal/telephony/MtkSuppServConf;
.super Ljava/lang/Object;
.source "MtkSuppServConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;,
        Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    }
.end annotation


# static fields
.field private static final CARRIER_CONFIG_LOADING_TIME:I = 0x1388

.field private static final EVENT_CARRIER_CONFIG_LOADED:I = 0x1

.field private static final EVENT_CARRIER_CONFIG_LOADED_TIMEOUT:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0x4

.field private static final EVENT_INIT:I = 0x0

.field private static final EVENT_RECORDS_LOADED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "SuppServConf"


# instance fields
.field private OPERATORUTILS_BOOL_FALSE:I

.field private OPERATORUTILS_BOOL_TRUE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCustomizationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;",
            "Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

.field private mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    .line 86
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 88
    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->OPERATORUTILS_BOOL_TRUE:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->OPERATORUTILS_BOOL_FALSE:I

    .line 487
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf$1;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mContext:Landroid/content/Context;

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 185
    const-string v0, "MtkSuppServConf constructor."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkSuppServConf;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->onUpdateIcc()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->resetConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->loadCarrierConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/MtkSuppServConf;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->printConfig()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/MtkSuppServConf;)Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServConf;

    .line 80
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    return-object v0
.end method

.method private eventToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "eventId"    # I

    .line 312
    packed-switch p1, :pswitch_data_16

    .line 324
    const-string v0, "UNKNOWN_EVENT"

    return-object v0

    .line 322
    :pswitch_6
    const-string v0, "EVENT_ICC_CHANGED"

    return-object v0

    .line 320
    :pswitch_9
    const-string v0, "EVENT_RECORDS_LOADED"

    return-object v0

    .line 318
    :pswitch_c
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED_TIMEOUT"

    return-object v0

    .line 316
    :pswitch_f
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED"

    return-object v0

    .line 314
    :pswitch_12
    const-string v0, "EVENT_INIT"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z
    .registers 9
    .param p1, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .param p2, "mccMnc"    # Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_70

    .line 608
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 609
    .local v0, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    if-nez v0, :cond_1c

    .line 610
    const-string v2, "config is null."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 611
    return v1

    .line 614
    :cond_1c
    iget v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getSysPropForBool(I)I

    move-result v2

    .line 615
    .local v2, "value":I
    const/4 v3, -0x1

    const-string v4, ": "

    const-string v5, ""

    if-eq v2, v3, :cond_4f

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_40

    move v5, v4

    goto :goto_41

    :cond_40
    move v5, v1

    :goto_41
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 617
    if-ne v2, v4, :cond_4e

    move v1, v4

    :cond_4e
    return v1

    .line 619
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 620
    iget-boolean v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    return v1

    .line 604
    .end local v0    # "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    .end local v2    # "value":I
    :cond_70
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or Without config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 605
    return v1
.end method

.method private getFromOperatorUtilsString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .param p2, "mccMnc"    # Ljava/lang/String;

    .line 662
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$2;->$SwitchMap$com$mediatek$internal$telephony$MtkSuppServContants$CUSTOMIZATION_ITEM:[I

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 664
    const-string v0, ""

    return-object v0
.end method

.method private getIntValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)I
    .registers 6
    .param p1, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .param p2, "mccMnc"    # Ljava/lang/String;

    .line 646
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_41

    .line 651
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 652
    .local v0, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    if-nez v0, :cond_1c

    .line 653
    const-string v2, "config is null."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 654
    return v1

    .line 657
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 658
    iget v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    return v1

    .line 647
    .end local v0    # "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or Without config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 648
    return v1
.end method

.method private getStringValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "item"    # Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .param p2, "mccMnc"    # Ljava/lang/String;

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getFromOperatorUtilsString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "sConfigFromOperatorUtils":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 627
    return-object v0

    .line 630
    :cond_d
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    if-eqz v2, :cond_4b

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_4b

    .line 635
    :cond_18
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 636
    .local v2, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    if-nez v2, :cond_28

    .line 637
    const-string v3, "config is null."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 638
    return-object v1

    .line 641
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 642
    iget-object v1, v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    return-object v1

    .line 631
    .end local v2    # "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    :cond_4b
    :goto_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null or Without config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 632
    return-object v1
.end method

.method private getSysPropForBool(I)I
    .registers 8
    .param p1, "idx"    # I

    .line 507
    const/4 v0, -0x1

    .line 508
    .local v0, "r":I
    const/4 v1, -0x1

    if-le p1, v1, :cond_43

    .line 509
    const-string v1, "persist.vendor.ss.cfg.boolconfig"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 510
    .local v1, "which":I
    if-lez v1, :cond_43

    const/4 v3, 0x1

    shl-int v4, v3, p1

    and-int/2addr v4, v1

    if-eqz v4, :cond_43

    .line 511
    const-string v4, "persist.vendor.ss.cfg.boolvalue"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 512
    .local v4, "value":I
    shl-int v5, v3, p1

    and-int/2addr v5, v4

    if-eqz v5, :cond_1f

    move v2, v3

    :cond_1f
    move v0, v2

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSysPropForBool idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    if-ne v0, v3, :cond_37

    const-string v3, "TRUE"

    goto :goto_39

    :cond_37
    const-string v3, "FALSE"

    :goto_39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 517
    .end local v1    # "which":I
    .end local v4    # "value":I
    :cond_43
    return v0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .registers 4
    .param p1, "appFamily"    # I

    .line 274
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method private initConfig()V
    .registers 6

    .line 329
    const-string v0, "initConfig start."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_gsm_ut_support"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_not_support_xcap"

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_tb_clir"

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_ims_nw_cw"

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_enable_xcap_http_response_409"

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_transfer_xcap_404"

    const/4 v4, 0x5

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_not_support_call_identity"

    const/4 v4, 0x6

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_re_register_for_cf"

    const/4 v4, 0x7

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_support_save_cf_number"

    const/16 v4, 0x8

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_query_cfu_again_after_set"

    const/16 v4, 0x9

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_not_support_ocb"

    const/16 v4, 0xa

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_not_support_wfc_ut"

    const/16 v4, 0xb

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_need_check_data_enable"

    const/16 v4, 0xc

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_need_check_data_roaming"

    const/16 v4, 0xd

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    new-instance v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    const-string v3, "mtk_carrier_ss_need_check_ims_when_roaming"

    const/16 v4, 0xe

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "initConfig end."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private loadCarrierConfig()V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 382
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 383
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v1

    .line 385
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 387
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1c

    .line 388
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_21

    .line 390
    :cond_1c
    const-string v3, "CarrierConfigManager is null."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V

    .line 393
    :goto_21
    if-eqz v2, :cond_27

    .line 394
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->loadFromCarrierConfig(Landroid/os/PersistableBundle;)V

    goto :goto_2c

    .line 396
    :cond_27
    const-string v3, "Config is null."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V

    .line 398
    :goto_2c
    return-void
.end method

.method private loadFromCarrierConfig(Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "b"    # Landroid/os/PersistableBundle;

    .line 401
    const-string v0, "loadFromCarrierConfig start."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 406
    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 407
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 410
    :cond_26
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 411
    if-eqz v0, :cond_46

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 412
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 415
    :cond_46
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 416
    if-eqz v0, :cond_66

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 417
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 420
    :cond_66
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 421
    if-eqz v0, :cond_86

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 422
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 425
    :cond_86
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 426
    if-eqz v0, :cond_a6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 427
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 430
    :cond_a6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 431
    if-eqz v0, :cond_c6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 432
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 435
    :cond_c6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 436
    if-eqz v0, :cond_e6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 437
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 440
    :cond_e6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 441
    if-eqz v0, :cond_106

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 442
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 445
    :cond_106
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 446
    if-eqz v0, :cond_126

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 447
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 450
    :cond_126
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 451
    if-eqz v0, :cond_146

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    .line 452
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 455
    :cond_146
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 456
    if-eqz v0, :cond_166

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 457
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 460
    :cond_166
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 461
    if-eqz v0, :cond_186

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 462
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 465
    :cond_186
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 466
    if-eqz v0, :cond_1a6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 467
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 470
    :cond_1a6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 471
    if-eqz v0, :cond_1c6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c6

    .line 472
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 475
    :cond_1c6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    sget-object v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 476
    if-eqz v0, :cond_1e6

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 477
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->setValue(Z)V

    .line 480
    :cond_1e6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/MtkSuppServManager;->getSuppServHelper(I)Lcom/mediatek/internal/telephony/MtkSuppServHelper;

    move-result-object v1

    .line 481
    .local v1, "ssHelper":Lcom/mediatek/internal/telephony/MtkSuppServHelper;
    if-eqz v1, :cond_1f5

    .line 482
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->notifyCarrierConfigLoaded()V

    .line 484
    :cond_1f5
    const-string v2, "loadFromCarrierConfig end."

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServConf"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServConf"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServConf"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServConf"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServConf"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method private onSimNotReady()V
    .registers 2

    .line 269
    const-string v0, "onSimNotReady"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->resetConfig()V

    .line 271
    return-void
.end method

.method private onUpdateIcc()V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_5

    .line 234
    return-void

    .line 237
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 239
    .local v0, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 241
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 244
    :cond_19
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 245
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_4d

    if-eqz v1, :cond_4d

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateIcc: newIccRecords="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logd(Ljava/lang/String;)V

    .line 249
    :cond_4d
    if-eq v1, v0, :cond_83

    .line 250
    const/4 v2, 0x0

    if-eqz v1, :cond_61

    .line 251
    const-string v3, "Removing stale icc objects."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 253
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 255
    :cond_61
    if-eqz v0, :cond_80

    .line 256
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mPhone:Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 257
    const-string v3, "New records found."

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 259
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_83

    .line 263
    :cond_80
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->onSimNotReady()V

    .line 266
    :cond_83
    :goto_83
    return-void
.end method

.method private printConfig()V
    .registers 7

    .line 521
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 522
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    .line 523
    .local v2, "key":Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 525
    .local v3, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/MtkSuppServContants;->toString(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 527
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;>;"
    .end local v2    # "key":Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;
    .end local v3    # "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    goto :goto_a

    .line 528
    :cond_47
    return-void
.end method

.method private registerCarrierConfigIntent()V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method private registerEvent()V
    .registers 5

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 213
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method private resetConfig()V
    .registers 4

    .line 372
    const-string v0, "resetConfig start."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mCustomizationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 374
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;

    .line 375
    .local v2, "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->reset()V

    .line 376
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;>;"
    .end local v2    # "config":Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
    goto :goto_f

    .line 377
    :cond_25
    const-string v0, "resetConfig end."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private unregisterCarrierConfigIntent()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    return-void
.end method

.method private unregisterEvent()V
    .registers 4

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 218
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 221
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_20

    .line 222
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 225
    :cond_20
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 228
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->unregisterCarrierConfigIntent()V

    .line 229
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->unregisterEvent()V

    .line 230
    return-void
.end method

.method public init(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 189
    const-string v0, "MtkSuppServConf init."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->logi(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    .line 193
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->initConfig()V

    .line 195
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->registerCarrierConfigIntent()V

    .line 196
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->registerEvent()V

    .line 198
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf;->mSSConfigHandler:Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfigHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "initMsg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void
.end method

.method public isEnableXcapHttpResponse409(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 551
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->ENABLE_XCAP_HTTP_RESPONSE_409:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGsmUtSupport(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 531
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->GSM_UT_SUPPORT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isImsNwCW(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 543
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->IMS_NW_CW:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedCheckDataEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 594
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ENABLE:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedCheckDataRoaming(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 599
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_DATA_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeedCheckImsWhenRoaming(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 547
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NEED_CHECK_IMS_WHEN_ROAMING:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotSupportCallIdentity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_CALL_IDENTITY:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotSupportOCB(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 579
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_OCB:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotSupportWFCUt(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 589
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_WFC_UT:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotSupportXcap(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 535
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->NOT_SUPPORT_XCAP:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQueryCFUAgainAfterSet(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 575
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->QUERY_CFU_AGAIN_AFTER_SET:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReregisterForCF(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 563
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->RE_REGISTER_FOR_CF:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportSaveCFNumber(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 571
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->SUPPORT_SAVE_CF_NUMBER:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTbClir(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 539
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TBCLIR:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTransferXcap404(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 555
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->TRANSFER_XCAP_404:Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServConf;->getBooleanValue(Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
