.class Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkImsService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 573
    return-void
.end method


# virtual methods
.method public UpdateImsState(I)V
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 809
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 810
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 811
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->UpdateImsState(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 812
    return-void

    .line 815
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 818
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    nop

    .line 821
    return-void

    .line 818
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 820
    throw v2
.end method

.method public addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1003
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    if-eqz p2, :cond_17

    invoke-interface {p2}, Landroid/telephony/ims/aidl/IImsSmsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1006
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1007
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    .line 1008
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1009
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    return-void

    .line 1013
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1016
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    nop

    .line 1019
    return-void

    .line 1016
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 1185
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1189
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1192
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 1193
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1194
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    return-void

    .line 1198
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1201
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1203
    nop

    .line 1204
    return-void

    .line 1201
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1203
    throw v2
.end method

.method public createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .param p4, "aospCallSessionImpl"    # Lcom/android/ims/internal/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 621
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    invoke-virtual {p2, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 625
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    :goto_1e
    const/4 v3, 0x0

    if-eqz p3, :cond_26

    invoke-interface {p3}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_27

    :cond_26
    move-object v4, v3

    :goto_27
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 628
    if-eqz p4, :cond_30

    invoke-interface {p4}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :cond_30
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 629
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 630
    .local v2, "_status":Z
    if-nez v2, :cond_51

    .line 631
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 632
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsService;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_65

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    return-object v3

    .line 635
    :cond_51
    :try_start_51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_65

    move-object v2, v3

    .line 639
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    nop

    .line 642
    return-object v2

    .line 639
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :catchall_65
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    throw v2
.end method

.method public deregisterIms(I)V
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 756
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    .line 757
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 758
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->deregisterIms(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    return-void

    .line 762
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 765
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    nop

    .line 768
    return-void

    .line 765
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    throw v2
.end method

.method public fallBackAospMTFlow(I)V
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1136
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1141
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 1142
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1143
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->fallBackAospMTFlow(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 1150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1144
    return-void

    .line 1147
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 1150
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1152
    nop

    .line 1153
    return-void

    .line 1150
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1152
    throw v2
.end method

.method public getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 832
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 835
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 836
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 837
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_44

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    return-object v3

    .line 840
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 841
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/IMtkImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 844
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    nop

    .line 847
    return-object v2

    .line 844
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    throw v2
.end method

.method public getCurrentCallCount(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 950
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 951
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getCurrentCallCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 958
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 951
    return v3

    .line 954
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 958
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    nop

    .line 961
    return v2

    .line 958
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    throw v2
.end method

.method public getImsNetworkState(I)[I
    .registers 7
    .param p1, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 979
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 980
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 981
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getImsNetworkState(I)[I

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 981
    return-object v3

    .line 984
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 985
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 988
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    nop

    .line 991
    return-object v2

    .line 988
    .end local v2    # "_result":[I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 989
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    throw v2
.end method

.method public getImsRegUriType(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 706
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 707
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 708
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getImsRegUriType(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    return v3

    .line 711
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 715
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    nop

    .line 718
    return v2

    .line 715
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    throw v2
.end method

.method public getImsState(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 680
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 681
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 682
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getImsState(I)I

    move-result v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 682
    return v3

    .line 685
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move v2, v3

    .line 689
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    nop

    .line 692
    return v2

    .line 689
    .end local v2    # "_result":I
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 580
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    return-object v0
.end method

.method public getModemMultiImsCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 923
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 924
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 925
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/internal/IMtkImsService;->getModemMultiImsCount()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 932
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    return v3

    .line 928
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 932
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    nop

    .line 935
    return v2

    .line 932
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    throw v2
.end method

.method public getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;
    .registers 7
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 858
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 861
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 862
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 863
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_44

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    return-object v3

    .line 866
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 867
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/IMtkImsUt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 870
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    nop

    .line 873
    return-object v2

    .line 870
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 872
    throw v2
.end method

.method public getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 654
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 655
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 656
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_46

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    return-object v3

    .line 659
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_46

    move-object v2, v3

    .line 663
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 665
    nop

    .line 666
    return-object v2

    .line 663
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 665
    throw v2
.end method

.method public getWfcRegErrorCode(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1230
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1233
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1236
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1237
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1238
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->getWfcRegErrorCode(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1238
    return v3

    .line 1241
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1245
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    nop

    .line 1248
    return v2

    .line 1245
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    throw v2
.end method

.method public hangupAllCall(I)V
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 731
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    .line 732
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 733
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/ims/internal/IMtkImsService;->hangupAllCall(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    return-void

    .line 737
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 740
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    nop

    .line 743
    return-void

    .line 740
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v2
.end method

.method public isCameraAvailable()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1092
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1095
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1097
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1098
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1099
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/internal/IMtkImsService;->isCameraAvailable()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    return v3

    .line 1102
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 1106
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    nop

    .line 1109
    return v2

    .line 1106
    .end local v2    # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    throw v2
.end method

.method public registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p3, "mtklistener"    # Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .param p4, "notifyOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1065
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    const/4 v2, 0x0

    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/android/ims/internal/IImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1070
    if-eqz p3, :cond_22

    invoke-interface {p3}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1071
    const/4 v2, 0x0

    if-eqz p4, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    move v3, v2

    :goto_2b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1073
    .local v2, "_status":Z
    if-nez v2, :cond_4c

    .line 1074
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 1075
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/mediatek/ims/internal/IMtkImsService;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V
    :try_end_45
    .catchall {:try_start_8 .. :try_end_45} :catchall_57

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1076
    return-void

    .line 1079
    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_57

    .line 1082
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catchall_57
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    throw v2
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;
    .registers 16
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecureProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "netId"    # I
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 882
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 888
    const/4 v2, 0x0

    if-eqz p3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 892
    .local v2, "_status":Z
    if-nez v2, :cond_46

    .line 893
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 894
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/mediatek/ims/internal/IMtkImsService;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_61

    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    return-object v3

    .line 897
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_58

    .line 899
    sget-object v3, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gba/NafSessionKey;
    :try_end_57
    .catchall {:try_start_46 .. :try_end_57} :catchall_61

    .local v3, "_result":Lcom/mediatek/gba/NafSessionKey;
    goto :goto_59

    .line 902
    .end local v3    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_58
    const/4 v3, 0x0

    .line 906
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :goto_59
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    nop

    .line 909
    return-object v3

    .line 906
    .end local v3    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :catchall_61
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 908
    throw v2
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 24
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1032
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1033
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1035
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_77

    .line 1036
    move/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_75

    .line 1037
    move/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_73

    .line 1038
    move/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_71

    .line 1039
    move-object/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6f

    .line 1040
    move-object/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    const/4 v0, 0x0

    if-eqz p6, :cond_2b

    const/4 v3, 0x1

    goto :goto_2c

    :cond_2b
    move v3, v0

    :goto_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1043
    move-object/from16 v9, p0

    iget-object v3, v9, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1044
    .local v0, "_status":Z
    if-nez v0, :cond_62

    .line 1045
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_62

    .line 1046
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/ims/internal/IMtkImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    :try_end_5b
    .catchall {:try_start_23 .. :try_end_5b} :catchall_6d

    .line 1053
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1047
    return-void

    .line 1050
    :cond_62
    :try_start_62
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6d

    .line 1053
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1053
    :catchall_6d
    move-exception v0

    goto :goto_82

    :catchall_6f
    move-exception v0

    goto :goto_80

    :catchall_71
    move-exception v0

    goto :goto_7e

    :catchall_73
    move-exception v0

    goto :goto_7c

    :catchall_75
    move-exception v0

    goto :goto_7a

    :catchall_77
    move-exception v0

    move/from16 v11, p1

    :goto_7a
    move/from16 v12, p2

    :goto_7c
    move/from16 v13, p3

    :goto_7e
    move-object/from16 v14, p4

    :goto_80
    move-object/from16 v15, p5

    :goto_82
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1055
    throw v0
.end method

.method public setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .registers 24
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callNum"    # Ljava/lang/String;
    .param p4, "seqNum"    # I
    .param p5, "toNumber"    # Ljava/lang/String;
    .param p6, "isAllow"    # Z
    .param p7, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 590
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_76

    .line 591
    move/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_74

    .line 592
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_72

    .line 593
    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_70

    .line 594
    move/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6e

    .line 595
    move-object/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_2c

    move v4, v0

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    move-object/from16 v9, p0

    iget-object v4, v9, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 599
    .local v0, "_status":Z
    if-nez v0, :cond_61

    .line 600
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 601
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/ims/internal/IMtkImsService;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    :try_end_5a
    .catchall {:try_start_23 .. :try_end_5a} :catchall_6c

    .line 608
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    return-void

    .line 605
    :cond_61
    :try_start_61
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6c

    .line 608
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    nop

    .line 611
    return-void

    .line 608
    :catchall_6c
    move-exception v0

    goto :goto_81

    :catchall_6e
    move-exception v0

    goto :goto_7f

    :catchall_70
    move-exception v0

    goto :goto_7d

    :catchall_72
    move-exception v0

    goto :goto_7b

    :catchall_74
    move-exception v0

    goto :goto_79

    :catchall_76
    move-exception v0

    move/from16 v11, p1

    :goto_79
    move-object/from16 v12, p2

    :goto_7b
    move-object/from16 v13, p3

    :goto_7d
    move/from16 v14, p4

    :goto_7f
    move-object/from16 v15, p5

    :goto_81
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw v0
.end method

.method public setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .registers 23
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "fromUri"    # Ljava/lang/String;
    .param p5, "extraHeaders"    # Ljava/util/Map;
    .param p6, "location"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1262
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1264
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    .line 1265
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6d

    .line 1266
    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6b

    .line 1267
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_69

    .line 1268
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    .line 1269
    move-object/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_65

    .line 1270
    move-object/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1271
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1272
    .local v0, "_status":Z
    if-nez v0, :cond_58

    .line 1273
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1274
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/mediatek/ims/internal/IMtkImsService;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_63

    .line 1281
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1275
    return-void

    .line 1278
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 1281
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    nop

    .line 1284
    return-void

    .line 1281
    :catchall_63
    move-exception v0

    goto :goto_7c

    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move/from16 v10, p1

    :goto_72
    move/from16 v11, p2

    :goto_74
    move-object/from16 v12, p3

    :goto_76
    move-object/from16 v13, p4

    :goto_78
    move-object/from16 v14, p5

    :goto_7a
    move-object/from16 v15, p6

    :goto_7c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw v0
.end method

.method public setMTRedirect(IZ)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    iget-object v3, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1120
    .local v2, "_status":Z
    if-nez v2, :cond_37

    .line 1121
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1122
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->setMTRedirect(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1123
    return-void

    .line 1126
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    nop

    .line 1132
    return-void

    .line 1129
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw v2
.end method

.method public setSipHeader(ILjava/util/Map;Ljava/lang/String;)V
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "extraHeaders"    # Ljava/util/Map;
    .param p3, "fromUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1157
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1162
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1163
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1164
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 1165
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1166
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/internal/IMtkImsService;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1167
    return-void

    .line 1170
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1173
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1173
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    throw v2
.end method

.method public setWfcRegErrorCode(II)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1210
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1214
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 1215
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1216
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->setWfcRegErrorCode(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1223
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1217
    return-void

    .line 1220
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1223
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    nop

    .line 1226
    return-void

    .line 1223
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1225
    throw v2
.end method

.method public updateRadioState(II)V
    .registers 8
    .param p1, "radioState"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 779
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget-object v2, p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 783
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 784
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 785
    invoke-static {}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsService;->updateRadioState(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    return-void

    .line 789
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 792
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 794
    nop

    .line 795
    return-void

    .line 792
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 794
    throw v2
.end method
