.class public abstract Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;
.super Landroid/os/Binder;
.source "IMtkPhoneSubInfoEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getIsimDomainForSubscriber:I = 0x12

.field static final TRANSACTION_getIsimGbabp:I = 0x6

.field static final TRANSACTION_getIsimGbabpForSubscriber:I = 0x7

.field static final TRANSACTION_getIsimImpiForSubscriber:I = 0x11

.field static final TRANSACTION_getIsimImpuForSubscriber:I = 0x13

.field static final TRANSACTION_getIsimIstForSubscriber:I = 0x14

.field static final TRANSACTION_getIsimPcscfForSubscriber:I = 0x15

.field static final TRANSACTION_getIsimPsismsc:I = 0x16

.field static final TRANSACTION_getIsimPsismscForSubscriber:I = 0x17

.field static final TRANSACTION_getLine1PhoneNumberForSubscriber:I = 0x18

.field static final TRANSACTION_getMncLength:I = 0xf

.field static final TRANSACTION_getMncLengthForSubscriber:I = 0x10

.field static final TRANSACTION_getUsimGbabp:I = 0x2

.field static final TRANSACTION_getUsimGbabpForSubscriber:I = 0x3

.field static final TRANSACTION_getUsimPsismsc:I = 0xb

.field static final TRANSACTION_getUsimPsismscForSubscriber:I = 0xc

.field static final TRANSACTION_getUsimService:I = 0x1

.field static final TRANSACTION_getUsimServiceForSubscriber:I = 0xa

.field static final TRANSACTION_getUsimSmsp:I = 0xd

.field static final TRANSACTION_getUsimSmspForSubscriber:I = 0xe

.field static final TRANSACTION_setIsimGbabp:I = 0x8

.field static final TRANSACTION_setIsimGbabpForSubscriber:I = 0x9

.field static final TRANSACTION_setUsimGbabp:I = 0x4

.field static final TRANSACTION_setUsimGbabpForSubscriber:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 254
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 255
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 263
    if-nez p0, :cond_4

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 267
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    if-eqz v1, :cond_14

    .line 268
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    return-object v1

    .line 270
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;
    .registers 1

    .line 1326
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    .line 1316
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    if-nez v0, :cond_c

    .line 1319
    if-eqz p0, :cond_a

    .line 1320
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    .line 1321
    const/4 v0, 0x1

    return v0

    .line 1323
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1317
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 274
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    .line 279
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_1f6

    .line 287
    packed-switch p1, :pswitch_data_1fc

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 283
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    return v1

    .line 543
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 547
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    return v1

    .line 533
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 537
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 539
    return v1

    .line 525
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPsismsc()[B

    move-result-object v2

    .line 527
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 529
    return v1

    .line 515
    .end local v2    # "_result":[B
    :pswitch_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 521
    return v1

    .line 505
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    return v1

    .line 495
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 501
    return v1

    .line 485
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    return v1

    .line 475
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 478
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    return v1

    .line 465
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 468
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLengthForSubscriber(I)I

    move-result v3

    .line 469
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    return v1

    .line 457
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getMncLength()I

    move-result v2

    .line 459
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    return v1

    .line 447
    .end local v2    # "_result":I
    :pswitch_c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmspForSubscriber(I)[B

    move-result-object v3

    .line 451
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 453
    return v1

    .line 439
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_d8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimSmsp()[B

    move-result-object v2

    .line 441
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 443
    return v1

    .line 429
    .end local v2    # "_result":[B
    :pswitch_e6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 432
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismscForSubscriber(I)[B

    move-result-object v3

    .line 433
    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 435
    return v1

    .line 421
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimPsismsc()[B

    move-result-object v2

    .line 423
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 425
    return v1

    .line 407
    .end local v2    # "_result":[B
    :pswitch_106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 413
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v5

    .line 415
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    return v1

    .line 389
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13a

    .line 396
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .local v4, "_arg2":Landroid/os/Message;
    goto :goto_13b

    .line 399
    .end local v4    # "_arg2":Landroid/os/Message;
    :cond_13a
    const/4 v4, 0x0

    .line 401
    .restart local v4    # "_arg2":Landroid/os/Message;
    :goto_13b
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    return v1

    .line 373
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_158

    .line 378
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "_arg1":Landroid/os/Message;
    goto :goto_159

    .line 381
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_158
    const/4 v3, 0x0

    .line 383
    .restart local v3    # "_arg1":Landroid/os/Message;
    :goto_159
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    return v1

    .line 363
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    return v1

    .line 355
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_172
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getIsimGbabp()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    return v1

    .line 337
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_180
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19a

    .line 344
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .restart local v4    # "_arg2":Landroid/os/Message;
    goto :goto_19b

    .line 347
    .end local v4    # "_arg2":Landroid/os/Message;
    :cond_19a
    const/4 v4, 0x0

    .line 349
    .restart local v4    # "_arg2":Landroid/os/Message;
    :goto_19b
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    return v1

    .line 321
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_1a2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b8

    .line 326
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .local v3, "_arg1":Landroid/os/Message;
    goto :goto_1b9

    .line 329
    .end local v3    # "_arg1":Landroid/os/Message;
    :cond_1b8
    const/4 v3, 0x0

    .line 331
    .restart local v3    # "_arg1":Landroid/os/Message;
    :goto_1b9
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    return v1

    .line 311
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_1c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v1

    .line 303
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimGbabp()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    return v1

    .line 291
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getUsimService(ILjava/lang/String;)Z

    move-result v4

    .line 297
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v1

    :pswitch_data_1f6
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_1e0
        :pswitch_1d2
        :pswitch_1c0
        :pswitch_1a2
        :pswitch_180
        :pswitch_172
        :pswitch_160
        :pswitch_142
        :pswitch_120
        :pswitch_106
        :pswitch_f8
        :pswitch_e6
        :pswitch_d8
        :pswitch_c6
        :pswitch_b8
        :pswitch_a6
        :pswitch_94
        :pswitch_82
        :pswitch_70
        :pswitch_5e
        :pswitch_4c
        :pswitch_3e
        :pswitch_2c
        :pswitch_12
    .end packed-switch
.end method
