.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSession.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSession"

.field static final TRANSACTION_approveEccRedial:I = 0x13

.field static final TRANSACTION_callTerminated:I = 0xf

.field static final TRANSACTION_cancelDeviceSwitch:I = 0xb

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_deviceSwitch:I = 0xa

.field static final TRANSACTION_explicitCallTransfer:I = 0x8

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getHeaderCallId:I = 0x10

.field static final TRANSACTION_getIImsCallSession:I = 0x5

.field static final TRANSACTION_isIncomingCallMultiparty:I = 0x7

.field static final TRANSACTION_notifyDeviceSwitchFailed:I = 0xc

.field static final TRANSACTION_notifyDeviceSwitched:I = 0xd

.field static final TRANSACTION_removeLastParticipant:I = 0x11

.field static final TRANSACTION_resume:I = 0xe

.field static final TRANSACTION_setIImsCallSession:I = 0x6

.field static final TRANSACTION_setImsCallMode:I = 0x12

.field static final TRANSACTION_setListener:I = 0x4

.field static final TRANSACTION_unattendedCallTransfer:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 110
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 118
    if-nez p0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 122
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-eqz v1, :cond_1

    .line 123
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v1

    .line 125
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 756
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 749
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 750
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 751
    const/4 v0, 0x1

    return v0

    .line 753
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 129
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    .line 134
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 310
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 301
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 304
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->approveEccRedial(Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    return v2

    .line 292
    .end local v1    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 295
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setImsCallMode(I)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    return v2

    .line 285
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->removeLastParticipant()V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v2

    .line 277
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getHeaderCallId()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    return v2

    .line 270
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->callTerminated()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    return v2

    .line 263
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->resume()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v2

    .line 256
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyDeviceSwitched()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v2

    .line 242
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 248
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->notifyDeviceSwitchFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v2

    .line 235
    .end local v1    # "_arg0":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->cancelDeviceSwitch()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    return v2

    .line 224
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->deviceSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v2

    .line 213
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->unattendedCallTransfer(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    return v2

    .line 206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->explicitCallTransfer()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v2

    .line 198
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->isIncomingCallMultiparty()Z

    move-result v1

    .line 200
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return v2

    .line 189
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 192
    .local v1, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v2

    .line 181
    .end local v1    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 183
    .local v1, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 185
    return v2

    .line 172
    .end local v1    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v1

    .line 175
    .local v1, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    return v2

    .line 158
    .end local v1    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 160
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v3, p3, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 166
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    :goto_2
    return v2

    .line 150
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v2

    .line 143
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->close()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 138
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
