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

.field static final TRANSACTION_getWfcRegErrorCode:I = 0x19

.field static final TRANSACTION_hangupAllCall:I = 0x6

.field static final TRANSACTION_isCameraAvailable:I = 0x13

.field static final TRANSACTION_registerProprietaryImsListener:I = 0x12

.field static final TRANSACTION_runGbaAuthentication:I = 0xc

.field static final TRANSACTION_sendSms:I = 0x11

.field static final TRANSACTION_setCallIndication:I = 0x1

.field static final TRANSACTION_setImsPreCallInfo:I = 0x1a

.field static final TRANSACTION_setMTRedirect:I = 0x14

.field static final TRANSACTION_setSipHeader:I = 0x16

.field static final TRANSACTION_setWfcRegErrorCode:I = 0x18

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 197
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 205
    if-nez p0, :cond_0

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 209
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_1

    .line 210
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v1

    .line 212
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 1

    .line 1327
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1317
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_1

    .line 1320
    if-eqz p0, :cond_0

    .line 1321
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1322
    const/4 v0, 0x1

    return v0

    .line 1324
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1318
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 216
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.mediatek.ims.internal.IMtkImsService"

    .line 221
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    packed-switch p1, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_1

    .line 563
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 225
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return v12

    .line 543
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 547
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 549
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 551
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 553
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 554
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v16

    .line 556
    .local v16, "_arg4":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 557
    .local v17, "_arg5":[Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v18, v6

    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .local v18, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    return v12

    .line 533
    .end local v7    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/util/Map;
    .end local v17    # "_arg5":[Ljava/lang/String;
    .end local v18    # "cl":Ljava/lang/ClassLoader;
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getWfcRegErrorCode(I)I

    move-result v1

    .line 537
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    return v12

    .line 522
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setWfcRegErrorCode(II)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    return v12

    .line 506
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    sget-object v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .local v1, "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 514
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :cond_0
    const/4 v1, 0x0

    .line 516
    .restart local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :goto_0
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    return v12

    .line 492
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 497
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 499
    .local v2, "_arg1":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    return v12

    .line 483
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->fallBackAospMTFlow(I)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    return v12

    .line 472
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v12

    :cond_1
    move v1, v6

    .line 477
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setMTRedirect(IZ)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    return v12

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->isCameraAvailable()Z

    move-result v0

    .line 466
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    return v12

    .line 449
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 455
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    move-result-object v2

    .line 457
    .local v2, "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v6, v12

    :cond_2
    move v3, v6

    .line 458
    .local v3, "_arg3":Z
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    return v12

    .line 428
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v2    # "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .end local v3    # "_arg3":Z
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 432
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 434
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 436
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 440
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v6, v12

    .line 442
    .local v6, "_arg5":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 443
    .local v18, "_arg6":[B
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    return v12

    .line 417
    .end local v6    # "_arg5":Z
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg6":[B
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 421
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 422
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v12

    .line 407
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsNetworkState(I)[I

    move-result-object v1

    .line 411
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 413
    return v12

    .line 397
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getCurrentCallCount(I)I

    move-result v1

    .line 401
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return v12

    .line 389
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getModemMultiImsCount()I

    move-result v0

    .line 391
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    return v12

    .line 365
    .end local v0    # "_result":I
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 371
    .local v13, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v3, v12

    goto :goto_1

    :cond_4
    move v3, v6

    .line 373
    .local v3, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 375
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 376
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 377
    .local v0, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v0, :cond_5

    .line 379
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {v0, v10, v12}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 383
    :cond_5
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    :goto_2
    return v12

    .line 355
    .end local v0    # "_result":Lcom/mediatek/gba/NafSessionKey;
    .end local v3    # "_arg2":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    .local v1, "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 359
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    return v12

    .line 345
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .restart local v1    # "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    .line 349
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 351
    return v12

    .line 336
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->UpdateImsState(I)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    return v12

    .line 325
    .end local v0    # "_arg0":I
    :pswitch_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->updateRadioState(II)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v12

    .line 316
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_14
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->deregisterIms(I)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    return v12

    .line 307
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->hangupAllCall(I)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    return v12

    .line 297
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsRegUriType(I)I

    move-result v1

    .line 301
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return v12

    .line 287
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsState(I)I

    move-result v1

    .line 291
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v12

    .line 275
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3

    .line 281
    .local v3, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 283
    return v12

    .line 254
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_19
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 259
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_3

    .line 262
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_9
    const/4 v2, 0x0

    .line 265
    .restart local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    .line 267
    .local v3, "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 268
    .local v4, "_arg3":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v5

    .line 269
    .local v5, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 271
    return v12

    .line 233
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .end local v4    # "_arg3":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_1a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 237
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 239
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 241
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 243
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 245
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v6, v12

    .line 247
    .restart local v6    # "_arg5":Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 248
    .local v18, "_arg6":I
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
    .end packed-switch
.end method
