.class public abstract Lcom/mediatek/internal/telephony/IMtkSms$Stub;
.super Landroid/os/Binder;
.source "IMtkSms.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateCellBroadcastSmsForSubscriber:I = 0x11

.field static final TRANSACTION_copyTextMessageToIccCardForSubscriber:I = 0x2

.field static final TRANSACTION_getAllMessagesFromIccEfByModeForSubscriber:I = 0x1

.field static final TRANSACTION_getCellBroadcastLangsForSubscriber:I = 0x16

.field static final TRANSACTION_getCellBroadcastRangesForSubscriber:I = 0x14

.field static final TRANSACTION_getMessageFromIccEfForSubscriber:I = 0xf

.field static final TRANSACTION_getScAddressForSubscriber:I = 0x17

.field static final TRANSACTION_getScAddressWithErrorCodeForSubscriber:I = 0x18

.field static final TRANSACTION_getSmsParametersForSubscriber:I = 0xd

.field static final TRANSACTION_getSmsSimMemoryStatusForSubscriber:I = 0x6

.field static final TRANSACTION_insertRawMessageToIccCardForSubscriber:I = 0xa

.field static final TRANSACTION_insertTextMessageToIccCardForSubscriber:I = 0x9

.field static final TRANSACTION_isSmsReadyForSubscriber:I = 0x4

.field static final TRANSACTION_queryCellBroadcastSmsActivationForSubscriber:I = 0x10

.field static final TRANSACTION_removeCellBroadcastMsgForSubscriber:I = 0x12

.field static final TRANSACTION_sendDataWithOriginalPortForSubscriber:I = 0x3

.field static final TRANSACTION_sendMultipartTextWithEncodingTypeForSubscriber:I = 0x8

.field static final TRANSACTION_sendMultipartTextWithExtraParamsForSubscriber:I = 0xc

.field static final TRANSACTION_sendTextWithEncodingTypeForSubscriber:I = 0x7

.field static final TRANSACTION_sendTextWithExtraParamsForSubscriber:I = 0xb

.field static final TRANSACTION_setCellBroadcastLangsForSubscriber:I = 0x15

.field static final TRANSACTION_setEtwsConfigForSubscriber:I = 0x13

.field static final TRANSACTION_setScAddressForSubscriber:I = 0x19

.field static final TRANSACTION_setSmsMemoryStatusForSubscriber:I = 0x5

.field static final TRANSACTION_setSmsParametersForSubscriber:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 408
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 409
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkSms;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 417
    if-nez p0, :cond_4

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_4
    const-string v0, "com.mediatek.internal.telephony.IMtkSms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 421
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/internal/telephony/IMtkSms;

    if-eqz v1, :cond_14

    .line 422
    move-object v1, v0

    check-cast v1, Lcom/mediatek/internal/telephony/IMtkSms;

    return-object v1

    .line 424
    :cond_14
    new-instance v1, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/internal/telephony/IMtkSms;
    .registers 1

    .line 1981
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/internal/telephony/IMtkSms;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/internal/telephony/IMtkSms;

    .line 1971
    sget-object v0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    if-nez v0, :cond_c

    .line 1974
    if-eqz p0, :cond_a

    .line 1975
    sput-object p0, Lcom/mediatek/internal/telephony/IMtkSms$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkSms;

    .line 1976
    const/4 v0, 0x1

    return v0

    .line 1978
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 1972
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 428
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "com.mediatek.internal.telephony.IMtkSms"

    .line 433
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    packed-switch p1, :pswitch_data_43a

    .line 441
    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_440

    .line 912
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 437
    :pswitch_15
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    return v14

    .line 900
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 904
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setScAddressForSubscriber(ILjava/lang/String;)Z

    move-result v2

    .line 906
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    return v14

    .line 884
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 887
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getScAddressWithErrorCodeForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1

    .line 888
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v1, :cond_46

    .line 890
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_49

    .line 894
    :cond_46
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    :goto_49
    return v14

    .line 874
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_4a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 877
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getScAddressForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    return v14

    .line 864
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 867
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getCellBroadcastLangsForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 868
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    return v14

    .line 852
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 856
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setCellBroadcastLangsForSubscriber(ILjava/lang/String;)Z

    move-result v2

    .line 858
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    return v14

    .line 842
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_84
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 845
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getCellBroadcastRangesForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    return v14

    .line 830
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_96
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 834
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 835
    .local v1, "_arg1":I
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setEtwsConfigForSubscriber(II)Z

    move-result v2

    .line 836
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    return v14

    .line 816
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_ac
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 822
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v3

    .line 824
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    return v14

    .line 804
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_c6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d4

    move v9, v14

    :cond_d4
    move v1, v9

    .line 809
    .local v1, "_arg1":Z
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2

    .line 810
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    return v14

    .line 794
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_e0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 797
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v1

    .line 798
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    return v14

    .line 774
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 778
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 781
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v3

    .line 782
    .local v3, "_result":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    if-eqz v3, :cond_111

    .line 784
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    invoke-virtual {v3, v12, v14}, Lcom/android/internal/telephony/SmsRawData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_114

    .line 788
    :cond_111
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    :goto_114
    return v14

    .line 755
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/telephony/SmsRawData;
    :pswitch_115
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 759
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 761
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12f

    .line 762
    sget-object v2, Lmediatek/telephony/MtkSmsParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmediatek/telephony/MtkSmsParameters;

    .local v2, "_arg2":Lmediatek/telephony/MtkSmsParameters;
    goto :goto_130

    .line 765
    .end local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    :cond_12f
    const/4 v2, 0x0

    .line 767
    .restart local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    :goto_130
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setSmsParametersForSubscriber(ILjava/lang/String;Lmediatek/telephony/MtkSmsParameters;)Z

    move-result v3

    .line 768
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    return v14

    .line 737
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lmediatek/telephony/MtkSmsParameters;
    .end local v3    # "_result":Z
    :pswitch_13b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 741
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getSmsParametersForSubscriber(ILjava/lang/String;)Lmediatek/telephony/MtkSmsParameters;

    move-result-object v2

    .line 743
    .local v2, "_result":Lmediatek/telephony/MtkSmsParameters;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v2, :cond_156

    .line 745
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    invoke-virtual {v2, v12, v14}, Lmediatek/telephony/MtkSmsParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_159

    .line 749
    :cond_156
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    :goto_159
    return v14

    .line 707
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lmediatek/telephony/MtkSmsParameters;
    :pswitch_15a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 711
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 715
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 717
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 719
    .local v19, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_182

    .line 720
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v20, v0

    .local v0, "_arg5":Landroid/os/Bundle;
    goto :goto_185

    .line 723
    .end local v0    # "_arg5":Landroid/os/Bundle;
    :cond_182
    const/4 v0, 0x0

    move-object/from16 v20, v0

    .line 726
    .local v20, "_arg5":Landroid/os/Bundle;
    :goto_185
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    .line 728
    .local v21, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 730
    .local v22, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_198

    move v9, v14

    .line 731
    .local v9, "_arg8":Z
    :cond_198
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    return v14

    .line 667
    .end local v9    # "_arg8":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg5":Landroid/os/Bundle;
    .end local v21    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v22    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_1b0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 671
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 673
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 675
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 677
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 679
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d8

    .line 680
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v20, v0

    .restart local v0    # "_arg5":Landroid/os/Bundle;
    goto :goto_1db

    .line 683
    .end local v0    # "_arg5":Landroid/os/Bundle;
    :cond_1d8
    const/4 v0, 0x0

    move-object/from16 v20, v0

    .line 686
    .restart local v20    # "_arg5":Landroid/os/Bundle;
    :goto_1db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ec

    .line 687
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    .local v0, "_arg6":Landroid/app/PendingIntent;
    goto :goto_1ef

    .line 690
    .end local v0    # "_arg6":Landroid/app/PendingIntent;
    :cond_1ec
    const/4 v0, 0x0

    move-object/from16 v21, v0

    .line 693
    .local v21, "_arg6":Landroid/app/PendingIntent;
    :goto_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_200

    .line 694
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_203

    .line 697
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_200
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 700
    .local v22, "_arg7":Landroid/app/PendingIntent;
    :goto_203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20a

    move v9, v14

    .line 701
    .restart local v9    # "_arg8":Z
    :cond_20a
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    return v14

    .line 643
    .end local v9    # "_arg8":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/Bundle;
    .end local v21    # "_arg6":Landroid/app/PendingIntent;
    .end local v22    # "_arg7":Landroid/app/PendingIntent;
    :pswitch_222
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 647
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 651
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 653
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 654
    .local v16, "_arg4":[B
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    .line 655
    .local v0, "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    if-eqz v0, :cond_251

    .line 657
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    invoke-virtual {v0, v12, v14}, Lmediatek/telephony/MtkSimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_254

    .line 661
    :cond_251
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    :goto_254
    return v14

    .line 615
    .end local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":[B
    :pswitch_255
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 619
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 621
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 623
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 625
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 627
    .local v19, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 629
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 630
    .local v21, "_arg6":J
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Lmediatek/telephony/MtkSimSmsInsertStatus;

    move-result-object v0

    .line 631
    .restart local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v0, :cond_293

    .line 633
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    invoke-virtual {v0, v12, v14}, Lmediatek/telephony/MtkSimSmsInsertStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_296

    .line 637
    :cond_293
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    :goto_296
    return v14

    .line 590
    .end local v0    # "_result":Lmediatek/telephony/MtkSimSmsInsertStatus;
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":J
    :pswitch_297
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 594
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 596
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 598
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 600
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 602
    .restart local v19    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 604
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v21

    .line 606
    .local v21, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    .line 608
    .local v22, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c5

    move v9, v14

    .line 609
    .restart local v9    # "_arg8":Z
    :cond_2c5
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    return v14

    .line 555
    .end local v9    # "_arg8":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v22    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :pswitch_2dd
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 559
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 561
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 563
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 565
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 567
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 569
    .restart local v20    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_309

    .line 570
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    .local v0, "_arg6":Landroid/app/PendingIntent;
    goto :goto_30c

    .line 573
    .end local v0    # "_arg6":Landroid/app/PendingIntent;
    :cond_309
    const/4 v0, 0x0

    move-object/from16 v21, v0

    .line 576
    .local v21, "_arg6":Landroid/app/PendingIntent;
    :goto_30c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31d

    .line 577
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_320

    .line 580
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_31d
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 583
    .local v22, "_arg7":Landroid/app/PendingIntent;
    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_327

    move v9, v14

    .line 584
    .restart local v9    # "_arg8":Z
    :cond_327
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    return v14

    .line 537
    .end local v9    # "_arg8":Z
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/app/PendingIntent;
    .end local v22    # "_arg7":Landroid/app/PendingIntent;
    :pswitch_33f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;

    move-result-object v2

    .line 543
    .local v2, "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v2, :cond_35a

    .line 545
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    invoke-virtual {v2, v12, v14}, Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35d

    .line 549
    :cond_35a
    invoke-virtual {v12, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    :goto_35d
    return v14

    .line 526
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/internal/telephony/MtkIccSmsStorageStatus;
    :pswitch_35e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36c

    move v9, v14

    :cond_36c
    move v1, v9

    .line 531
    .local v1, "_arg1":Z
    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->setSmsMemoryStatusForSubscriber(IZ)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    return v14

    .line 516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_374
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .restart local v0    # "_arg0":I
    invoke-virtual {v10, v0}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->isSmsReadyForSubscriber(I)Z

    move-result v1

    .line 520
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    return v14

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_386
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 485
    .restart local v15    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 487
    .restart local v16    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 489
    .restart local v17    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 491
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 493
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 495
    .restart local v20    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    .line 497
    .local v21, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b6

    .line 498
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    .local v0, "_arg7":Landroid/app/PendingIntent;
    goto :goto_3b9

    .line 501
    .end local v0    # "_arg7":Landroid/app/PendingIntent;
    :cond_3b6
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 504
    .restart local v22    # "_arg7":Landroid/app/PendingIntent;
    :goto_3b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ca

    .line 505
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    .local v0, "_arg8":Landroid/app/PendingIntent;
    goto :goto_3cd

    .line 508
    .end local v0    # "_arg8":Landroid/app/PendingIntent;
    :cond_3ca
    const/4 v0, 0x0

    move-object/from16 v23, v0

    .line 510
    .local v23, "_arg8":Landroid/app/PendingIntent;
    :goto_3cd
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    return v14

    .line 459
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":[B
    .end local v22    # "_arg7":Landroid/app/PendingIntent;
    .end local v23    # "_arg8":Landroid/app/PendingIntent;
    :pswitch_3e7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 463
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 465
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 467
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 469
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 471
    .local v18, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 473
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 474
    .local v20, "_arg6":J
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-wide/from16 v7, v20

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I

    move-result v0

    .line 475
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    return v14

    .line 445
    .end local v0    # "_result":I
    .end local v9    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":J
    :pswitch_41f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 449
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .local v2, "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Lcom/mediatek/internal/telephony/IMtkSms$Stub;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 453
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 455
    return v14

    nop

    :pswitch_data_43a
    .packed-switch 0x5f4e5446
        :pswitch_15
    .end packed-switch

    :pswitch_data_440
    .packed-switch 0x1
        :pswitch_41f
        :pswitch_3e7
        :pswitch_386
        :pswitch_374
        :pswitch_35e
        :pswitch_33f
        :pswitch_2dd
        :pswitch_297
        :pswitch_255
        :pswitch_222
        :pswitch_1b0
        :pswitch_15a
        :pswitch_13b
        :pswitch_115
        :pswitch_f2
        :pswitch_e0
        :pswitch_c6
        :pswitch_ac
        :pswitch_96
        :pswitch_84
        :pswitch_6e
        :pswitch_5c
        :pswitch_4a
        :pswitch_2f
        :pswitch_19
    .end packed-switch
.end method
