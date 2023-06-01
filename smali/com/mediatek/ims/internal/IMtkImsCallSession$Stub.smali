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
.field static final TRANSACTION_approveEccRedial:I = 0xd

.field static final TRANSACTION_callTerminated:I = 0x9

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getHeaderCallId:I = 0xa

.field static final TRANSACTION_getIImsCallSession:I = 0x5

.field static final TRANSACTION_isIncomingCallMultiparty:I = 0x7

.field static final TRANSACTION_removeLastParticipant:I = 0xb

.field static final TRANSACTION_resume:I = 0x8

.field static final TRANSACTION_setIImsCallSession:I = 0x6

.field static final TRANSACTION_setImsCallMode:I = 0xc

.field static final TRANSACTION_setListener:I = 0x4

.field static final TRANSACTION_videoRingtoneOperation:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_4

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-eqz v1, :cond_14

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v1

    .line 109
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 1

    .line 627
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 617
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-nez v0, :cond_c

    .line 620
    if-eqz p0, :cond_a

    .line 621
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 622
    const/4 v0, 0x1

    return v0

    .line 624
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 113
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_e8

    .line 126
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_ee

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 240
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->videoRingtoneOperation(ILjava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    return v1

    .line 231
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    move v2, v1

    .line 234
    .local v2, "_arg0":Z
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->approveEccRedial(Z)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    return v1

    .line 222
    .end local v2    # "_arg0":Z
    :pswitch_36
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setImsCallMode(I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    return v1

    .line 215
    .end local v2    # "_arg0":I
    :pswitch_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->removeLastParticipant()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v1

    .line 207
    :pswitch_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getHeaderCallId()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    return v1

    .line 200
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->callTerminated()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v1

    .line 193
    :pswitch_66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->resume()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v1

    .line 185
    :pswitch_70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->isIncomingCallMultiparty()Z

    move-result v2

    .line 187
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return v1

    .line 176
    .end local v2    # "_result":Z
    :pswitch_7e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 179
    .local v2, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v1

    .line 168
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 170
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v2, :cond_a1

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_a2

    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    return v1

    .line 159
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    move-result-object v2

    .line 162
    .local v2, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    return v1

    .line 145
    .end local v2    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    :pswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 147
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_cb

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v3, p3, v1}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_ce

    .line 153
    :cond_cb
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_ce
    return v1

    .line 137
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_cf
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 130
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_dd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->close()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v1

    nop

    :pswitch_data_e8
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_cf
        :pswitch_b8
        :pswitch_a6
        :pswitch_90
        :pswitch_7e
        :pswitch_70
        :pswitch_66
        :pswitch_5c
        :pswitch_4e
        :pswitch_44
        :pswitch_36
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method
