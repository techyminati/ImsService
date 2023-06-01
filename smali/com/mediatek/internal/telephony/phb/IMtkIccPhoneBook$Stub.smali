.class public abstract Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IMtkIccPhoneBook.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addContactToGroup:I = 0xf

.field static final TRANSACTION_getAdnRecordsCapacityExt:I = 0x24

.field static final TRANSACTION_getAdnRecordsCapacityForSubscriber:I = 0x25

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsInEfForSubscriber:I = 0x2

.field static final TRANSACTION_getAnrCount:I = 0x19

.field static final TRANSACTION_getEmailCount:I = 0x1a

.field static final TRANSACTION_getPhonebookMemStorageExt:I = 0x22

.field static final TRANSACTION_getSneRecordLen:I = 0x20

.field static final TRANSACTION_getUpbDone:I = 0x23

.field static final TRANSACTION_getUsimAasById:I = 0x17

.field static final TRANSACTION_getUsimAasList:I = 0x16

.field static final TRANSACTION_getUsimAasMaxCount:I = 0x1b

.field static final TRANSACTION_getUsimAasMaxNameLen:I = 0x1c

.field static final TRANSACTION_getUsimGroupById:I = 0xb

.field static final TRANSACTION_getUsimGroups:I = 0xa

.field static final TRANSACTION_getUsimGrpMaxCount:I = 0x15

.field static final TRANSACTION_getUsimGrpMaxNameLen:I = 0x14

.field static final TRANSACTION_hasExistGroup:I = 0x13

.field static final TRANSACTION_hasSne:I = 0x1f

.field static final TRANSACTION_insertUsimAas:I = 0x18

.field static final TRANSACTION_insertUsimGroup:I = 0xd

.field static final TRANSACTION_isAdnAccessible:I = 0x21

.field static final TRANSACTION_isPhbReady:I = 0x9

.field static final TRANSACTION_moveContactFromGroupsToGroups:I = 0x12

.field static final TRANSACTION_removeContactFromGroup:I = 0x10

.field static final TRANSACTION_removeUsimAasById:I = 0x1e

.field static final TRANSACTION_removeUsimGroupById:I = 0xc

.field static final TRANSACTION_updateAdnRecordsInEfByIndexWithError:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfBySearchWithError:I = 0x3

.field static final TRANSACTION_updateContactToGroups:I = 0x11

.field static final TRANSACTION_updateUsimAas:I = 0x1d

.field static final TRANSACTION_updateUsimGroup:I = 0xe

.field static final TRANSACTION_updateUsimPBRecordsByIndexWithError:I = 0x7

.field static final TRANSACTION_updateUsimPBRecordsBySearchWithError:I = 0x8

.field static final TRANSACTION_updateUsimPBRecordsInEfByIndexWithError:I = 0x6

.field static final TRANSACTION_updateUsimPBRecordsInEfBySearchWithError:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 631
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 632
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 640
    if-nez p0, :cond_4

    .line 641
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 644
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    if-eqz v1, :cond_14

    .line 645
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    return-object v1

    .line 647
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .registers 1

    .line 2615
    sget-object v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    .line 2605
    sget-object v0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    if-nez v0, :cond_c

    .line 2608
    if-eqz p0, :cond_a

    .line 2609
    sput-object p0, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    .line 2610
    const/4 v0, 0x1

    return v0

    .line 2612
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 2606
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 651
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v12, "com.mediatek.internal.telephony.phb.IMtkIccPhoneBook"

    .line 656
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    packed-switch p1, :pswitch_data_40a

    .line 664
    packed-switch p1, :pswitch_data_410

    .line 1167
    move-object v2, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 660
    :pswitch_15
    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    return v11

    .line 1157
    :pswitch_19
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1160
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsCapacityForSubscriber(I)[I

    move-result-object v1

    .line 1161
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1163
    return v11

    .line 1149
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_2b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsCapacityExt()[I

    move-result-object v0

    .line 1151
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1153
    return v11

    .line 1139
    .end local v0    # "_result":[I
    :pswitch_39
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1142
    .local v0, "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUpbDone(I)I

    move-result v1

    .line 1143
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    return v11

    .line 1129
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1132
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;

    move-result-object v1

    .line 1133
    .local v1, "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {v15, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1135
    return v11

    .line 1119
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Lcom/mediatek/internal/telephony/phb/UsimPBMemInfo;
    :pswitch_5d
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1122
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->isAdnAccessible(I)Z

    move-result v1

    .line 1123
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    return v11

    .line 1109
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6f
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1112
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getSneRecordLen(I)I

    move-result v1

    .line 1113
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    return v11

    .line 1099
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_81
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1102
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->hasSne(I)Z

    move-result v1

    .line 1103
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    return v11

    .line 1085
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_93
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1089
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1091
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1092
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeUsimAasById(III)Z

    move-result v3

    .line 1093
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    return v11

    .line 1069
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_ad
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1073
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1075
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1077
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1078
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimAas(IIILjava/lang/String;)Z

    move-result v4

    .line 1079
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    return v11

    .line 1059
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_cb
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1062
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasMaxNameLen(I)I

    move-result v1

    .line 1063
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    return v11

    .line 1049
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_dd
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1052
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasMaxCount(I)I

    move-result v1

    .line 1053
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    return v11

    .line 1039
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_ef
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1042
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getEmailCount(I)I

    move-result v1

    .line 1043
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    return v11

    .line 1029
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_101
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1032
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAnrCount(I)I

    move-result v1

    .line 1033
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    return v11

    .line 1017
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_113
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1021
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->insertUsimAas(ILjava/lang/String;)I

    move-result v2

    .line 1023
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    return v11

    .line 1005
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_129
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1009
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1010
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1013
    return v11

    .line 995
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_13f
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 998
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimAasList(I)Ljava/util/List;

    move-result-object v1

    .line 999
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1001
    return v11

    .line 985
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/AlphaTag;>;"
    :pswitch_151
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 988
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGrpMaxCount(I)I

    move-result v1

    .line 989
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    return v11

    .line 975
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_163
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGrpMaxNameLen(I)I

    move-result v1

    .line 979
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    return v11

    .line 963
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_175
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 967
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->hasExistGroup(ILjava/lang/String;)I

    move-result v2

    .line 969
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    return v11

    .line 947
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_18b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 951
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 953
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 955
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 956
    .local v3, "_arg3":[I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->moveContactFromGroupsToGroups(II[I[I)Z

    move-result v4

    .line 957
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    return v11

    .line 933
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":Z
    :pswitch_1a9
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 937
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 939
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 940
    .restart local v2    # "_arg2":[I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateContactToGroups(II[I)Z

    move-result v3

    .line 941
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    return v11

    .line 919
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":Z
    :pswitch_1c3
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 923
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 926
    .local v2, "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeContactFromGroup(III)Z

    move-result v3

    .line 927
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    return v11

    .line 905
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1dd
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 911
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 912
    .restart local v2    # "_arg2":I
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->addContactToGroup(III)Z

    move-result v3

    .line 913
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    return v11

    .line 891
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1f7
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 897
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 898
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v13, v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimGroup(IILjava/lang/String;)I

    move-result v3

    .line 899
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    return v11

    .line 879
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_211
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 883
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->insertUsimGroup(ILjava/lang/String;)I

    move-result v2

    .line 885
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    return v11

    .line 867
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_227
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 871
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 872
    .local v1, "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->removeUsimGroupById(II)Z

    move-result v2

    .line 873
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    return v11

    .line 855
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_23d
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 859
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 860
    .restart local v1    # "_arg1":I
    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGroupById(II)Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    return v11

    .line 845
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_253
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getUsimGroups(I)Ljava/util/List;

    move-result-object v1

    .line 849
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 851
    return v11

    .line 835
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/UsimGroup;>;"
    :pswitch_265
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    .restart local v0    # "_arg0":I
    invoke-virtual {v13, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->isPhbReady(I)Z

    move-result v1

    .line 839
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    return v11

    .line 809
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_277
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 813
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 815
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_291

    .line 816
    sget-object v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .local v2, "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_292

    .line 819
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_291
    const/4 v2, 0x0

    .line 822
    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a1

    .line 823
    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .local v3, "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_2a2

    .line 826
    .end local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_2a1
    const/4 v3, 0x0

    .line 828
    .restart local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_2a2
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v4

    .line 829
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    return v11

    .line 788
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "_arg3":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v4    # "_result":I
    :pswitch_2ad
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 792
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 794
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c7

    .line 795
    sget-object v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    goto :goto_2c8

    .line 798
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :cond_2c7
    const/4 v2, 0x0

    .line 801
    .restart local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    :goto_2c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 802
    .local v3, "_arg3":I
    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v4

    .line 803
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    return v11

    .line 764
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_2d7
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 768
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 770
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 772
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 774
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 776
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 778
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 780
    .local v20, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 781
    .local v21, "_arg7":I
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 782
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    return v11

    .line 744
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":[Ljava/lang/String;
    .end local v21    # "_arg7":I
    :pswitch_315
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 748
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 750
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 752
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 754
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 756
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 757
    .local v17, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 758
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    return v11

    .line 712
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Ljava/lang/String;
    :pswitch_345
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 716
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 718
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 720
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 722
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 724
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 726
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 728
    .local v22, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 730
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 732
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 734
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 736
    .local v26, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    .line 737
    .local v27, "_arg11":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v28, v11

    move-object/from16 v11, v26

    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 738
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    return v28

    .line 690
    .end local v0    # "_result":I
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":[Ljava/lang/String;
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":Ljava/lang/String;
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v27    # "_arg11":[Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3a0
    move/from16 v28, v11

    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 694
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 696
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 698
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 700
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 702
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 704
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 705
    .local v17, "_arg6":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 706
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    return v28

    .line 678
    .end local v0    # "_result":I
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":Ljava/lang/String;
    .end local v11    # "_arg3":Ljava/lang/String;
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v17    # "_arg6":Ljava/lang/String;
    .local v12, "descriptor":Ljava/lang/String;
    :pswitch_3d8
    move/from16 v28, v11

    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 682
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 683
    .restart local v1    # "_arg1":I
    move-object/from16 v2, p0

    move-object v3, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v3, "descriptor":Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v4

    .line 684
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 686
    return v28

    .line 668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f4
    move/from16 v28, v11

    move-object v3, v12

    move-object v2, v13

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v3    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .restart local v0    # "_arg0":I
    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 672
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 674
    return v28

    :pswitch_data_40a
    .packed-switch 0x5f4e5446
        :pswitch_15
    .end packed-switch

    :pswitch_data_410
    .packed-switch 0x1
        :pswitch_3f4
        :pswitch_3d8
        :pswitch_3a0
        :pswitch_345
        :pswitch_315
        :pswitch_2d7
        :pswitch_2ad
        :pswitch_277
        :pswitch_265
        :pswitch_253
        :pswitch_23d
        :pswitch_227
        :pswitch_211
        :pswitch_1f7
        :pswitch_1dd
        :pswitch_1c3
        :pswitch_1a9
        :pswitch_18b
        :pswitch_175
        :pswitch_163
        :pswitch_151
        :pswitch_13f
        :pswitch_129
        :pswitch_113
        :pswitch_101
        :pswitch_ef
        :pswitch_dd
        :pswitch_cb
        :pswitch_ad
        :pswitch_93
        :pswitch_81
        :pswitch_6f
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
        :pswitch_2b
        :pswitch_19
    .end packed-switch
.end method
