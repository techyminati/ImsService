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
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-eqz v1, :cond_1

    .line 107
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v1

    .line 109
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 627
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 617
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    if-nez v0, :cond_1

    .line 620
    if-eqz p0, :cond_0

    .line 621
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 622
    const/4 v0, 0x1

    return v0

    .line 624
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 113
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

    .line 117
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSession"

    .line 118
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 126
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    return v1

    .line 240
    :pswitch_1
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
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 234
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->approveEccRedial(Z)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    return v1

    .line 222
    .end local v2    # "_arg0":Z
    :pswitch_3
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
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->removeLastParticipant()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v1

    .line 207
    :pswitch_5
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
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->callTerminated()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v1

    .line 193
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->resume()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v1

    .line 185
    :pswitch_8
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
    :pswitch_9
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
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 170
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    return v1

    .line 159
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_b
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
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 147
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v3, :cond_2

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v3, p3, v1}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    :goto_1
    return v1

    .line 137
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_d
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
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->close()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
