.class public abstract Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.super Landroid/os/Binder;
.source "IMtkImsService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsService"

.field static final TRANSACTION_UpdateImsState:I = 0x9

.field static final TRANSACTION_addImsSmsListener:I = 0x10

.field static final TRANSACTION_changeEnabledCapabilities:I = 0x17

.field static final TRANSACTION_createMtkCallSession:I = 0x2

.field static final TRANSACTION_deregisterIms:I = 0x7

.field static final TRANSACTION_fallBackAospMTFlow:I = 0x15

.field static final TRANSACTION_getConfigInterfaceEx:I = 0xa

.field static final TRANSACTION_getCurrentCallCount:I = 0xe

.field static final TRANSACTION_getImsNetworkState:I = 0xf

.field static final TRANSACTION_getImsRegUriType:I = 0x5

.field static final TRANSACTION_getImsState:I = 0x4

.field static final TRANSACTION_getModemMultiImsCount:I = 0xd

.field static final TRANSACTION_getMtkUtInterface:I = 0xb

.field static final TRANSACTION_getPendingMtkCallSession:I = 0x3

.field static final TRANSACTION_hangupAllCall:I = 0x6

.field static final TRANSACTION_isCameraAvailable:I = 0x13

.field static final TRANSACTION_registerProprietaryImsListener:I = 0x12

.field static final TRANSACTION_runGbaAuthentication:I = 0xc

.field static final TRANSACTION_sendSms:I = 0x11

.field static final TRANSACTION_setCallIndication:I = 0x1

.field static final TRANSACTION_setMTRedirect:I = 0x14

.field static final TRANSACTION_setSipHeader:I = 0x16

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 179
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 191
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_1

    .line 192
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v1

    .line 194
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 1

    .line 1130
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1123
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1124
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 198
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.mediatek.ims.internal.IMtkImsService"

    .line 203
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_c

    const/4 v0, 0x0

    const/4 v6, 0x0

    packed-switch v9, :pswitch_data_0

    .line 501
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 485
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 489
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .local v1, "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 493
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :cond_0
    const/4 v1, 0x0

    .line 495
    .restart local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :goto_0
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    return v13

    .line 471
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 476
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 478
    .local v2, "_arg1":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    return v13

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 465
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->fallBackAospMTFlow(I)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    return v13

    .line 451
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v13

    :cond_1
    move v1, v6

    .line 456
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setMTRedirect(IZ)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    return v13

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->isCameraAvailable()Z

    move-result v0

    .line 445
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    return v13

    .line 428
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 434
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    move-result-object v2

    .line 436
    .local v2, "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v6, v13

    :cond_2
    move v3, v6

    .line 437
    .local v3, "_arg3":Z
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    return v13

    .line 407
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v2    # "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .end local v3    # "_arg3":Z
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 411
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 413
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 415
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 417
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 419
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v6, v13

    .line 421
    .local v6, "_arg5":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 422
    .local v19, "_arg6":[B
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v13

    .line 396
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg6":[B
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 401
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    return v13

    .line 386
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsNetworkState(I)[I

    move-result-object v1

    .line 390
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 392
    return v13

    .line 376
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getCurrentCallCount(I)I

    move-result v1

    .line 380
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    return v13

    .line 368
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getModemMultiImsCount()I

    move-result v0

    .line 370
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    return v13

    .line 344
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 350
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v3, v13

    goto :goto_1

    :cond_4
    move v3, v6

    .line 352
    .local v3, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 354
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 355
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 356
    .local v0, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v0, :cond_5

    .line 358
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-virtual {v0, v11, v13}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 362
    :cond_5
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    :goto_2
    return v13

    .line 334
    .end local v0    # "_result":Lcom/mediatek/gba/NafSessionKey;
    .end local v3    # "_arg2":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .local v1, "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 338
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 340
    return v13

    .line 324
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 327
    .restart local v1    # "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    .line 328
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 330
    return v13

    .line 315
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->UpdateImsState(I)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    return v13

    .line 304
    .end local v0    # "_arg0":I
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->updateRadioState(II)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    return v13

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->deregisterIms(I)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v13

    .line 286
    .end local v0    # "_arg0":I
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->hangupAllCall(I)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v13

    .line 276
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsRegUriType(I)I

    move-result v1

    .line 280
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return v13

    .line 266
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsState(I)I

    move-result v1

    .line 270
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    return v13

    .line 254
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3

    .line 260
    .local v3, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 262
    return v13

    .line 233
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 237
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_3

    .line 241
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_9
    const/4 v2, 0x0

    .line 244
    .restart local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    .line 246
    .local v3, "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 247
    .local v4, "_arg3":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v5

    .line 248
    .local v5, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 250
    return v13

    .line 212
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .end local v4    # "_arg3":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 216
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 222
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 224
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v6, v13

    .line 226
    .restart local v6    # "_arg5":Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 227
    .local v19, "_arg6":I
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    return v13

    .line 207
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg6":I
    :cond_c
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
