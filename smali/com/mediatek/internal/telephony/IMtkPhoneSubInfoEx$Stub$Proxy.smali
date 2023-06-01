.class Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkPhoneSubInfoEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 567
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 574
    const-string v0, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    return-object v0
.end method

.method public getIsimDomainForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1103
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1104
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1105
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1105
    return-object v3

    .line 1108
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1112
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    nop

    .line 1115
    return-object v2

    .line 1112
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1114
    throw v2
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 747
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 749
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 750
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 751
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimGbabp()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 751
    return-object v3

    .line 754
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 758
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    nop

    .line 761
    return-object v2

    .line 758
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw v2
.end method

.method public getIsimGbabpForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 771
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 777
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 778
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 779
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    return-object v3

    .line 782
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 786
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 788
    nop

    .line 789
    return-object v2

    .line 786
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 788
    throw v2
.end method

.method public getIsimImpiForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1069
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1072
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1075
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1076
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1077
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1077
    return-object v3

    .line 1080
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1081
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1084
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    nop

    .line 1087
    return-object v2

    .line 1084
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    throw v2
.end method

.method public getIsimImpuForSubscriber(I)[Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1132
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1133
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1134
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    return-object v3

    .line 1137
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1138
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1141
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    nop

    .line 1144
    return-object v2

    .line 1141
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1143
    throw v2
.end method

.method public getIsimIstForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1154
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1160
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1161
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1162
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1162
    return-object v3

    .line 1165
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1166
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1169
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    nop

    .line 1172
    return-object v2

    .line 1169
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    throw v2
.end method

.method public getIsimPcscfForSubscriber(I)[Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1189
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1190
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1191
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    return-object v3

    .line 1194
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1195
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1198
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    nop

    .line 1201
    return-object v2

    .line 1198
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    throw v2
.end method

.method public getIsimPsismsc()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1214
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1215
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1216
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1217
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimPsismsc()[B

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1217
    return-object v3

    .line 1220
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1221
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 1224
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    nop

    .line 1227
    return-object v2

    .line 1224
    .end local v2    # "_result":[B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1226
    throw v2
.end method

.method public getIsimPsismscForSubscriber(I)[B
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1243
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1244
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1245
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getIsimPsismscForSubscriber(I)[B

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    return-object v3

    .line 1248
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1252
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1254
    nop

    .line 1255
    return-object v2

    .line 1252
    .end local v2    # "_result":[B
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1254
    throw v2
.end method

.method public getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1264
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1267
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1271
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1272
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 1273
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1274
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getLine1PhoneNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1274
    return-object v3

    .line 1277
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move-object v2, v3

    .line 1281
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    nop

    .line 1284
    return-object v2

    .line 1281
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw v2
.end method

.method public getMncLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1012
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1015
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1017
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 1018
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1019
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getMncLength()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    return v3

    .line 1022
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1026
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    nop

    .line 1029
    return v2

    .line 1026
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    throw v2
.end method

.method public getMncLengthForSubscriber(I)I
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1038
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1039
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1042
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1045
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 1046
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1047
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getMncLengthForSubscriber(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    return v3

    .line 1050
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1054
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1056
    nop

    .line 1057
    return v2

    .line 1054
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1056
    throw v2
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 614
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 617
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 619
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    .line 620
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 621
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimGbabp()Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    return-object v3

    .line 624
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 628
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return-object v2

    .line 628
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    throw v2
.end method

.method public getUsimGbabpForSubscriber(I)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 647
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    .line 648
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 649
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 649
    return-object v3

    .line 652
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 656
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    nop

    .line 659
    return-object v2

    .line 656
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw v2
.end method

.method public getUsimPsismsc()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 904
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 907
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 909
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 910
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 911
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimPsismsc()[B

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    return-object v3

    .line 914
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 918
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    nop

    .line 921
    return-object v2

    .line 918
    .end local v2    # "_result":[B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    throw v2
.end method

.method public getUsimPsismscForSubscriber(I)[B
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 937
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 938
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 939
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimPsismscForSubscriber(I)[B

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 939
    return-object v3

    .line 942
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 946
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 948
    nop

    .line 949
    return-object v2

    .line 946
    .end local v2    # "_result":[B
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 948
    throw v2
.end method

.method public getUsimService(ILjava/lang/String;)Z
    .registers 9
    .param p1, "service"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 592
    .local v2, "_status":Z
    if-nez v2, :cond_32

    .line 593
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 594
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimService(ILjava/lang/String;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    return v3

    .line 597
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v5, :cond_3c

    move v3, v4

    :cond_3c
    move v2, v3

    .line 601
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    nop

    .line 604
    return v2

    .line 601
    .end local v2    # "_result":Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 603
    throw v2
.end method

.method public getUsimServiceForSubscriber(IILjava/lang/String;)Z
    .registers 9
    .param p1, "subId"    # I
    .param p2, "service"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 882
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 883
    .local v2, "_status":Z
    if-nez v2, :cond_36

    .line 884
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 885
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimServiceForSubscriber(IILjava/lang/String;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_49

    .line 892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    return v3

    .line 888
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_49

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    :cond_40
    move v2, v4

    .line 892
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    nop

    .line 895
    return v2

    .line 892
    .end local v2    # "_result":Z
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 894
    throw v2
.end method

.method public getUsimSmsp()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 963
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    .line 964
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 965
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimSmsp()[B

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 965
    return-object v3

    .line 968
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 969
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 972
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    nop

    .line 975
    return-object v2

    .line 972
    .end local v2    # "_result":[B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v2
.end method

.method public getUsimSmspForSubscriber(I)[B
    .registers 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    iget-object v2, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 991
    .local v2, "_status":Z
    if-nez v2, :cond_30

    .line 992
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 993
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->getUsimSmspForSubscriber(I)[B

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    return-object v3

    .line 996
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move-object v2, v3

    .line 1000
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    nop

    .line 1003
    return-object v2

    .line 1000
    .end local v2    # "_result":[B
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    throw v2
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 802
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 807
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-virtual {p2, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 811
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 814
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 815
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 816
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 817
    return-void

    .line 820
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 823
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    nop

    .line 826
    return-void

    .line 823
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    throw v2
.end method

.method public setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 844
    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 845
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    invoke-virtual {p3, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 849
    :cond_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    :goto_21
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 852
    .local v2, "_status":Z
    if-nez v2, :cond_3f

    .line 853
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 854
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_4a

    .line 861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    return-void

    .line 858
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 861
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    nop

    .line 864
    return-void

    .line 861
    :catchall_4a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 863
    throw v2
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 677
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    invoke-virtual {p2, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 681
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    :goto_1e
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 684
    .local v2, "_status":Z
    if-nez v2, :cond_3b

    .line 685
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 686
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_46

    .line 693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    return-void

    .line 690
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_46

    .line 693
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    nop

    .line 696
    return-void

    .line 693
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw v2
.end method

.method public setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.internal.telephony.IMtkPhoneSubInfoEx"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 714
    const/4 v2, 0x0

    if-eqz p3, :cond_1e

    .line 715
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    invoke-virtual {p3, v0, v2}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 719
    :cond_1e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    :goto_21
    iget-object v3, p0, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 722
    .local v2, "_status":Z
    if-nez v2, :cond_3e

    .line 723
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 724
    invoke-static {}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx$Stub;->getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/internal/telephony/IMtkPhoneSubInfoEx;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_49

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 725
    return-void

    .line 728
    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_49

    .line 731
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    nop

    .line 734
    return-void

    .line 731
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    throw v2
.end method
