.class public Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "MtkIccSmsInterfaceManager.java"


# static fields
.field private static final CB_ACTIVATION_OFF:I = 0x0

.field private static final CB_ACTIVATION_ON:I = 0x1

.field private static final CB_ACTIVATION_UNKNOWN:I = -0x1

.field static final DBG:Z = true

.field private static final EVENT_GET_BROADCAST_ACTIVATION_DONE:I = 0x6a

.field private static final EVENT_GET_BROADCAST_CONFIG_CHANNEL_DONE:I = 0x6c

.field private static final EVENT_GET_BROADCAST_CONFIG_LANGUAGE_DONE:I = 0x6e

.field private static final EVENT_GET_SMSC_ADDRESS_BUNDLE_DONE:I = 0x71

.field private static final EVENT_GET_SMSC_ADDRESS_DONE:I = 0x70

.field private static final EVENT_GET_SMS_PARAMS:I = 0x67

.field private static final EVENT_GET_SMS_SIM_MEM_STATUS_DONE:I = 0x65

.field private static final EVENT_INSERT_TEXT_MESSAGE_TO_ICC_DONE:I = 0x66

.field private static final EVENT_LOAD_ONE_RECORD_DONE:I = 0x69

.field private static final EVENT_MTK_LOAD_DONE:I = 0x73

.field private static final EVENT_MTK_UPDATE_DONE:I = 0x74

.field private static final EVENT_REMOVE_BROADCAST_MSG_DONE:I = 0x6b

.field private static final EVENT_SET_BROADCAST_CONFIG_LANGUAGE_DONE:I = 0x6d

.field private static final EVENT_SET_ETWS_CONFIG_DONE:I = 0x6f

.field private static final EVENT_SET_SMSC_ADDRESS_DONE:I = 0x72

.field private static final EVENT_SET_SMS_PARAMS:I = 0x68

.field private static final EVENT_SIM_SMS_DELETE_DONE:I = 0x64

.field private static final EVENT_SMS_WIPE_DONE:I = 0x75

.field private static final INDEXT_SPLITOR:Ljava/lang/String; = ","

.field static final LOG_TAG:Ljava/lang/String; = "MtkIccSmsInterfaceManager"

.field private static sConcatenatedRef:I


# instance fields
.field private mCurrentCellBroadcastActivation:I

.field protected mMtkHandler:Landroid/os/Handler;

.field private mSmsWipeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 138
    const/16 v0, 0x1c8

    sput v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 141
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$1;-><init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    .line 1005
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager$2;-><init>(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    .line 1777
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mSmsWipeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;

    .line 113
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    .line 113
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    return-void
.end method

.method private static checkPhoneNumberCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 1395
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_23

    const/16 v0, 0x23

    if-eq p0, v0, :cond_23

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_23

    const/16 v0, 0x20

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private static checkPhoneNumberInternal(Ljava/lang/String;)Z
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .line 1400
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1401
    return v0

    .line 1404
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_1b

    .line 1405
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberCharacter(C)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1406
    nop

    .line 1404
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1408
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 1412
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1b
    return v0
.end method

.method private checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z
    .registers 6
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 1725
    new-instance v0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;-><init>(Landroid/content/Context;)V

    .line 1726
    .local v0, "dataOnlyCtrl":Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->checkPermission(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3c

    .line 1728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTddDataOnlyPermission, w/o permission, sentIntent = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1729
    if-nez p1, :cond_30

    .line 1730
    const-string v1, "checkTddDataOnlyPermission, can not notify APP"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_3a

    .line 1734
    :cond_30
    :try_start_30
    invoke-virtual {p1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_33
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_30 .. :try_end_33} :catch_34

    .line 1738
    goto :goto_3a

    .line 1735
    :catch_34
    move-exception v1

    .line 1736
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "checkTddDataOnlyPermission, CanceledException happened when send sms fail with sentIntent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1740
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :goto_3a
    const/4 v1, 0x0

    return v1

    .line 1742
    :cond_3c
    return v2
.end method

.method private checkTddDataOnlyPermission(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 1746
    .local p1, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v0, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;-><init>(Landroid/content/Context;)V

    .line 1747
    .local v0, "dataOnlyCtrl":Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkLteDataOnlyController;->checkPermission(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_65

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkTddDataOnlyPermission, w/o permission, sentIntents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1750
    if-nez p1, :cond_30

    .line 1751
    const-string v1, "checkTddDataOnlyPermission, can not notify APP"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_63

    .line 1754
    :cond_30
    const/4 v1, 0x0

    .line 1755
    .local v1, "si":Landroid/app/PendingIntent;
    :try_start_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1756
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_5c

    .line 1757
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    move-object v1, v5

    .line 1758
    if-nez v1, :cond_56

    .line 1759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTddDataOnlyPermission, can not notify APP for i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_59

    .line 1761
    :cond_56
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_59
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_31 .. :try_end_59} :catch_5d

    .line 1756
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 1767
    .end local v1    # "si":Landroid/app/PendingIntent;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_5c
    goto :goto_63

    .line 1764
    :catch_5d
    move-exception v1

    .line 1765
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "checkTddDataOnlyPermission, CanceledException happened when send sms fail with sentIntent"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1769
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :goto_63
    const/4 v1, 0x0

    return v1

    .line 1771
    :cond_65
    return v2
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 1456
    const/4 v0, 0x0

    .line 1457
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p1

    :goto_12
    return-object v1
.end method

.method private static getNextConcatRef()I
    .registers 2

    .line 1391
    sget v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sConcatenatedRef:I

    return v0
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .registers 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .line 1472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v0, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-static {p0, v1, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 1498
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5c

    .line 1502
    :cond_a
    invoke-static {p0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "IccSmsInterfaceManagerEx"

    if-nez v1, :cond_40

    .line 1503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2b

    .line 1504
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1505
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_28

    .line 1507
    :try_start_22
    invoke-virtual {v4, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_25
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_22 .. :try_end_25} :catch_26

    .line 1508
    :goto_25
    goto :goto_28

    :catch_26
    move-exception v5

    goto :goto_25

    .line 1503
    .end local v4    # "sentIntent":Landroid/app/PendingIntent;
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1512
    .end local v1    # "i":I
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid destinationAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return v2

    .line 1516
    :cond_40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1517
    const-string v0, "Invalid destinationAddress"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return v2

    .line 1520
    :cond_4c
    if-eqz p1, :cond_56

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_55

    goto :goto_56

    .line 1525
    :cond_55
    return v0

    .line 1521
    :cond_56
    :goto_56
    const-string v0, "Invalid message body"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return v2

    .line 1499
    :cond_5c
    :goto_5c
    return v0
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .registers 4
    .param p0, "da"    # Ljava/lang/String;

    .line 1536
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, "encodeAddress":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1538
    return v1

    .line 1540
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public activateCellBroadcastSms(Z)Z
    .registers 5
    .param p1, "activate"    # Z

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateCellBroadcastSms activate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Activate CellBroadcast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move-result v0

    return v0
.end method

.method protected buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 556
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 559
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v2, 0x0

    .line 564
    .local v2, "validSmsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_30

    .line 565
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 566
    .local v4, "ba":[B
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    if-nez v5, :cond_1d

    .line 567
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 570
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 572
    new-instance v5, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v4    # "ba":[B
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 576
    .end local v3    # "i":I
    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validSmsCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 579
    return-object v1
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .registers 19
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .line 1138
    .local p4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyTextMessageToIccCard, message count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1141
    const-string v1, "Copying message to USIM/SIM"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1142
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x16

    move-object v10, p1

    invoke-virtual {v1, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    .line 1144
    return v3

    .line 1149
    :cond_39
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v1

    .line 1151
    .local v1, "memStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    if-nez v1, :cond_45

    .line 1152
    const-string v4, "Fail to get SIM memory status"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1153
    return v3

    .line 1155
    :cond_45
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->getUnused()I

    move-result v3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 1156
    const-string v3, "SIM memory is not enough"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1157
    const/4 v3, 0x7

    return v3

    .line 1162
    :cond_56
    iget-object v3, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v3, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v3

    return v3
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllMessagesFromEF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from Icc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 530
    :cond_31
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 531
    .local v0, "getRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 534
    :try_start_37
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 535
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_49

    .line 536
    const-string v2, "MtkIccSmsInterfaceManager"

    const-string v3, "Cannot load Sms records. No icc card?"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 540
    :cond_49
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 541
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0x6f3c

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 544
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_37 .. :try_end_5a} :catchall_5f

    .line 545
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 544
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public getAllMessagesFromIccEfByMode(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllMessagesFromIccEfByMode, mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7b

    const/4 v2, 0x2

    if-le p2, v2, :cond_1c

    goto :goto_7b

    .line 1067
    :cond_1c
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from Icc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_39

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1076
    :cond_39
    new-instance v2, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1077
    .local v2, "getRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v2

    .line 1079
    :try_start_3f
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 1080
    .local v3, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v3, :cond_50

    .line 1081
    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v4, "Cannot load Sms records. No icc card?"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    monitor-exit v2

    return-object v0

    .line 1085
    :cond_50
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v4, 0x73

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1086
    .local v0, "response":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v1, v4, :cond_72

    .line 1087
    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v4, "getAllMessagesFromIccEfByMode. In the case of GSM phone"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    move-object v1, v3

    check-cast v1, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;

    .line 1089
    .local v1, "sfh":Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, p2, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V

    .line 1091
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1093
    .end local v0    # "response":Landroid/os/Message;
    .end local v1    # "sfh":Lcom/mediatek/internal/telephony/uicc/MtkSIMFileHandler;
    .end local v3    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_3f .. :try_end_73} :catchall_78

    .line 1094
    iget-object v0, v2, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1093
    :catchall_78
    move-exception v0

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v0

    .line 1062
    .end local v2    # "getRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    :cond_7b
    :goto_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllMessagesFromIccEfByMode wrong mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1063
    return-object v0
.end method

.method public getCellBroadcastLangs()Ljava/lang/String;
    .registers 4

    .line 1600
    const-string v0, "getCellBroadcastLangs"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1601
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1602
    .local v0, "getCBLRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1603
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1606
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1607
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getGsmBroadcastLangs(Landroid/os/Message;)V

    .line 1609
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1610
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_25

    .line 1611
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1610
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getCellBroadcastRanges()Ljava/lang/String;
    .registers 4

    .line 1566
    const-string v0, "getCellBroadcastChannels"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1567
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1568
    .local v0, "getCBRRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1569
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1572
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getGsmBroadcastConfig(Landroid/os/Message;)V

    .line 1574
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1575
    .end local v1    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_23

    .line 1577
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1575
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getMessageFromIccEf(Ljava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 1033
    const-string v0, "getMessageFromIccEf"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from SIM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 1040
    const/4 v0, 0x0

    return-object v0

    .line 1043
    :cond_22
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1044
    .local v0, "getRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1046
    :try_start_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 1047
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_46

    .line 1048
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1050
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f3c

    invoke-virtual {v3, v4, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1052
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1054
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "response":Landroid/os/Message;
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_4c

    .line 1056
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    return-object v1

    .line 1054
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public getScAddress()Ljava/lang/String;
    .registers 4

    .line 1656
    const-string v0, "getScAddress"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "get Sc Address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1661
    .local v0, "getScRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1662
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1665
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1667
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1668
    .end local v1    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2f

    .line 1670
    const-string v1, "getScAddress: exit"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1671
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1668
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getScAddressWithErrorCode()Landroid/os/Bundle;
    .registers 4

    .line 1680
    const-string v0, "getScAddressWithErrorCode"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "get Sc Address with error code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1685
    .local v0, "getScERequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1686
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1689
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1691
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1692
    .end local v1    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_2f

    .line 1694
    const-string v1, "getScAddressWithErrorCode error code done"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    return-object v1

    .line 1692
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getSmsParameters(Ljava/lang/String;)Lmediatek/telephony/MtkSmsParameters;
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1098
    const-string v0, "getSmsParameters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1099
    const-string v0, "Get SMS parametner on SIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1102
    const/4 v0, 0x0

    return-object v0

    .line 1104
    :cond_1a
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1105
    .local v0, "getParamRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1106
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1108
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1109
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsParameters(Landroid/os/Message;)V

    .line 1111
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1112
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_3a

    .line 1113
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Lmediatek/telephony/MtkSmsParameters;

    return-object v1

    .line 1112
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1367
    const-string v0, "getSmsSimMemoryStatus"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1368
    const-string v0, "Get SMS SIM Card Memory Status from RUIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1371
    const/4 v0, 0x0

    return-object v0

    .line 1373
    :cond_1a
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1374
    .local v0, "getRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1375
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1377
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1378
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 1379
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsRuimMemoryStatus(Landroid/os/Message;)V

    goto :goto_3e

    .line 1381
    :cond_3b
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getSmsSimMemoryStatus(Landroid/os/Message;)V

    .line 1384
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1385
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_47

    .line 1387
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    return-object v1

    .line 1385
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public insertRawMessageToIccCard(Ljava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .line 1335
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 1336
    .local v0, "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    const-string v1, "insertRawMessageToIccCard"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1337
    const-string v1, "insertRaw insert message into SIM"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 1340
    const/4 v1, 0x1

    iput v1, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1341
    return-object v0

    .line 1343
    :cond_24
    new-instance v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1344
    .local v1, "insertRawRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v1

    .line 1345
    :try_start_2a
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1348
    .local v2, "response":Landroid/os/Message;
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v3, v4, :cond_4b

    .line 1349
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1350
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 1349
    invoke-interface {v3, p2, v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_52

    .line 1352
    :cond_4b
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p2, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V

    .line 1355
    :goto_52
    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1356
    .end local v2    # "response":Landroid/os/Message;
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_6b

    .line 1357
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 1358
    iget v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    if-nez v2, :cond_65

    .line 1359
    const-string v2, "insertRaw message inserted"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_6a

    .line 1361
    :cond_65
    const-string v2, "insertRaw pdu insert fail"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1363
    :goto_6a
    return-object v0

    .line 1356
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 41
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p5, "status"    # I
    .param p6, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 1168
    .local p4, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move/from16 v9, p5

    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 1170
    .local v0, "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    const-string v1, "insertTextMessageToIccCard"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1171
    const-string v1, "insertText insert message into SIM"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1172
    iget-object v1, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x16

    move-object/from16 v10, p1

    invoke-virtual {v1, v4, v3, v10}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    .line 1174
    iput v3, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1175
    return-object v0

    .line 1178
    :cond_2c
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v15

    .line 1179
    .local v15, "msgCount":I
    const/4 v1, 0x1

    .line 1181
    .local v1, "isDeliverPdu":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertText msgCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1183
    const-string v4, ""

    iput-object v4, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 1185
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getSmsSimMemoryStatus(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v17

    .line 1186
    .local v17, "memStatus":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    if-eqz v17, :cond_272

    .line 1187
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->getUnused()I

    move-result v4

    .line 1188
    .local v4, "unused":I
    const/4 v5, 0x7

    if-ge v4, v15, :cond_82

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertText SIM mem is not enough ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1190
    iput v5, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1191
    return-object v0

    .line 1193
    .end local v4    # "unused":I
    :cond_82
    nop

    .line 1199
    invoke-static/range {p2 .. p2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 1200
    const-string v4, "insertText invalid sc address"

    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1201
    const/4 v4, 0x0

    move-object/from16 v26, v4

    .end local p2    # "scAddress":Ljava/lang/String;
    .local v4, "scAddress":Ljava/lang/String;
    goto :goto_94

    .line 1199
    .end local v4    # "scAddress":Ljava/lang/String;
    .restart local p2    # "scAddress":Ljava/lang/String;
    :cond_92
    move-object/from16 v26, p2

    .line 1204
    .end local p2    # "scAddress":Ljava/lang/String;
    .local v26, "scAddress":Ljava/lang/String;
    :goto_94
    invoke-static/range {p3 .. p3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkPhoneNumberInternal(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 1205
    const-string v2, "insertText invalid address"

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1206
    const/16 v2, 0x8

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1207
    return-object v0

    .line 1210
    :cond_a4
    if-eq v9, v3, :cond_d0

    const/4 v4, 0x3

    if-ne v9, v4, :cond_aa

    goto :goto_d0

    .line 1213
    :cond_aa
    const/4 v4, 0x5

    if-eq v9, v4, :cond_c7

    if-ne v9, v5, :cond_b0

    goto :goto_c7

    .line 1217
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertText invalid status "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1218
    iput v3, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1219
    return-object v0

    .line 1214
    :cond_c7
    :goto_c7
    const-string v4, "insertText to encode submit pdu"

    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1215
    const/4 v1, 0x0

    move/from16 v27, v1

    goto :goto_d8

    .line 1211
    :cond_d0
    :goto_d0
    const-string v4, "insertText to encode delivery pdu"

    invoke-virtual {v7, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1212
    const/4 v1, 0x1

    move/from16 v27, v1

    .line 1221
    .end local v1    # "isDeliverPdu":Z
    .local v27, "isDeliverPdu":Z
    :goto_d8
    const-string v1, "insertText params check pass"

    invoke-virtual {v7, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1223
    const/4 v1, 0x2

    iget-object v4, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v1, v4, :cond_f5

    .line 1224
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->writeTextMessageToRuim(Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v1

    return-object v1

    .line 1228
    :cond_f5
    const/4 v1, 0x0

    .line 1229
    .local v1, "encoding":I
    new-array v4, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1230
    .local v4, "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_f9
    if-ge v5, v15, :cond_118

    .line 1231
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1233
    aget-object v6, v4, v5

    iget v6, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v6, :cond_115

    if-eqz v1, :cond_111

    if-ne v1, v3, :cond_115

    .line 1236
    :cond_111
    aget-object v6, v4, v5

    iget v1, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1230
    :cond_115
    add-int/lit8 v5, v5, 0x1

    goto :goto_f9

    .line 1240
    .end local v5    # "i":I
    :cond_118
    const-string v2, "insertText create & insert pdu start..."

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1241
    const/4 v2, 0x0

    move v5, v2

    move-object v2, v0

    .end local v0    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .local v2, "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .restart local v5    # "i":I
    :goto_120
    if-ge v5, v15, :cond_259

    .line 1242
    iget v0, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    if-ne v0, v3, :cond_12e

    if-lez v5, :cond_12e

    .line 1243
    const-string v0, "insertText last message insert fail"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1244
    return-object v2

    .line 1247
    :cond_12e
    const/4 v0, -0x1

    .line 1248
    .local v0, "singleShiftId":I
    const/4 v6, -0x1

    .line 1249
    .local v6, "lockingShiftId":I
    aget-object v11, v4, v5

    iget v14, v11, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1250
    .local v14, "language":I
    move v11, v1

    .line 1252
    .local v11, "encoding_detail":I
    if-ne v1, v3, :cond_177

    .line 1253
    aget-object v12, v4, v5

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-lez v12, :cond_153

    aget-object v12, v4, v5

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_153

    .line 1254
    aget-object v12, v4, v5

    iget v0, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1255
    aget-object v12, v4, v5

    iget v6, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1256
    const/16 v11, 0xd

    move/from16 v28, v6

    move/from16 v29, v11

    move v6, v0

    goto :goto_17c

    .line 1259
    :cond_153
    aget-object v12, v4, v5

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_165

    .line 1260
    aget-object v12, v4, v5

    iget v6, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 1261
    const/16 v11, 0xc

    move/from16 v28, v6

    move/from16 v29, v11

    move v6, v0

    goto :goto_17c

    .line 1263
    :cond_165
    aget-object v12, v4, v5

    iget v12, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-lez v12, :cond_177

    .line 1264
    aget-object v12, v4, v5

    iget v0, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 1265
    const/16 v11, 0xb

    move/from16 v28, v6

    move/from16 v29, v11

    move v6, v0

    goto :goto_17c

    .line 1270
    :cond_177
    move/from16 v28, v6

    move/from16 v29, v11

    move v6, v0

    .end local v0    # "singleShiftId":I
    .end local v11    # "encoding_detail":I
    .local v6, "singleShiftId":I
    .local v28, "lockingShiftId":I
    .local v29, "encoding_detail":I
    :goto_17c
    const/4 v0, 0x0

    .line 1271
    .local v0, "smsHeader":[B
    if-le v15, v3, :cond_19b

    .line 1272
    const-string v11, "insertText create pdu header for concat-message"

    invoke-virtual {v7, v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1273
    const/4 v11, -0x1

    invoke-static {}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->getNextConcatRef()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v5, 0x1

    move/from16 v30, v14

    .end local v14    # "language":I
    .local v30, "language":I
    move v14, v15

    move/from16 v31, v15

    .end local v15    # "msgCount":I
    .local v31, "msgCount":I
    move v15, v6

    move/from16 v16, v28

    invoke-static/range {v11 .. v16}, Lcom/mediatek/internal/telephony/MtkSmsHeader;->getSubmitPduHeaderWithLang(IIIIII)[B

    move-result-object v0

    move-object v11, v0

    goto :goto_1a0

    .line 1271
    .end local v30    # "language":I
    .end local v31    # "msgCount":I
    .restart local v14    # "language":I
    .restart local v15    # "msgCount":I
    :cond_19b
    move/from16 v30, v14

    move/from16 v31, v15

    .end local v14    # "language":I
    .end local v15    # "msgCount":I
    .restart local v30    # "language":I
    .restart local v31    # "msgCount":I
    move-object v11, v0

    .line 1277
    .end local v0    # "smsHeader":[B
    .local v11, "smsHeader":[B
    :goto_1a0
    if-eqz v27, :cond_1fb

    .line 1278
    nop

    .line 1280
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/String;

    .line 1279
    move-object/from16 v18, v26

    move-object/from16 v19, p3

    move-object/from16 v21, v11

    move-wide/from16 v22, p6

    move/from16 v24, v29

    move/from16 v25, v30

    invoke-static/range {v18 .. v25}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;

    move-result-object v12

    .line 1282
    .local v12, "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    if-eqz v12, :cond_1f2

    .line 1283
    new-instance v13, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1284
    .local v13, "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v13

    .line 1285
    :try_start_1c3
    iget-object v14, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v14, v14, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v15, v12, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 1286
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    iget-object v3, v12, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;->encodedMessage:[B

    .line 1287
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;
    :try_end_1d5
    .catchall {:try_start_1c3 .. :try_end_1d5} :catchall_1eb

    .line 1288
    move/from16 v32, v1

    const/16 v1, 0x66

    .end local v1    # "encoding":I
    .local v32, "encoding":I
    :try_start_1d9
    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1285
    invoke-interface {v14, v9, v15, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1290
    invoke-virtual {v7, v13}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1291
    monitor-exit v13
    :try_end_1e4
    .catchall {:try_start_1d9 .. :try_end_1e4} :catchall_1f0

    .line 1292
    iget-object v0, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 1293
    .end local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v13    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    .local v0, "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    nop

    .line 1298
    .end local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    move-object v2, v0

    goto :goto_244

    .line 1291
    .end local v0    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v32    # "encoding":I
    .restart local v1    # "encoding":I
    .restart local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .restart local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    .restart local v13    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    :catchall_1eb
    move-exception v0

    move/from16 v32, v1

    .end local v1    # "encoding":I
    .restart local v32    # "encoding":I
    :goto_1ee
    :try_start_1ee
    monitor-exit v13
    :try_end_1ef
    .catchall {:try_start_1ee .. :try_end_1ef} :catchall_1f0

    throw v0

    :catchall_1f0
    move-exception v0

    goto :goto_1ee

    .line 1294
    .end local v13    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    .end local v32    # "encoding":I
    .restart local v1    # "encoding":I
    :cond_1f2
    const-string v0, "insertText fail to create deliver pdu"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1295
    const/4 v0, 0x1

    iput v0, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1296
    return-object v2

    .line 1299
    .end local v12    # "pdu":Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage$DeliverPdu;
    :cond_1fb
    move/from16 v32, v1

    .line 1301
    .end local v1    # "encoding":I
    .restart local v32    # "encoding":I
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v25, -0x1

    .line 1300
    move-object/from16 v18, v26

    move-object/from16 v19, p3

    move-object/from16 v22, v11

    move/from16 v23, v29

    move/from16 v24, v30

    invoke-static/range {v18 .. v25}, Lcom/mediatek/internal/telephony/gsm/MtkSmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 1303
    .local v1, "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v1, :cond_250

    .line 1304
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    move-object v3, v0

    .line 1305
    .local v3, "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v3

    .line 1306
    :try_start_220
    iget-object v0, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 1307
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1308
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v7, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    .line 1309
    const/16 v15, 0x66

    invoke-virtual {v14, v15, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1306
    invoke-interface {v0, v9, v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1312
    invoke-virtual {v7, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1313
    monitor-exit v3
    :try_end_23f
    .catchall {:try_start_220 .. :try_end_23f} :catchall_24d

    .line 1314
    iget-object v0, v3, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 1315
    .end local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v3    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    .restart local v0    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    move-object v2, v0

    .line 1241
    .end local v0    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v1    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v6    # "singleShiftId":I
    .end local v11    # "smsHeader":[B
    .end local v28    # "lockingShiftId":I
    .end local v29    # "encoding_detail":I
    .end local v30    # "language":I
    .restart local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    :goto_244
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v31

    move/from16 v1, v32

    const/4 v3, 0x1

    goto/16 :goto_120

    .line 1313
    .restart local v1    # "pdu":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v3    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    .restart local v6    # "singleShiftId":I
    .restart local v11    # "smsHeader":[B
    .restart local v28    # "lockingShiftId":I
    .restart local v29    # "encoding_detail":I
    .restart local v30    # "language":I
    :catchall_24d
    move-exception v0

    :try_start_24e
    monitor-exit v3
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_24d

    throw v0

    .line 1316
    .end local v3    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    :cond_250
    const-string v0, "insertText fail to create submit pdu"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1317
    const/4 v0, 0x1

    iput v0, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1318
    return-object v2

    .line 1241
    .end local v6    # "singleShiftId":I
    .end local v11    # "smsHeader":[B
    .end local v28    # "lockingShiftId":I
    .end local v29    # "encoding_detail":I
    .end local v30    # "language":I
    .end local v31    # "msgCount":I
    .end local v32    # "encoding":I
    .local v1, "encoding":I
    .restart local v15    # "msgCount":I
    :cond_259
    move/from16 v32, v1

    move/from16 v31, v15

    .line 1322
    .end local v1    # "encoding":I
    .end local v5    # "i":I
    .end local v15    # "msgCount":I
    .restart local v31    # "msgCount":I
    .restart local v32    # "encoding":I
    const-string v0, "insertText create & insert pdu end"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1324
    iget v0, v2, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    if-nez v0, :cond_26c

    .line 1325
    const-string v0, "insertText all messages inserted"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_271

    .line 1327
    :cond_26c
    const-string v0, "insertText pdu insert fail"

    invoke-virtual {v7, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1330
    :goto_271
    return-object v2

    .line 1194
    .end local v2    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v4    # "details":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v26    # "scAddress":Ljava/lang/String;
    .end local v27    # "isDeliverPdu":Z
    .end local v31    # "msgCount":I
    .end local v32    # "encoding":I
    .restart local v0    # "smsInsertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .local v1, "isDeliverPdu":Z
    .restart local v15    # "msgCount":I
    .restart local p2    # "scAddress":Ljava/lang/String;
    :cond_272
    const-string v2, "insertText fail to get SIM mem status"

    invoke-virtual {v7, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1195
    const/4 v2, 0x1

    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1196
    return-object v0
.end method

.method public isSmsReady()Z
    .registers 4

    .line 814
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->isSmsReady()Z

    move-result v0

    .line 816
    .local v0, "isReady":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmsReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 817
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 629
    const-string v0, "MtkIccSmsInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 635
    const-string v0, "MtkIccSmsInterfaceManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method protected makeSmsRecordData(I[B)[B
    .registers 9
    .param p1, "status"    # I
    .param p2, "pdu"    # [B

    .line 591
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/16 v1, 0xb0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_e

    .line 592
    new-array v0, v1, [B

    .local v0, "data":[B
    goto :goto_12

    .line 594
    .end local v0    # "data":[B
    :cond_e
    const/16 v0, 0xff

    new-array v0, v0, [B

    .line 598
    .restart local v0    # "data":[B
    :goto_12
    and-int/lit8 v3, p1, 0x7

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM-makeSmsRecordData: pdu size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 601
    array-length v3, p2

    if-ne v3, v1, :cond_42

    .line 602
    const-string v1, "ISIM-makeSmsRecordData: sim pdu"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 604
    :try_start_35
    array-length v1, p2

    sub-int/2addr v1, v2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_41

    .line 605
    :catch_3b
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "ISIM-makeSmsRecordData: out of bounds, sim pdu"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 607
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_41
    goto :goto_52

    .line 609
    :cond_42
    const-string v1, "ISIM-makeSmsRecordData: normal pdu"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 611
    :try_start_47
    array-length v1, p2

    invoke-static {p2, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_47 .. :try_end_4b} :catch_4c

    .line 614
    goto :goto_52

    .line 612
    :catch_4c
    move-exception v1

    .line 613
    .restart local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "ISIM-makeSmsRecordData: out of bounds, normal pdu"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 619
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_52
    array-length v1, p2

    add-int/2addr v1, v2

    .local v1, "j":I
    :goto_54
    array-length v2, v0

    if-ge v1, v2, :cond_5d

    .line 620
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 623
    .end local v1    # "j":I
    :cond_5d
    return-object v0
.end method

.method public queryCellBroadcastSmsActivation()Z
    .registers 4

    .line 1552
    const-string v0, "queryCellBroadcastSmsActivation"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1553
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1554
    .local v0, "queryRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1555
    :try_start_b
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1557
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1558
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->getGsmBroadcastActivation(Landroid/os/Message;)V

    .line 1560
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1561
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_29

    .line 1562
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1561
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public removeCellBroadcastMsg(II)Z
    .registers 6
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCellBroadcastMsg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1617
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1618
    .local v0, "removeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1619
    :try_start_27
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1622
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1623
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, p2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->removeCellBroadcastMsg(IILandroid/os/Message;)V

    .line 1625
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1626
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_45

    .line 1628
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1626
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method protected sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "isForVvm"    # Z

    .line 457
    const-string v0, "sendDataMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 459
    const-string v0, "send_data"

    invoke-static {p2, v0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 460
    return-void

    .line 463
    :cond_e
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 464
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 465
    return-void

    .line 468
    :cond_1a
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 472
    return-void
.end method

.method public sendDataWithOriginalPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 24
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "originalPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "checkPermission"    # Z

    .line 669
    move-object v0, p0

    const-string v1, "MtkIccSmsInterfaceManager"

    const-string v2, "Enter IccSmsInterfaceManager.sendDataWithOriginalPort"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    if-eqz p9, :cond_61

    .line 671
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v1, 0x2

    const-string v2, "SMS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData: data=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' sentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " deliveryIntent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p8

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_51

    .line 675
    :cond_4d
    move-object/from16 v2, p7

    move-object/from16 v12, p8

    .line 679
    :goto_51
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v13, p1

    invoke-virtual {v1, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_66

    .line 681
    return-void

    .line 670
    :cond_61
    move-object v13, p1

    move-object/from16 v2, p7

    move-object/from16 v12, p8

    .line 684
    :cond_66
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v3, v1

    check-cast v3, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 686
    return-void
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 776
    .local p5, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 781
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    .line 782
    .local v2, "rData":Lcom/android/internal/telephony/SmsRawData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMultipartData:data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 783
    .end local v2    # "rData":Lcom/android/internal/telephony/SmsRawData;
    goto :goto_1b

    .line 785
    :cond_44
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v12, p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_54

    .line 787
    return-void

    .line 789
    :cond_54
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v4, v1

    check-cast v4, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object/from16 v9, p5

    check-cast v9, Ljava/util/ArrayList;

    move-object/from16 v10, p6

    check-cast v10, Ljava/util/ArrayList;

    move-object/from16 v11, p7

    check-cast v11, Ljava/util/ArrayList;

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 792
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .registers 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributionTag"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .param p9, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    .line 718
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "sendMultipartTextMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 726
    invoke-static {p3, p5, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 727
    return-void

    .line 730
    :cond_19
    invoke-direct {p0, p6}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 731
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 732
    return-void

    .line 735
    :cond_25
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 737
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    .line 740
    return-void
.end method

.method public sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    .registers 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "encodingType"    # I
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 882
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v11, p5

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V

    .line 886
    return-void
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    .registers 32
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p5, "extraParams"    # Landroid/os/Bundle;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 947
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p6

    move-object/from16 v12, p7

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    move-object/from16 v13, p1

    invoke-virtual {v0, v2, v1, v13}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 953
    return-void

    .line 956
    :cond_24
    invoke-direct {v14, v15}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 957
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {v14, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 958
    return-void

    .line 961
    :cond_30
    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 962
    .end local p2    # "destAddr":Ljava/lang/String;
    .local v16, "destAddr":Ljava/lang/String;
    const/4 v0, -0x1

    const-string v1, "validity_period"

    move-object/from16 v11, p5

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 964
    .local v17, "validityPeriod":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_109

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_109

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v0

    if-nez v0, :cond_109

    .line 965
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_56
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_108

    .line 968
    move-object/from16 v9, p4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 969
    .local v0, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    if-eqz v1, :cond_93

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v10, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_b8

    .line 972
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v10, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 973
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 976
    .end local v0    # "singlePart":Ljava/lang/String;
    .local v18, "singlePart":Ljava/lang/String;
    :goto_b8
    const/4 v0, 0x0

    .line 977
    .local v0, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_cb

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_cb

    .line 978
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    goto :goto_cd

    .line 981
    :cond_cb
    move-object/from16 v19, v0

    .end local v0    # "singleSentIntent":Landroid/app/PendingIntent;
    .local v19, "singleSentIntent":Landroid/app/PendingIntent;
    :goto_cd
    const/4 v0, 0x0

    .line 982
    .local v0, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz v12, :cond_e0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_e0

    .line 983
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    goto :goto_e2

    .line 987
    :cond_e0
    move-object/from16 v20, v0

    .end local v0    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    .local v20, "singleDeliveryIntent":Landroid/app/PendingIntent;
    :goto_e2
    const/4 v2, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, p8

    move/from16 v9, v21

    move/from16 v21, v10

    .end local v10    # "i":I
    .local v21, "i":I
    move/from16 v10, v22

    move/from16 v11, v17

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 965
    .end local v18    # "singlePart":Ljava/lang/String;
    .end local v19    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v20    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v11, p5

    .end local v21    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_56

    .line 992
    .end local v10    # "i":I
    :cond_108
    return-void

    .line 995
    :cond_109
    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, v17

    move-wide/from16 v12, v18

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIJ)V

    .line 999
    return-void
.end method

.method public sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V
    .registers 34
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZII)V"
        }
    .end annotation

    .line 1923
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SEND_SMS"

    const-string v6, "Sending SMS message"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    iget-object v4, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v4, v6, v5, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_26

    .line 1929
    return-void

    .line 1932
    :cond_26
    invoke-direct {v0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1933
    const-string v4, "TDD data only and w/o permission!"

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1934
    return-void

    .line 1937
    :cond_32
    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1939
    .end local p2    # "destAddr":Ljava/lang/String;
    .local v4, "destAddr":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_f5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_f5

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_f5

    .line 1940
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4e
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_f4

    .line 1943
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1944
    .local v6, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v7

    const/16 v8, 0x2f

    const/16 v9, 0x20

    if-eqz v7, :cond_87

    .line 1945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v5, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_aa

    .line 1947
    :cond_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1948
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1947
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1951
    :goto_aa
    const/4 v7, 0x0

    .line 1952
    .local v7, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_bd

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_bd

    .line 1953
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/app/PendingIntent;

    move-object/from16 v20, v7

    goto :goto_bf

    .line 1956
    :cond_bd
    move-object/from16 v20, v7

    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    .local v20, "singleSentIntent":Landroid/app/PendingIntent;
    :goto_bf
    const/4 v7, 0x0

    .line 1957
    .local v7, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_d2

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_d2

    .line 1958
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Landroid/app/PendingIntent;

    move-object/from16 v21, v7

    goto :goto_d4

    .line 1961
    :cond_d2
    move-object/from16 v21, v7

    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    .local v21, "singleDeliveryIntent":Landroid/app/PendingIntent;
    :goto_d4
    iget-object v7, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v7, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    const/4 v14, 0x0

    move-object v8, v4

    move-object/from16 v9, p3

    move-object v10, v6

    move/from16 v11, p11

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v15, p1

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v7 .. v19}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1940
    .end local v6    # "singlePart":Ljava/lang/String;
    .end local v20    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v21    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4e

    .line 1966
    .end local v5    # "i":I
    :cond_f4
    return-void

    .line 1969
    :cond_f5
    iget-object v5, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v7, v5

    check-cast v7, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    move-object v12, v2

    check-cast v12, Ljava/util/ArrayList;

    move-object v13, v3

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object v8, v4

    move-object/from16 v9, p3

    move/from16 v11, p11

    move-object/from16 v15, p1

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    invoke-virtual/range {v7 .. v19}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1974
    return-void
.end method

.method public sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 500
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 503
    const-string v1, "TDD data only and w/o permission!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 504
    return-void

    .line 507
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 509
    return-void
.end method

.method public sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 476
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 478
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 479
    const-string v1, "TDD data only and w/o permission!"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 480
    return-void

    .line 483
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 484
    return-void
.end method

.method protected sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V
    .registers 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "isForVvm"    # Z
    .param p12, "messageId"    # J

    .line 410
    const-string v0, "sendTextMessage"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 412
    invoke-static {p2, p4, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 413
    return-void

    .line 416
    :cond_c
    invoke-direct {p0, p5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 417
    const-string v0, "TDD data only and w/o permission!"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 418
    return-void

    .line 421
    :cond_18
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    invoke-super/range {p0 .. p13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    .line 426
    return-void
.end method

.method public sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "encodingType"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z

    .line 849
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v11, p5

    invoke-virtual/range {v0 .. v11}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V

    .line 852
    return-void
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .registers 28
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "extraParams"    # Landroid/os/Bundle;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z

    .line 908
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, v14, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v0, v2, v1, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_20

    .line 914
    return-void

    .line 917
    :cond_20
    const/4 v0, -0x1

    const-string v1, "validity_period"

    move-object/from16 v12, p5

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 918
    .local v16, "validityPeriod":I
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v10, v16

    move-wide/from16 v12, v17

    invoke-virtual/range {v0 .. v13}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIZJ)V

    .line 921
    return-void
.end method

.method public sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V
    .registers 29
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .param p8, "priority"    # I
    .param p9, "expectMore"    # Z
    .param p10, "validityPeriod"    # I
    .param p11, "encodingType"    # I

    .line 1852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x14

    move-object/from16 v15, p1

    invoke-virtual {v1, v3, v2, v15}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_20

    .line 1858
    return-void

    .line 1861
    :cond_20
    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->checkTddDataOnlyPermission(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1862
    const-string v2, "TDD data only and w/o permission!"

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1863
    return-void

    .line 1866
    :cond_2e
    iget-object v2, v0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v4, v2

    check-cast v4, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p11

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p1

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v4 .. v16}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    .line 1870
    return-void
.end method

.method protected setCellBroadcastActivation(Z)Z
    .registers 6
    .param p1, "activate"    # Z

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling proprietary setCellBroadcastActivation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1784
    move v0, p1

    .line 1788
    .local v0, "newActivationState":I
    iget v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    if-eq v1, v0, :cond_23

    .line 1789
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z

    move-result v1

    .local v1, "success":Z
    goto :goto_24

    .line 1791
    .end local v1    # "success":Z
    :cond_23
    const/4 v1, 0x1

    .line 1794
    .restart local v1    # "success":Z
    :goto_24
    if-eqz v1, :cond_42

    iget v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    if-eq v2, v0, :cond_42

    .line 1795
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentCellBroadcastActivation change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mCurrentCellBroadcastActivation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1799
    :cond_42
    return v1
.end method

.method public setCellBroadcastLangs(Ljava/lang/String;)Z
    .registers 5
    .param p1, "lang"    # Ljava/lang/String;

    .line 1581
    const-string v0, "setCellBroadcastLangs"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Set CellBroadcast Langs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1586
    .local v0, "setCBLRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1587
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1590
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1591
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setGsmBroadcastLangs(Ljava/lang/String;Landroid/os/Message;)V

    .line 1593
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1594
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_32

    .line 1596
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1594
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public setEtwsConfig(I)Z
    .registers 5
    .param p1, "mode"    # I

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setEtwsConfig("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v2, "Set Etws Config"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1637
    .local v0, "etwsRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1638
    :try_start_28
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1641
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1642
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p1, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setEtws(ILandroid/os/Message;)V

    .line 1644
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1645
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_46

    .line 1647
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1645
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public setScAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 1706
    const-string v0, "setScAddressUsingSubId"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "set Sc Address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1711
    .local v0, "setScRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1712
    :try_start_14
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1715
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1717
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1718
    .end local v1    # "response":Landroid/os/Message;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_4a

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScAddressUsingSubId result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1721
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1718
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public setSmsMemoryStatus(Z)V
    .registers 5
    .param p1, "status"    # Z

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmsMemoryStatus: set storage status -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Set Sms Memory Status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    check-cast v0, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSmsDispatchersController;->setSmsMemoryStatus(Z)V

    .line 806
    return-void
.end method

.method public setSmsParameters(Ljava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "params"    # Lmediatek/telephony/MtkSmsParameters;

    .line 1117
    const-string v0, "setSmsParameters"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1118
    const-string v0, "Set SMS parametner on SIM"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1121
    const/4 v0, 0x0

    return v0

    .line 1123
    :cond_1a
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    .line 1124
    .local v0, "setParamRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v0

    .line 1125
    :try_start_20
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1127
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v2, Lcom/mediatek/internal/telephony/MtkRIL;

    .line 1128
    .local v2, "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    invoke-virtual {v2, p2, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->setSmsParameters(Lmediatek/telephony/MtkSmsParameters;Landroid/os/Message;)V

    .line 1130
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1131
    .end local v1    # "response":Landroid/os/Message;
    .end local v2    # "ci":Lcom/mediatek/internal/telephony/MtkRIL;
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_3e

    .line 1132
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1131
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method protected writeTextMessageToRuim(Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;
    .registers 14
    .param p1, "address"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lmediatek/telephony/MtkSimSmsInsertStatus;"
        }
    .end annotation

    .line 1421
    .local p2, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmediatek/telephony/MtkSimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    .line 1423
    .local v0, "insertRet":Lmediatek/telephony/MtkSimSmsInsertStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_57

    .line 1424
    iget v3, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 1425
    const-string v2, "[copyText Exception happened when copy message"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1426
    return-object v0

    .line 1429
    :cond_1a
    nop

    .line 1431
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1430
    invoke-static {p1, v3, p4, p5}, Lcom/mediatek/internal/telephony/cdma/MtkSmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 1433
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_4f

    .line 1434
    new-instance v4, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    invoke-direct {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    move-object v5, v4

    .line 1435
    .local v5, "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    monitor-enter v5

    .line 1436
    :try_start_2e
    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mMtkHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1438
    .local v4, "response":Landroid/os/Message;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, v6, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-interface {v6, p3, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(I[BLandroid/os/Message;)V

    .line 1440
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;)V

    .line 1441
    .end local v4    # "response":Landroid/os/Message;
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_4c

    .line 1442
    iget-object v4, v5, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lmediatek/telephony/MtkSimSmsInsertStatus;

    .line 1443
    .end local v5    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    nop

    .line 1423
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1441
    .restart local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v5    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 1444
    .end local v5    # "writeRequest":Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
    :cond_4f
    const-string v2, "writeTextMessageToRuim: pdu == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1445
    iput v4, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1446
    return-object v0

    .line 1450
    .end local v1    # "i":I
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_57
    const-string v1, "writeTextMessageToRuim: done"

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/MtkIccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1451
    iput v2, v0, Lmediatek/telephony/MtkSimSmsInsertStatus;->insertStatus:I

    .line 1452
    return-object v0
.end method
