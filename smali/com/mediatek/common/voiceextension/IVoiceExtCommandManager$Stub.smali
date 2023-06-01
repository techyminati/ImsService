.class public abstract Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;
.super Landroid/os/Binder;
.source "IVoiceExtCommandManager.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createCommandSet:I = 0x1

.field static final TRANSACTION_deleteCommandSet:I = 0x4

.field static final TRANSACTION_getCommandSetSelected:I = 0x3

.field static final TRANSACTION_getCommandSets:I = 0xa

.field static final TRANSACTION_getCommands:I = 0x9

.field static final TRANSACTION_isCommandSetCreated:I = 0x2

.field static final TRANSACTION_pauseRecognition:I = 0xd

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_resumeRecognition:I = 0xe

.field static final TRANSACTION_selectCurrentCommandSet:I = 0x5

.field static final TRANSACTION_setCommandsFile:I = 0x7

.field static final TRANSACTION_setCommandsStrArray:I = 0x6

.field static final TRANSACTION_startRecognition:I = 0xb

.field static final TRANSACTION_stopRecognition:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
    .registers 1

    .line 596
    sget-object v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    .line 586
    sget-object v0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-nez v0, :cond_c

    .line 589
    if-eqz p0, :cond_a

    .line 590
    sput-object p0, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    .line 591
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
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

    .line 94
    const-string v0, "com.mediatek.common.voiceextension.IVoiceExtCommandManager"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_f2

    .line 103
    packed-switch p1, :pswitch_data_f8

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 99
    :pswitch_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 229
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->resumeRecognition()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    return v1

    .line 222
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->pauseRecognition()V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v1

    .line 215
    :pswitch_26
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->stopRecognition()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v1

    .line 208
    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->startRecognition()V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v1

    .line 200
    :pswitch_3a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommandSets()[Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 204
    return v1

    .line 192
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommands()[Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 196
    return v1

    .line 182
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;

    move-result-object v2

    .line 185
    .local v2, "_arg0":Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->registerListener(Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;)I

    move-result v3

    .line 186
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return v1

    .line 164
    .end local v2    # "_arg0":Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
    .end local v3    # "_result":I
    :pswitch_6c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    .line 167
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_7f

    .line 170
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7e
    const/4 v2, 0x0

    .line 173
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v1

    .line 155
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_8e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->setCommandsStrArray([Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v1

    .line 145
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_9c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->selectCurrentCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 149
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return v1

    .line 135
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_ae
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->deleteCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 139
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return v1

    .line 127
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_c0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->getCommandSetSelected()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 117
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->isCommandSetCreated(Ljava/lang/String;)I

    move-result v3

    .line 121
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v1

    .line 107
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_e0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->createCommandSet(Ljava/lang/String;)I

    move-result v3

    .line 111
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return v1

    :pswitch_data_f2
    .packed-switch 0x5f4e5446
        :pswitch_e
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_ce
        :pswitch_c0
        :pswitch_ae
        :pswitch_9c
        :pswitch_8e
        :pswitch_6c
        :pswitch_56
        :pswitch_48
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1c
        :pswitch_12
    .end packed-switch
.end method
