.class public final Lcom/mediatek/bt/mesh/ConfigMessageParams;
.super Ljava/lang/Object;
.source "ConfigMessageParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/bt/mesh/ConfigMessageParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TTL:I

.field private addressType:I

.field private addressValue:I

.field private appkey:[I

.field private appkeyIndex:I

.field private beacon:I

.field private count:I

.field private countLog:I

.field private destination:I

.field private elementAddress:I

.field private features:I

.field private friendshipCredentialFlag:Z

.field private gattProxy:I

.field private identity:I

.field private intervalSteps:I

.field private meshFriend:I

.field private modelId:J

.field private netkey:[I

.field private netkeyIndex:I

.field private page:I

.field private periodLog:I

.field private publishPeriod:I

.field private publishTTL:I

.field private relay:I

.field private retransmitCount:I

.field private retransmitIntervalSteps:I

.field private source:I

.field private transition:I

.field private virtualUUID:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/mediatek/bt/mesh/ConfigMessageParams$1;

    invoke-direct {v0}, Lcom/mediatek/bt/mesh/ConfigMessageParams$1;-><init>()V

    sput-object v0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->beacon:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->page:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->TTL:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->gattProxy:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->meshFriend:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->relay:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitCount:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitIntervalSteps:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    iput-boolean v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->friendshipCredentialFlag:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishTTL:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishPeriod:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkey:[I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkey:[I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->identity:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->transition:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->destination:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->countLog:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->periodLog:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->features:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->source:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->count:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->intervalSteps:I

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/bt/mesh/ConfigMessageParams$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/bt/mesh/ConfigMessageParams$1;

    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/bt/mesh/ConfigMessageParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressType()I
    .registers 2

    .line 442
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    return v0
.end method

.method public getAddressValue()I
    .registers 2

    .line 446
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    return v0
.end method

.method public getAppkey()[I
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkey:[I

    return-object v0
.end method

.method public getAppkeyIndex()I
    .registers 2

    .line 455
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    return v0
.end method

.method public getBeacon()I
    .registers 2

    .line 390
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->beacon:I

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 501
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->count:I

    return v0
.end method

.method public getCountLog()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->countLog:I

    return v0
.end method

.method public getDestination()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->destination:I

    return v0
.end method

.method public getElementAddress()I
    .registers 2

    .line 422
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    return v0
.end method

.method public getFeatures()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->features:I

    return v0
.end method

.method public getFriendshipCredentialFlag()Z
    .registers 2

    .line 430
    iget-boolean v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->friendshipCredentialFlag:Z

    return v0
.end method

.method public getGattProxy()I
    .registers 2

    .line 402
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->gattProxy:I

    return v0
.end method

.method public getIdentity()I
    .registers 2

    .line 473
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->identity:I

    return v0
.end method

.method public getIntervalSteps()I
    .registers 2

    .line 505
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->intervalSteps:I

    return v0
.end method

.method public getMeshFriend()I
    .registers 2

    .line 406
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->meshFriend:I

    return v0
.end method

.method public getModelId()J
    .registers 3

    .line 426
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    return-wide v0
.end method

.method public getNetkey()[I
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkey:[I

    return-object v0
.end method

.method public getNetkeyIndex()I
    .registers 2

    .line 459
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    return v0
.end method

.method public getPage()I
    .registers 2

    .line 394
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->page:I

    return v0
.end method

.method public getPeriodLog()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->periodLog:I

    return v0
.end method

.method public getPublishPeriod()I
    .registers 2

    .line 438
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishPeriod:I

    return v0
.end method

.method public getPublishTtl()I
    .registers 2

    .line 434
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishTTL:I

    return v0
.end method

.method public getRelay()I
    .registers 2

    .line 410
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->relay:I

    return v0
.end method

.method public getRetransmitCount()I
    .registers 2

    .line 414
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitCount:I

    return v0
.end method

.method public getRetransmitIntervalSteps()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitIntervalSteps:I

    return v0
.end method

.method public getSource()I
    .registers 2

    .line 497
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->source:I

    return v0
.end method

.method public getTransition()I
    .registers 2

    .line 477
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->transition:I

    return v0
.end method

.method public getTtl()I
    .registers 2

    .line 398
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->TTL:I

    return v0
.end method

.method public getVirtualUuid()[I
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    return-object v0
.end method

.method public setConfigAppkeyAddParam(II[I)V
    .registers 4
    .param p1, "netkeyIndex"    # I
    .param p2, "appkeyIndex"    # I
    .param p3, "appkey"    # [I

    .line 296
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 297
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 298
    iput-object p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkey:[I

    .line 299
    return-void
.end method

.method public setConfigAppkeyDelParam(II)V
    .registers 3
    .param p1, "netkeyIndex"    # I
    .param p2, "appkeyIndex"    # I

    .line 308
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 309
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 310
    return-void
.end method

.method public setConfigAppkeyGetParam(I)V
    .registers 2
    .param p1, "netkeyIndex"    # I

    .line 313
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 314
    return-void
.end method

.method public setConfigAppkeyUpdateParam(II[I)V
    .registers 4
    .param p1, "netkeyIndex"    # I
    .param p2, "appkeyIndex"    # I
    .param p3, "appkey"    # [I

    .line 302
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 303
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 304
    iput-object p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkey:[I

    .line 305
    return-void
.end method

.method public setConfigBeaconGetParam()V
    .registers 1

    .line 175
    return-void
.end method

.method public setConfigBeaconSetParam(I)V
    .registers 2
    .param p1, "beacon"    # I

    .line 178
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->beacon:I

    .line 179
    return-void
.end method

.method public setConfigCompositionDataGetParam(I)V
    .registers 2
    .param p1, "page"    # I

    .line 182
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->page:I

    .line 183
    return-void
.end method

.method public setConfigDefaultTtlGetParam()V
    .registers 1

    .line 186
    return-void
.end method

.method public setConfigDefaultTtlSetParam(I)V
    .registers 2
    .param p1, "TTL"    # I

    .line 189
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->TTL:I

    .line 190
    return-void
.end method

.method public setConfigFriendGetParam()V
    .registers 1

    .line 200
    return-void
.end method

.method public setConfigFriendSetParam(I)V
    .registers 2
    .param p1, "meshFriend"    # I

    .line 203
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->meshFriend:I

    .line 204
    return-void
.end method

.method public setConfigGattProxyGetParam()V
    .registers 1

    .line 193
    return-void
.end method

.method public setConfigGattProxySetParam(I)V
    .registers 2
    .param p1, "gattProxy"    # I

    .line 196
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->gattProxy:I

    .line 197
    return-void
.end method

.method public setConfigHbPubGetParam()V
    .registers 1

    .line 360
    return-void
.end method

.method public setConfigHbPubSetParam(IIIIII)V
    .registers 7
    .param p1, "destination"    # I
    .param p2, "countLog"    # I
    .param p3, "periodLog"    # I
    .param p4, "TTL"    # I
    .param p5, "features"    # I
    .param p6, "netkeyIndex"    # I

    .line 364
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->destination:I

    .line 365
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->countLog:I

    .line 366
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->periodLog:I

    .line 367
    iput p4, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->TTL:I

    .line 368
    iput p5, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->features:I

    .line 369
    iput p6, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 370
    return-void
.end method

.method public setConfigHbSubGetParam()V
    .registers 1

    .line 373
    return-void
.end method

.method public setConfigHbSubSetParam(III)V
    .registers 4
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "periodLog"    # I

    .line 376
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->source:I

    .line 377
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->destination:I

    .line 378
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->periodLog:I

    .line 379
    return-void
.end method

.method public setConfigKeyRefreshPhaseGetParam(I)V
    .registers 2
    .param p1, "netkeyIndex"    # I

    .line 351
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 352
    return-void
.end method

.method public setConfigKeyRefreshPhaseSetParam(II)V
    .registers 3
    .param p1, "netkeyIndex"    # I
    .param p2, "transition"    # I

    .line 355
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 356
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->transition:I

    .line 357
    return-void
.end method

.method public setConfigModelAppBindParam(IIJ)V
    .registers 5
    .param p1, "elementAddress"    # I
    .param p2, "appkeyIndex"    # I
    .param p3, "modelId"    # J

    .line 317
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 318
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 319
    iput-wide p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 320
    return-void
.end method

.method public setConfigModelAppUnbindParam(IIJ)V
    .registers 5
    .param p1, "elementAddress"    # I
    .param p2, "appkeyIndex"    # I
    .param p3, "modelId"    # J

    .line 323
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 324
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 325
    iput-wide p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 326
    return-void
.end method

.method public setConfigModelPubGetParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 216
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 217
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 218
    return-void
.end method

.method public setConfigModelPubSetParam(III[IIZIIIIJ)V
    .registers 13
    .param p1, "elementAddress"    # I
    .param p2, "addressType"    # I
    .param p3, "addressValue"    # I
    .param p4, "virtualUUID"    # [I
    .param p5, "appkeyIndex"    # I
    .param p6, "friendshipCredentialFlag"    # Z
    .param p7, "publishTTL"    # I
    .param p8, "publishPeriod"    # I
    .param p9, "retransmitCount"    # I
    .param p10, "retransmitIntervalSteps"    # I
    .param p11, "modelId"    # J

    .line 223
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 224
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    .line 225
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    .line 226
    iput-object p4, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    .line 227
    iput p5, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    .line 228
    iput-boolean p6, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->friendshipCredentialFlag:Z

    .line 229
    iput p7, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishTTL:I

    .line 230
    iput p8, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishPeriod:I

    .line 231
    iput p9, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitCount:I

    .line 232
    iput p10, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitIntervalSteps:I

    .line 233
    iput-wide p11, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 234
    return-void
.end method

.method public setConfigModelSubAddParam(III[IJ)V
    .registers 7
    .param p1, "elementAddress"    # I
    .param p2, "addressType"    # I
    .param p3, "addressValue"    # I
    .param p4, "virtualUUID"    # [I
    .param p5, "modelId"    # J

    .line 238
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 239
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    .line 240
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    .line 241
    iput-object p4, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    .line 242
    iput-wide p5, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 243
    return-void
.end method

.method public setConfigModelSubDelAllParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 264
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 265
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 266
    return-void
.end method

.method public setConfigModelSubDelParam(III[IJ)V
    .registers 7
    .param p1, "elementAddress"    # I
    .param p2, "addressType"    # I
    .param p3, "addressValue"    # I
    .param p4, "virtualUUID"    # [I
    .param p5, "modelId"    # J

    .line 247
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 248
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    .line 249
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    .line 250
    iput-object p4, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    .line 251
    iput-wide p5, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 252
    return-void
.end method

.method public setConfigModelSubOwParam(III[IJ)V
    .registers 7
    .param p1, "elementAddress"    # I
    .param p2, "addressType"    # I
    .param p3, "addressValue"    # I
    .param p4, "virtualUUID"    # [I
    .param p5, "modelId"    # J

    .line 256
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 257
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    .line 258
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    .line 259
    iput-object p4, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    .line 260
    iput-wide p5, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 261
    return-void
.end method

.method public setConfigNetkeyAddParam(I[I)V
    .registers 3
    .param p1, "netkeyIndex"    # I
    .param p2, "netkey"    # [I

    .line 279
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 280
    iput-object p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkey:[I

    .line 281
    return-void
.end method

.method public setConfigNetkeyDelParam(I)V
    .registers 2
    .param p1, "netkeyIndex"    # I

    .line 289
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 290
    return-void
.end method

.method public setConfigNetkeyGetParam()V
    .registers 1

    .line 293
    return-void
.end method

.method public setConfigNetkeyUpdateParam(I[I)V
    .registers 3
    .param p1, "netkeyIndex"    # I
    .param p2, "netkey"    # [I

    .line 284
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 285
    iput-object p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkey:[I

    .line 286
    return-void
.end method

.method public setConfigNetworkTransmitGetParam()V
    .registers 1

    .line 382
    return-void
.end method

.method public setConfigNetworkTransmitSetParam(II)V
    .registers 3
    .param p1, "count"    # I
    .param p2, "intervalSteps"    # I

    .line 385
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->count:I

    .line 386
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->intervalSteps:I

    .line 387
    return-void
.end method

.method public setConfigNodeIdentityGetParam(I)V
    .registers 2
    .param p1, "netkeyIndex"    # I

    .line 339
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 340
    return-void
.end method

.method public setConfigNodeIdentitySetParam(II)V
    .registers 3
    .param p1, "netkeyIndex"    # I
    .param p2, "identity"    # I

    .line 343
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    .line 344
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->identity:I

    .line 345
    return-void
.end method

.method public setConfigNodeResetParam()V
    .registers 1

    .line 348
    return-void
.end method

.method public setConfigRelayGetParam()V
    .registers 1

    .line 207
    return-void
.end method

.method public setConfigRelaySetParam(III)V
    .registers 4
    .param p1, "relay"    # I
    .param p2, "retransmitCount"    # I
    .param p3, "retransmitIntervalSteps"    # I

    .line 210
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->relay:I

    .line 211
    iput p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitCount:I

    .line 212
    iput p3, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitIntervalSteps:I

    .line 213
    return-void
.end method

.method public setConfigSigModelAppGetParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 329
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 330
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 331
    return-void
.end method

.method public setConfigSigModelSubGetParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 269
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 270
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 271
    return-void
.end method

.method public setConfigVendorModelAppGetParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 334
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 335
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 336
    return-void
.end method

.method public setConfigVendorModelSubGetParam(IJ)V
    .registers 4
    .param p1, "elementAddress"    # I
    .param p2, "modelId"    # J

    .line 274
    iput p1, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    .line 275
    iput-wide p2, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    .line 276
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 134
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->beacon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->page:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->TTL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->gattProxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->meshFriend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->relay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->retransmitIntervalSteps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->elementAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-wide v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->modelId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-boolean v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->friendshipCredentialFlag:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishTTL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->publishPeriod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->addressValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->virtualUUID:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 155
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->appkey:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->netkey:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 160
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->identity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->transition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->destination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->countLog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->periodLog:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->features:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/mediatek/bt/mesh/ConfigMessageParams;->intervalSteps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
