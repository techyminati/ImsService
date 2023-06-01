.class public abstract Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;
.super Landroid/os/Binder;
.source "IPowerHalMgr.java"

# interfaces
.implements Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/IPowerHalMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_UpdateManagementPkt:I = 0xc

.field static final TRANSACTION_flushPriorityRules:I = 0x1e

.field static final TRANSACTION_getCpuCap:I = 0x8

.field static final TRANSACTION_getCpuRTInfo:I = 0xb

.field static final TRANSACTION_getGpuCap:I = 0x9

.field static final TRANSACTION_getGpuRTInfo:I = 0xa

.field static final TRANSACTION_isDupPacketPredictionStarted:I = 0x11

.field static final TRANSACTION_mtkCusPowerHint:I = 0x7

.field static final TRANSACTION_mtkPowerHint:I = 0x19

.field static final TRANSACTION_perfCusLockHint:I = 0x1a

.field static final TRANSACTION_perfLockAcquire:I = 0x16

.field static final TRANSACTION_perfLockRelease:I = 0x17

.field static final TRANSACTION_querySysInfo:I = 0x18

.field static final TRANSACTION_registerDuplicatePacketPredictionEvent:I = 0x12

.field static final TRANSACTION_scnConfig:I = 0x2

.field static final TRANSACTION_scnDisable:I = 0x5

.field static final TRANSACTION_scnEnable:I = 0x4

.field static final TRANSACTION_scnReg:I = 0x1

.field static final TRANSACTION_scnUltraCfg:I = 0x6

.field static final TRANSACTION_scnUnreg:I = 0x3

.field static final TRANSACTION_setForegroundSports:I = 0xd

.field static final TRANSACTION_setPredictInfo:I = 0x15

.field static final TRANSACTION_setPriorityByLinkinfo:I = 0x1d

.field static final TRANSACTION_setPriorityByUid:I = 0x1c

.field static final TRANSACTION_setSysInfo:I = 0xe

.field static final TRANSACTION_setSysInfoSync:I = 0x1b

.field static final TRANSACTION_startDuplicatePacketPrediction:I = 0xf

.field static final TRANSACTION_stopDuplicatePacketPrediction:I = 0x10

.field static final TRANSACTION_unregisterDuplicatePacketPredictionEvent:I = 0x13

.field static final TRANSACTION_updateMultiDuplicatePacketLink:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/powerhalmgr/IPowerHalMgr;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_4
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_14

    .line 142
    move-object v1, v0

    check-cast v1, Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    return-object v1

    .line 144
    :cond_14
    new-instance v1, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/powerhalmgr/IPowerHalMgr;
    .registers 1

    .line 1164
    sget-object v0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/powerhalmgr/IPowerHalMgr;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    .line 1154
    sget-object v0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-nez v0, :cond_c

    .line 1157
    if-eqz p0, :cond_a

    .line 1158
    sput-object p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    .line 1159
    const/4 v0, 0x1

    return v0

    .line 1161
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1155
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 148
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.mediatek.powerhalmgr.IPowerHalMgr"

    .line 153
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    packed-switch p1, :pswitch_data_228

    .line 161
    packed-switch p1, :pswitch_data_22e

    .line 466
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 157
    :pswitch_14
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v11

    .line 456
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->flushPriorityRules(I)Z

    move-result v1

    .line 460
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    return v11

    .line 439
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 443
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_40

    .line 444
    sget-object v1, Lcom/mediatek/powerhalmgr/DupLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .local v1, "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    goto :goto_41

    .line 447
    .end local v1    # "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    :cond_40
    const/4 v1, 0x0

    .line 449
    .restart local v1    # "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    :goto_41
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v2

    .line 450
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    return v11

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .end local v2    # "_result":Z
    :pswitch_4c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 431
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPriorityByUid(II)Z

    move-result v2

    .line 433
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    return v11

    .line 415
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_62
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 419
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setSysInfoSync(ILjava/lang/String;)I

    move-result v2

    .line 421
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    return v11

    .line 403
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_78
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfCusLockHint(II)I

    move-result v2

    .line 409
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    return v11

    .line 393
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_8e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->mtkPowerHint(II)V

    .line 399
    return v11

    .line 381
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_9d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 385
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->querySysInfo(II)I

    move-result v2

    .line 387
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    return v11

    .line 373
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_b3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 376
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfLockRelease(I)V

    .line 377
    return v11

    .line 359
    .end local v0    # "_arg0":I
    :pswitch_be
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 366
    .local v2, "_arg2":[I
    invoke-virtual {v7, v0, v1, v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfLockAcquire(II[I)I

    move-result v3

    .line 367
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    return v11

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":I
    :pswitch_d8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPredictInfo(Ljava/lang/String;I)V

    .line 355
    return v11

    .line 339
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_e7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 342
    .local v0, "_arg0":[Lcom/mediatek/powerhalmgr/DupLinkInfo;
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v1

    .line 343
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return v11

    .line 329
    .end local v0    # "_arg0":[Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .end local v1    # "_result":Z
    :pswitch_fd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1

    .line 333
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    return v11

    .line 319
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_result":Z
    :pswitch_113
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 322
    .restart local v0    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1

    .line 323
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return v11

    .line 311
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_result":Z
    :pswitch_129
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->isDupPacketPredictionStarted()Z

    move-result v0

    .line 313
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v11

    .line 303
    .end local v0    # "_result":Z
    :pswitch_137
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->stopDuplicatePacketPrediction()Z

    move-result v0

    .line 305
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v11

    .line 295
    .end local v0    # "_result":Z
    :pswitch_145
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->startDuplicatePacketPrediction()Z

    move-result v0

    .line 297
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v11

    .line 285
    .end local v0    # "_result":Z
    :pswitch_153
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setSysInfo(ILjava/lang/String;)V

    .line 291
    return v11

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_162
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setForegroundSports()V

    .line 281
    return v11

    .line 269
    :pswitch_169
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->UpdateManagementPkt(ILjava/lang/String;)V

    .line 275
    return v11

    .line 263
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_178
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getCpuRTInfo()V

    .line 265
    return v11

    .line 257
    :pswitch_17f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getGpuRTInfo()V

    .line 259
    return v11

    .line 251
    :pswitch_186
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getGpuCap()V

    .line 253
    return v11

    .line 245
    :pswitch_18d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getCpuCap()V

    .line 247
    return v11

    .line 235
    :pswitch_194
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .local v1, "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->mtkCusPowerHint(II)V

    .line 241
    return v11

    .line 217
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1a3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 221
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 223
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 225
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 227
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 229
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 230
    .local v17, "_arg5":I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnUltraCfg(IIIIII)V

    .line 231
    return v11

    .line 209
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_1cc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnDisable(I)V

    .line 213
    return v11

    .line 199
    .end local v0    # "_arg0":I
    :pswitch_1d7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg1":I
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnEnable(II)V

    .line 205
    return v11

    .line 191
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1e6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0    # "_arg0":I
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnUnreg(I)V

    .line 195
    return v11

    .line 173
    .end local v0    # "_arg0":I
    :pswitch_1f1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 177
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 179
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 181
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 183
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 185
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 186
    .restart local v17    # "_arg5":I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnConfig(IIIIII)V

    .line 187
    return v11

    .line 165
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_21a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnReg()I

    move-result v0

    .line 167
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return v11

    :pswitch_data_228
    .packed-switch 0x5f4e5446
        :pswitch_14
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_21a
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1d7
        :pswitch_1cc
        :pswitch_1a3
        :pswitch_194
        :pswitch_18d
        :pswitch_186
        :pswitch_17f
        :pswitch_178
        :pswitch_169
        :pswitch_162
        :pswitch_153
        :pswitch_145
        :pswitch_137
        :pswitch_129
        :pswitch_113
        :pswitch_fd
        :pswitch_e7
        :pswitch_d8
        :pswitch_be
        :pswitch_b3
        :pswitch_9d
        :pswitch_8e
        :pswitch_78
        :pswitch_62
        :pswitch_4c
        :pswitch_2a
        :pswitch_18
    .end packed-switch
.end method
