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
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSessionListener"

.field static final TRANSACTION_callSessionBusy:I = 0xb

.field static final TRANSACTION_callSessionCalling:I = 0xc

.field static final TRANSACTION_callSessionDeviceSwitchFailed:I = 0x8

.field static final TRANSACTION_callSessionDeviceSwitched:I = 0x7

.field static final TRANSACTION_callSessionMergeComplete:I = 0x6

.field static final TRANSACTION_callSessionMergeStarted:I = 0x5

.field static final TRANSACTION_callSessionRedialEcc:I = 0x9

.field static final TRANSACTION_callSessionRinging:I = 0xa

.field static final TRANSACTION_callSessionRttEventReceived:I = 0x4

.field static final TRANSACTION_callSessionTextCapabilityChanged:I = 0x3

.field static final TRANSACTION_callSessionTransferFailed:I = 0x2

.field static final TRANSACTION_callSessionTransferred:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 71
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .locals 1

    .line 545
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 538
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 539
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 540
    const/4 v0, 0x1

    return v0

    .line 542
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 77
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    .line 82
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_5

    packed-switch v7, :pswitch_data_0

    .line 241
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 232
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 235
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v10

    .line 223
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v10

    .line 207
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 211
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0

    .line 215
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_0
    const/4 v1, 0x0

    .line 217
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v10

    .line 196
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 200
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 201
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v10

    .line 180
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 184
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_2

    .line 188
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2
    const/4 v1, 0x0

    .line 190
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :goto_2
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionDeviceSwitchFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    return v10

    .line 171
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 174
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionDeviceSwitched(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v10

    .line 162
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v10

    .line 144
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 150
    .local v1, "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_3

    .line 154
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :cond_3
    const/4 v2, 0x0

    .line 156
    .restart local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :goto_3
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v10

    .line 133
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v10

    .line 116
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    .line 120
    .local v11, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 122
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 124
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 126
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 127
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v10

    .line 100
    .end local v11    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 104
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    sget-object v1, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsReasonInfo;

    .local v1, "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_4

    .line 108
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    const/4 v1, 0x0

    .line 110
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTransferFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v10

    .line 91
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 94
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTransferred(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v10

    .line 86
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v10

    :pswitch_data_0
    .packed-switch 0x1
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
