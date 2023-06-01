.class public abstract Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMeshCallback.java"

# interfaces
.implements Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAdvReport:I = 0x5

.field static final TRANSACTION_onBearerGattStatus:I = 0x13

.field static final TRANSACTION_onConfigReset:I = 0x2

.field static final TRANSACTION_onEvtErrorCode:I = 0x14

.field static final TRANSACTION_onFriendShipStatus:I = 0x3

.field static final TRANSACTION_onHeartbeat:I = 0x12

.field static final TRANSACTION_onIvUpdate:I = 0xf

.field static final TRANSACTION_onKeyRefresh:I = 0xe

.field static final TRANSACTION_onMeshEnabled:I = 0x1

.field static final TRANSACTION_onMsgHandler:I = 0x16

.field static final TRANSACTION_onOtaEvent:I = 0x4

.field static final TRANSACTION_onOtaMsgHandler:I = 0x15

.field static final TRANSACTION_onProvCapabilities:I = 0x8

.field static final TRANSACTION_onProvDone:I = 0xd

.field static final TRANSACTION_onProvFactor:I = 0x11

.field static final TRANSACTION_onProvScanComplete:I = 0x6

.field static final TRANSACTION_onProvShowOobAuthValue:I = 0xc

.field static final TRANSACTION_onProvShowOobPublicKey:I = 0xb

.field static final TRANSACTION_onPublishTimeoutCallback:I = 0x17

.field static final TRANSACTION_onRequestOobAuthValue:I = 0xa

.field static final TRANSACTION_onRequestOobPublicKey:I = 0x9

.field static final TRANSACTION_onScanUnProvDevice:I = 0x7

.field static final TRANSACTION_onSeqChange:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_4
    const-string v0, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    if-eqz v1, :cond_14

    .line 110
    move-object v1, v0

    check-cast v1, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    return-object v1

    .line 112
    :cond_14
    new-instance v1, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;
    .registers 1

    .line 1011
    sget-object v0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    .line 1001
    sget-object v0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    if-nez v0, :cond_c

    .line 1004
    if-eqz p0, :cond_a

    .line 1005
    sput-object p0, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/bt/mesh/IBluetoothMeshCallback;

    .line 1006
    const/4 v0, 0x1

    return v0

    .line 1008
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1002
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 116
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 37
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const-string v13, "com.mediatek.bt.mesh.IBluetoothMeshCallback"

    .line 121
    .local v13, "descriptor":Ljava/lang/String;
    const/16 v16, 0x1

    packed-switch p1, :pswitch_data_24e

    .line 129
    move-object/from16 v12, p3

    packed-switch p1, :pswitch_data_254

    .line 420
    move-object v0, v15

    move-object v15, v14

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_17
    move-object/from16 v12, p3

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v16

    .line 411
    :pswitch_1d
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 414
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onPublishTimeoutCallback(I)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    return v16

    .line 395
    .end local v0    # "_arg0":I
    :pswitch_2b
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_41

    .line 400
    sget-object v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .local v1, "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    goto :goto_42

    .line 403
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :cond_41
    const/4 v1, 0x0

    .line 405
    .restart local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :goto_42
    invoke-virtual {v15, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v16

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :pswitch_49
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 384
    sget-object v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;

    .restart local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    goto :goto_60

    .line 387
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :cond_5f
    const/4 v1, 0x0

    .line 389
    .restart local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :goto_60
    invoke-virtual {v15, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onOtaMsgHandler(ILcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v16

    .line 370
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/bt/mesh/BluetoothMeshAccessRxMessage;
    :pswitch_67
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onEvtErrorCode(I)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    return v16

    .line 359
    .end local v0    # "_arg0":I
    :pswitch_75
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 363
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "_arg1":I
    invoke-virtual {v15, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onBearerGattStatus(JI)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    return v16

    .line 348
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_87
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onHeartbeat(II)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    return v16

    .line 335
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_99
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 341
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvFactor(I[II)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    return v16

    .line 326
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":I
    :pswitch_af
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onSeqChange(I)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    return v16

    .line 315
    .end local v0    # "_arg0":I
    :pswitch_bd
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onIvUpdate(II)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    return v16

    .line 304
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_cf
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .restart local v1    # "_arg1":I
    invoke-virtual {v15, v0, v1}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onKeyRefresh(II)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    return v16

    .line 289
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_e1
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 295
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f6

    move/from16 v2, v16

    goto :goto_f7

    :cond_f6
    move v2, v3

    .line 297
    .local v2, "_arg2":Z
    :goto_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    move/from16 v3, v16

    .line 298
    .local v3, "_arg3":Z
    :cond_ff
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvDone(I[IZZ)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    return v16

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :pswitch_106
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 283
    .local v0, "_arg0":[I
    invoke-virtual {v15, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvShowOobAuthValue([I)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v16

    .line 271
    .end local v0    # "_arg0":[I
    :pswitch_114
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 274
    .restart local v0    # "_arg0":[I
    invoke-virtual {v15, v0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvShowOobPublicKey([I)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    return v16

    .line 258
    .end local v0    # "_arg0":[I
    :pswitch_122
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, "_arg2":I
    invoke-virtual {v15, v0, v1, v2}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onRequestOobAuthValue(III)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    return v16

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_138
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onRequestOobPublicKey()V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    return v16

    .line 228
    :pswitch_142
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 232
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 234
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 236
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 238
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 240
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 242
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 244
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 245
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvCapabilities(IIIIIIII)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    return v16

    .line 213
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v11    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    .end local v21    # "_arg7":I
    :pswitch_17b
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 217
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 221
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onScanUnProvDevice([II[II)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v16

    .line 206
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":I
    :pswitch_195
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onProvScanComplete()V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v16

    .line 189
    :pswitch_19f
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 193
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 195
    .local v7, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 197
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 199
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    .line 200
    .local v10, "_arg4":[I
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onAdvReport(I[III[I)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v16

    .line 160
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":[I
    :pswitch_1c4
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 164
    .local v17, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 166
    .local v18, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 168
    .local v19, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 170
    .local v21, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 172
    .local v23, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 174
    .local v25, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 176
    .local v26, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 178
    .local v27, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 180
    .local v28, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 182
    .local v29, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v30

    .line 183
    .local v30, "_arg10":[I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    move-wide/from16 v7, v23

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v12, v28

    move-object v15, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    move/from16 v13, v29

    move-object/from16 v31, v15

    move-object v15, v14

    .end local v15    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move-object/from16 v14, v30

    invoke-virtual/range {v0 .. v14}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onOtaEvent(IIJJJIIIII[I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v16

    .line 147
    .end local v17    # "_arg0":I
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":J
    .end local v21    # "_arg3":J
    .end local v23    # "_arg4":J
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":I
    .end local v27    # "_arg7":I
    .end local v28    # "_arg8":I
    .end local v29    # "_arg9":I
    .end local v30    # "_arg10":[I
    .end local v31    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_216
    move-object/from16 v31, v13

    move-object v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v31    # "descriptor":Ljava/lang/String;
    move-object/from16 v0, v31

    .end local v31    # "descriptor":Ljava/lang/String;
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 154
    .local v3, "_arg2":F
    move-object v4, v0

    move-object/from16 v0, p0

    .end local v0    # "descriptor":Ljava/lang/String;
    .local v4, "descriptor":Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onFriendShipStatus(IIF)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v16

    .line 140
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":F
    .end local v4    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_234
    move-object v4, v13

    move-object v0, v15

    move-object v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v4    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onConfigReset()V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v16

    .line 133
    .end local v4    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    :pswitch_241
    move-object v4, v13

    move-object v0, v15

    move-object v15, v14

    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v4    # "descriptor":Ljava/lang/String;
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/bt/mesh/IBluetoothMeshCallback$Stub;->onMeshEnabled()V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v16

    :pswitch_data_24e
    .packed-switch 0x5f4e5446
        :pswitch_17
    .end packed-switch

    :pswitch_data_254
    .packed-switch 0x1
        :pswitch_241
        :pswitch_234
        :pswitch_216
        :pswitch_1c4
        :pswitch_19f
        :pswitch_195
        :pswitch_17b
        :pswitch_142
        :pswitch_138
        :pswitch_122
        :pswitch_114
        :pswitch_106
        :pswitch_e1
        :pswitch_cf
        :pswitch_bd
        :pswitch_af
        :pswitch_99
        :pswitch_87
        :pswitch_75
        :pswitch_67
        :pswitch_49
        :pswitch_2b
        :pswitch_1d
    .end packed-switch
.end method
