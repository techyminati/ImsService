.class public abstract Lcom/mediatek/common/operamax/ILoaderService$Stub;
.super Landroid/os/Binder;
.source "ILoaderService.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addDirectedApp:I = 0x8

.field static final TRANSACTION_addDirectedHeaderField:I = 0x12

.field static final TRANSACTION_addDirectedHost:I = 0xd

.field static final TRANSACTION_getCompressLevel:I = 0x18

.field static final TRANSACTION_getDirectedAppList:I = 0xc

.field static final TRANSACTION_getDirectedHeaderFieldList:I = 0x16

.field static final TRANSACTION_getDirectedHostList:I = 0x11

.field static final TRANSACTION_getSavingState:I = 0x4

.field static final TRANSACTION_getTunnelState:I = 0x3

.field static final TRANSACTION_isAppDirected:I = 0xb

.field static final TRANSACTION_isHeaderFieldDirected:I = 0x15

.field static final TRANSACTION_isHostDirected:I = 0x10

.field static final TRANSACTION_launchOperaMAX:I = 0x7

.field static final TRANSACTION_registerStateListener:I = 0x5

.field static final TRANSACTION_removeAllDirectedApps:I = 0xa

.field static final TRANSACTION_removeAllDirectedHeaderFields:I = 0x14

.field static final TRANSACTION_removeAllDirectedHosts:I = 0xf

.field static final TRANSACTION_removeDirectedApp:I = 0x9

.field static final TRANSACTION_removeDirectedHeaderField:I = 0x13

.field static final TRANSACTION_removeDirectedHost:I = 0xe

.field static final TRANSACTION_setCompressLevel:I = 0x17

.field static final TRANSACTION_startSaving:I = 0x1

.field static final TRANSACTION_stopSaving:I = 0x2

.field static final TRANSACTION_unregisterStateListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 190
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_4
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/operamax/ILoaderService;

    if-eqz v1, :cond_14

    .line 203
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/operamax/ILoaderService;

    return-object v1

    .line 205
    :cond_14
    new-instance v1, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/operamax/ILoaderService;
    .registers 1

    .line 1093
    sget-object v0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/operamax/ILoaderService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/operamax/ILoaderService;

    .line 1083
    sget-object v0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderService;

    if-nez v0, :cond_c

    .line 1086
    if-eqz p0, :cond_a

    .line 1087
    sput-object p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/operamax/ILoaderService;

    .line 1088
    const/4 v0, 0x1

    return v0

    .line 1090
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1084
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 209
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    .line 214
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_16a

    .line 222
    packed-switch p1, :pswitch_data_170

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 218
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    return v1

    .line 425
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getCompressLevel()I

    move-result v2

    .line 427
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    return v1

    .line 416
    .end local v2    # "_result":I
    :pswitch_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->setCompressLevel(I)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    return v1

    .line 408
    .end local v2    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHeaderFieldList()[Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 412
    return v1

    .line 396
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 402
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    return v1

    .line 389
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_52
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHeaderFields()V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    return v1

    .line 378
    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 383
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    return v1

    .line 367
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    return v1

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedHostList()[Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    return v1

    .line 349
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isHostDirected(Ljava/lang/String;)Z

    move-result v3

    .line 353
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return v1

    .line 342
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedHosts()V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    return v1

    .line 333
    :pswitch_aa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedHost(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    return v1

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 327
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedHost(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    return v1

    .line 316
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getDirectedAppList()[Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 320
    return v1

    .line 306
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_d4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->isAppDirected(Ljava/lang/String;)Z

    move-result v3

    .line 310
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    return v1

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeAllDirectedApps()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v1

    .line 290
    :pswitch_f0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->removeDirectedApp(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v1

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_fe
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->addDirectedApp(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    return v1

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->launchOperaMAX()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    return v1

    .line 265
    :pswitch_116
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    return v1

    .line 256
    .end local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :pswitch_128
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/operamax/ILoaderStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/operamax/ILoaderStateListener;

    move-result-object v2

    .line 259
    .restart local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    return v1

    .line 248
    .end local v2    # "_arg0":Lcom/mediatek/common/operamax/ILoaderStateListener;
    :pswitch_13a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getSavingState()I

    move-result v2

    .line 250
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    return v1

    .line 240
    .end local v2    # "_result":I
    :pswitch_148
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->getTunnelState()I

    move-result v2

    .line 242
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    return v1

    .line 233
    .end local v2    # "_result":I
    :pswitch_156
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->stopSaving()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    return v1

    .line 226
    :pswitch_160
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/mediatek/common/operamax/ILoaderService$Stub;->startSaving()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    return v1

    :pswitch_data_16a
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_160
        :pswitch_156
        :pswitch_148
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_10c
        :pswitch_fe
        :pswitch_f0
        :pswitch_e6
        :pswitch_d4
        :pswitch_c6
        :pswitch_b8
        :pswitch_aa
        :pswitch_a0
        :pswitch_8e
        :pswitch_80
        :pswitch_6e
        :pswitch_5c
        :pswitch_52
        :pswitch_3c
        :pswitch_2e
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method
