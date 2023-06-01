.class public Lcom/mediatek/simservs/client/SimServs;
.super Ljava/lang/Object;
.source "SimServs.java"


# static fields
.field public static AUID_SIMSERVS:Ljava/lang/String; = null

.field public static final CARDTYPE_ISIM:I = 0x2

.field public static final CARDTYPE_UNSPECIFIED:I = 0x0

.field public static final CARDTYPE_USIM:I = 0x1

.field public static final LIB_CONFIG_MULTIPLE_RULE_CONDITIONS:Z = true

.field public static final SIMSERVS_FILENAME:Ljava/lang/String; = "simservs.xml"

.field public static final TAG:Ljava/lang/String; = "SimServs"

.field public static sDebug:Z

.field public static sETagDisable:Z

.field public static sInstance:Lcom/mediatek/simservs/client/SimServs;

.field public static sSimservQueryWhole:Z

.field private static sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private static sXcapRoot:Ljava/lang/String;

.field private static sXui:Ljava/lang/String;


# instance fields
.field private mCardType:I

.field private mContext:Landroid/content/Context;

.field public mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

.field public mDocumentUri:Ljava/net/URI;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIntendedId:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPhoneId:I

.field private mUsername:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 34
    const-string v1, "simservs.ngn.etsi.org"

    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    .line 35
    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    .line 36
    sput-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sSimservQueryWhole:Z

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 40
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 41
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mUsername:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mPassword:Ljava/lang/String;

    .line 62
    const-string v0, "vendor.mediatek.simserv.debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "debugProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 64
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/simservs/client/SimServs;->sDebug:Z

    .line 65
    const-string v1, "SimServs"

    const-string v2, "sDebug enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_31
    return-void
.end method

.method private buildRootUri()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v0, "xcapRoot":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xcap.protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "xcap.protocol"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Simservs"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v1, "https"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "protocol":Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    const-string v3, ".pub.3gppnetwork.org"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://xcap.ims.mnc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, ".mcc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 385
    :cond_55
    const/4 v4, 0x2

    if-ne v2, v4, :cond_cb

    .line 386
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v4, "://xcap."

    if-eqz v2, :cond_9f

    const-string v5, "3gppnetwork.org"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 387
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "domain":Ljava/lang/String;
    if-nez v2, :cond_6d

    .line 389
    return-void

    .line 391
    :cond_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/4 v4, 0x0

    const-string v5, ".3gppnetwork.org"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v4, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v6, ".pub"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 394
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 396
    :cond_9b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .end local v2    # "domain":Ljava/lang/String;
    :goto_9e
    goto :goto_bc

    .line 399
    :cond_9f
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->getImpiDomain()Ljava/lang/String;

    move-result-object v2

    .line 400
    .restart local v2    # "domain":Ljava/lang/String;
    if-nez v2, :cond_a6

    .line 401
    return-void

    .line 403
    :cond_a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .end local v2    # "domain":Ljava/lang/String;
    nop

    .line 410
    :goto_bc
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V

    .line 413
    return-void

    .line 407
    :cond_cb
    return-void
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 888
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 889
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 891
    .local v1, "textByte":[B
    if-nez p0, :cond_a

    :try_start_7
    const-string v2, "null"

    return-object v2

    .line 893
    :cond_a
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-object v1, v2

    .line 897
    goto :goto_17

    .line 894
    :catch_12
    move-exception v2

    .line 895
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    const/4 v1, 0x0

    .line 899
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_17
    if-nez v1, :cond_1c

    const-string v2, ""

    return-object v2

    .line 901
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method private getImpiDomain()Ljava/lang/String;
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 360
    const-string v0, "@"

    .line 361
    .local v0, "delimiter":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2

    .line 364
    .end local v0    # "delimiter":Ljava/lang/String;
    .end local v1    # "temp":[Ljava/lang/String;
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/simservs/client/SimServs;
    .registers 1

    .line 75
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Lcom/mediatek/simservs/client/SimServs;

    invoke-direct {v0}, Lcom/mediatek/simservs/client/SimServs;-><init>()V

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    .line 79
    :cond_b
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->initializeDebugParam()V

    .line 81
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sInstance:Lcom/mediatek/simservs/client/SimServs;

    return-object v0
.end method

.method private static initializeDebugParam()V
    .registers 3

    .line 337
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 338
    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->load()V

    .line 340
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapRoot()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "xcapRoot":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 344
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 347
    :cond_19
    sget-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapXui()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "xui":Ljava/lang/String;
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 350
    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 352
    :cond_29
    return-void
.end method


# virtual methods
.method public buildDocumentUri()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapDocumentName()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "xcapDocumentName":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapAUID()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "xcapAUID":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 424
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    move-object v3, v1

    goto :goto_1a

    :cond_18
    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    :goto_1a
    sget-object v4, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 425
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    .line 426
    move-object v5, v0

    goto :goto_28

    :cond_26
    const-string v5, "simservs.xml"

    :goto_28
    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "document selector is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimServs"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-direct {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;-><init>()V

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 432
    const-string v2, "buildDocumentUri():Create instance for mXcapUri"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    sget-object v3, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri;->setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentSelector:Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 435
    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    .line 436
    return-void
.end method

.method public getBarringServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 874
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBarringServiceCapability(Z)Lcom/mediatek/simservs/capability/BarringServiceCapability;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 861
    new-instance v0, Lcom/mediatek/simservs/capability/BarringServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/capability/BarringServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 726
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationDiversion(Z)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 691
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 694
    return-object v0
.end method

.method public getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 707
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    if-eqz p2, :cond_f

    .line 709
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 712
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->loadConfiguration()V

    .line 713
    return-object v0
.end method

.method public getCommunicationWaiting(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCommunicationWaiting(Z)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 453
    return-object v0
.end method

.method public getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/CommunicationWaiting;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v0, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    if-eqz p2, :cond_f

    .line 468
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 471
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationWaiting;->loadConfiguration()V

    .line 472
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiversionServiceCapability(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 849
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDiversionServiceCapability(Z)Lcom/mediatek/simservs/capability/DiversionServiceCapability;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 836
    new-instance v0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/capability/DiversionServiceCapability;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDocumentUri()Ljava/lang/String;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mDocumentUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 739
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIncomingCommunicationBarring(Z)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 751
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 755
    return-object v0
.end method

.method public getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 768
    new-instance v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .local v0, "icb":Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
    if-eqz p2, :cond_f

    .line 771
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 774
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->loadConfiguration()V

    .line 775
    return-object v0
.end method

.method public getIntendedId()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 569
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 499
    return-object v0
.end method

.method public getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-eqz p2, :cond_f

    .line 515
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 518
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->loadConfiguration()V

    .line 519
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 666
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 594
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .local v0, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 597
    return-object v0
.end method

.method public getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 610
    new-instance v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v0, "oipr":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    if-eqz p2, :cond_f

    .line 613
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 616
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 617
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 788
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutgoingCommunicationBarring(Z)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 800
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 804
    return-object v0
.end method

.method public getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 817
    new-instance v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .local v0, "ocb":Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;
    if-eqz p2, :cond_f

    .line 820
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 823
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->loadConfiguration()V

    .line 824
    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 329
    iget v0, p0, Lcom/mediatek/simservs/client/SimServs;->mPhoneId:I

    return v0
.end method

.method public getTerminatingIdentityPresentation(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 582
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentation(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 531
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 535
    return-object v0
.end method

.method public getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 548
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v0, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-eqz p2, :cond_f

    .line 551
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 554
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->loadConfiguration()V

    .line 555
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Lcom/mediatek/xcap/client/uri/XcapUri;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 679
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(Z)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 6
    .param p1, "syncInstance"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 629
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 633
    return-object v0
.end method

.method public getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .registers 7
    .param p1, "syncInstance"    # Z
    .param p2, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 646
    new-instance v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimServs;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v0, "tipr":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-eqz p2, :cond_f

    .line 649
    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 652
    :cond_f
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->loadConfiguration()V

    .line 653
    return-object v0
.end method

.method public getXcapDebugParam()Lcom/mediatek/xcap/client/XcapDebugParam;
    .registers 2

    .line 90
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .registers 2

    .line 287
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXui()Ljava/lang/String;
    .registers 2

    .line 291
    sget-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    return-object v0
.end method

.method public resetParameters()V
    .registers 2

    .line 882
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 883
    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 884
    iput-object v0, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 885
    return-void
.end method

.method public setAUID(Ljava/lang/String;)V
    .registers 4
    .param p1, "auid"    # Ljava/lang/String;

    .line 273
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->AUID_SIMSERVS:Ljava/lang/String;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimServs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method public setAttrNeedQuotationMark(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 260
    const-string v0, "xcap.attr.active.quote"

    if-eqz p1, :cond_a

    .line 261
    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 263
    :cond_a
    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    :goto_f
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 304
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mContext:Landroid/content/Context;

    .line 305
    return-void
.end method

.method public setETagDisable(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setETagDisable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimServs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sput-boolean p1, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    .line 280
    return-void
.end method

.method public setElementUpdateContentType(ZLjava/lang/String;)V
    .registers 5
    .param p1, "specdefined"    # Z
    .param p2, "type"    # Ljava/lang/String;

    .line 204
    const-string v0, "xcap.putelcontenttype"

    if-eqz p1, :cond_a

    .line 205
    const-string v1, "application/xcap-el+xml"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d

    .line 207
    :cond_a
    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :goto_d
    return-void
.end method

.method public setFillCompleteForwardTo(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 233
    const-string v0, "xcap.completeforwardto"

    if-eqz p1, :cond_a

    .line 234
    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 236
    :cond_a
    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    :goto_f
    return-void
.end method

.method public setHandleError409(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 217
    const-string v0, "xcap.handl409"

    if-eqz p1, :cond_a

    .line 218
    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 220
    :cond_a
    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    :goto_f
    return-void
.end method

.method public setHttpCredential(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setIntendedId(Ljava/lang/String;)V
    .registers 2
    .param p1, "intendedId"    # Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mIntendedId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 321
    iput p1, p0, Lcom/mediatek/simservs/client/SimServs;->mPhoneId:I

    .line 322
    return-void
.end method

.method public setSimservQueryWhole(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimservQueryWhole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimServs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sput-boolean p1, Lcom/mediatek/simservs/client/SimServs;->sSimservQueryWhole:Z

    .line 285
    return-void
.end method

.method public setUseHttpProtocolScheme(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 186
    const-string v0, "xcap.protocol"

    if-eqz p1, :cond_a

    .line 187
    const-string v1, "http"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 189
    :cond_a
    const-string v1, "https"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    :goto_f
    return-void
.end method

.method public setXcapNSPrefixSS(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 247
    const-string v0, "xcap.ns.ss"

    if-eqz p1, :cond_a

    .line 248
    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_f

    .line 250
    :cond_a
    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    :goto_f
    return-void
.end method

.method public setXcapRoot(Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapRoot"    # Ljava/lang/String;

    .line 99
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 101
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimServs;->buildDocumentUri()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_5} :catch_6

    .line 105
    goto :goto_d

    .line 102
    :catch_6
    move-exception v0

    .line 103
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 104
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/simservs/client/SimServs;->sXcapRoot:Ljava/lang/String;

    .line 106
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_d
    return-void
.end method

.method public setXcapRootByImpi(Ljava/lang/String;)V
    .registers 3
    .param p1, "impi"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 115
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpi:Ljava/lang/String;

    .line 117
    :try_start_5
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_8} :catch_9

    .line 120
    goto :goto_d

    .line 118
    :catch_9
    move-exception v0

    .line 119
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_d
    return-void
.end method

.method public setXcapRootByMccMnc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 131
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 134
    :try_start_7
    invoke-direct {p0}, Lcom/mediatek/simservs/client/SimServs;->buildRootUri()V
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_a} :catch_b

    .line 137
    goto :goto_f

    .line 135
    :catch_b
    move-exception v0

    .line 136
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_f
    return-void
.end method

.method public setXui(Ljava/lang/String;)V
    .registers 2
    .param p1, "xui"    # Ljava/lang/String;

    .line 141
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setXuiByImpu(Ljava/lang/String;)V
    .registers 3
    .param p1, "impu"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 151
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImpu:Ljava/lang/String;

    .line 152
    sput-object p1, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setXuiByImsiMccMnc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/simservs/client/SimServs;->mCardType:I

    .line 164
    iput-object p1, p0, Lcom/mediatek/simservs/client/SimServs;->mImsi:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/mediatek/simservs/client/SimServs;->mMcc:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/mediatek/simservs/client/SimServs;->mMnc:Ljava/lang/String;

    .line 168
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 168
    const-string v0, "sip:%s@ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/simservs/client/SimServs;->sXui:Ljava/lang/String;

    .line 170
    return-void
.end method
