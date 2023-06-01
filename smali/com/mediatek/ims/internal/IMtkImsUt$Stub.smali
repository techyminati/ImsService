.class public abstract Lcom/mediatek/ims/internal/IMtkImsUt$Stub;
.super Landroid/os/Binder;
.source "IMtkImsUt.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getUtIMPUFromNetwork:I = 0x3

.field static final TRANSACTION_getUtInterface:I = 0x2

.field static final TRANSACTION_getXcapConflictErrorMessage:I = 0xa

.field static final TRANSACTION_isSupportCFT:I = 0x8

.field static final TRANSACTION_processECT:I = 0x7

.field static final TRANSACTION_queryCFForServiceClass:I = 0xb

.field static final TRANSACTION_queryCallForwardInTimeSlot:I = 0x4

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setupXcapUserAgentString:I = 0x9

.field static final TRANSACTION_updateCallBarringForServiceClass:I = 0x6

.field static final TRANSACTION_updateCallForwardInTimeSlot:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_4

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsUt;

    if-eqz v1, :cond_14

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsUt;

    return-object v1

    .line 111
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsUt;
    .registers 1

    .line 612
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUt;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsUt;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsUt;

    .line 602
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUt;

    if-nez v0, :cond_c

    .line 605
    if-eqz p0, :cond_a

    .line 606
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsUt$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsUt;

    .line 607
    const/4 v0, 0x1

    return v0

    .line 609
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 603
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v9, "com.mediatek.ims.internal.IMtkImsUt"

    .line 120
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_124

    .line 128
    packed-switch p1, :pswitch_data_12a

    .line 265
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 124
    :pswitch_14
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v10

    .line 251
    :pswitch_18
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v3

    .line 259
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    return v10

    .line 243
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_32
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getXcapConflictErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    return v10

    .line 234
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setupXcapUserAgentString(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    return v10

    .line 226
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->isSupportCFT()Z

    move-result v0

    .line 228
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v10

    .line 205
    .end local v0    # "_result":Z
    :pswitch_5c
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    .line 208
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .local v0, "_arg0":Landroid/os/Message;
    goto :goto_6f

    .line 211
    .end local v0    # "_arg0":Landroid/os/Message;
    :cond_6e
    const/4 v0, 0x0

    .line 214
    .restart local v0    # "_arg0":Landroid/os/Message;
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7e

    .line 215
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .local v1, "_arg1":Landroid/os/Messenger;
    goto :goto_7f

    .line 218
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :cond_7e
    const/4 v1, 0x0

    .line 220
    .restart local v1    # "_arg1":Landroid/os/Messenger;
    :goto_7f
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->processECT(Landroid/os/Message;Landroid/os/Messenger;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v10

    .line 187
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :pswitch_86
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 193
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 195
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 197
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 198
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v10

    .line 169
    .end local v0    # "_result":I
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":[Ljava/lang/String;
    .end local v15    # "_arg4":I
    :pswitch_af
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 173
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 175
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 179
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v15

    .line 180
    .local v15, "_arg4":[J
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I

    move-result v0

    .line 181
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return v10

    .line 159
    .end local v0    # "_result":I
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":[J
    :pswitch_d8
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->queryCallForwardInTimeSlot(I)I

    move-result v1

    .line 163
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return v10

    .line 151
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_ea
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return v10

    .line 141
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_f8
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 145
    .local v1, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v1, :cond_10d

    invoke-interface {v1}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_10e

    :cond_10d
    const/4 v2, 0x0

    :goto_10e
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 147
    return v10

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_112
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUtListener;

    move-result-object v0

    .line 135
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsUtListener;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsUtListener;)V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v10

    :pswitch_data_124
    .packed-switch 0x5f4e5446
        :pswitch_14
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_112
        :pswitch_f8
        :pswitch_ea
        :pswitch_d8
        :pswitch_af
        :pswitch_86
        :pswitch_5c
        :pswitch_4e
        :pswitch_40
        :pswitch_32
        :pswitch_18
    .end packed-switch
.end method
