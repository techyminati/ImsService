.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_callSessionBusy:I = 0x7

.field static final TRANSACTION_callSessionCalling:I = 0x8

.field static final TRANSACTION_callSessionMergeComplete:I = 0x4

.field static final TRANSACTION_callSessionMergeStarted:I = 0x3

.field static final TRANSACTION_callSessionNotificationRingtoneReceived:I = 0xa

.field static final TRANSACTION_callSessionRedialEcc:I = 0x5

.field static final TRANSACTION_callSessionRinging:I = 0x6

.field static final TRANSACTION_callSessionRttEventReceived:I = 0x2

.field static final TRANSACTION_callSessionTextCapabilityChanged:I = 0x1

.field static final TRANSACTION_callSessionVideoRingtoneEventReceived:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .registers 1

    .line 493
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 483
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_c

    .line 486
    if-eqz p0, :cond_a

    .line 487
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 488
    const/4 v0, 0x1

    return v0

    .line 490
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
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

    .line 74
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v8, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    .line 75
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_12a

    .line 83
    move-object/from16 v10, p3

    packed-switch p1, :pswitch_data_130

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 79
    :pswitch_14
    move-object/from16 v10, p3

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v9

    .line 200
    :pswitch_1a
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 204
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    return v9

    .line 187
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 191
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v9

    .line 178
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_4e
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    return v9

    .line 169
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_60
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 172
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    return v9

    .line 153
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_72
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 157
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8c

    .line 158
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_8d

    .line 161
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_8c
    const/4 v1, 0x0

    .line 163
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_8d
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v9

    .line 142
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_94
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 146
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a7

    move v1, v9

    goto :goto_a8

    :cond_a7
    const/4 v1, 0x0

    .line 147
    .local v1, "_arg1":Z
    :goto_a8
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v9

    .line 133
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Z
    :pswitch_af
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    return v9

    .line 115
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_c1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 119
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 121
    .local v1, "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e3

    .line 122
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_e4

    .line 125
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :cond_e3
    const/4 v2, 0x0

    .line 127
    .restart local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :goto_e4
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v9

    .line 104
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_eb
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v9

    .line 87
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    :pswitch_101
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    .line 91
    .local v11, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 93
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 95
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 97
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 98
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v9

    :pswitch_data_12a
    .packed-switch 0x5f4e5446
        :pswitch_14
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_101
        :pswitch_eb
        :pswitch_c1
        :pswitch_af
        :pswitch_94
        :pswitch_72
        :pswitch_60
        :pswitch_4e
        :pswitch_34
        :pswitch_1a
    .end packed-switch
.end method
