.class public Lcom/mediatek/internal/telephony/phb/MtkIccProvider;
.super Ljava/lang/Object;
.source "MtkIccProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/IccInternalInterface;


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADDRESS_SUPPORT_AAS:I = 0x8

.field private static final ADDRESS_SUPPORT_SNE:I = 0x9

.field protected static final ADN:I = 0x1

.field protected static final ADN_ALL:I = 0x9

.field protected static final ADN_SUB:I = 0x2

.field private static final DBG:Z

.field protected static final FDN:I = 0x3

.field protected static final FDN_SUB:I = 0x4

.field protected static final SDN:I = 0x5

.field protected static final SDN_SUB:I = 0x6

.field protected static final STR_ANR:Ljava/lang/String; = "anr"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_INDEX:Ljava/lang/String; = "index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "MtkIccProvider"

.field protected static final UPB:I = 0x7

.field protected static final UPB_SUB:I = 0x8

.field private static URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 67
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    .line 69
    const-string v1, "index"

    const-string v2, "name"

    const-string v3, "number"

    const-string v4, "emails"

    const-string v5, "additionalNumber"

    const-string v6, "groupIds"

    const-string v7, "_id"

    const-string v8, "aas"

    const-string v9, "sne"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/UriMatcher;Landroid/content/Context;)V
    .registers 6
    .param p1, "URL_MATCHER"    # Landroid/content/UriMatcher;
    .param p2, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkIccProvider URL_MATCHER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 105
    const-string v0, "icc"

    const-string v1, "pbr"

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    const-string v1, "pbr/subId/#"

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sput-object p1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 108
    iput-object p2, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .registers 21
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 643
    move-object v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    move-object/from16 v2, p2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", emails="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    if-nez p4, :cond_40

    const-string v3, "null"

    goto :goto_47

    :cond_40
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p6

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_62

    :cond_5c
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p6

    .line 648
    :goto_62
    const/4 v13, 0x0

    .line 651
    .local v13, "result":I
    :try_start_63
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 652
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_7c

    .line 653
    const-string v6, ""

    const-string v7, ""

    move-object v3, v0

    move/from16 v4, p6

    move v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_7b} :catch_8a
    .catch Ljava/lang/SecurityException; {:try_start_63 .. :try_end_7b} :catch_7d

    move v13, v3

    .line 660
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_7c
    :goto_7c
    goto :goto_97

    .line 658
    :catch_7d
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_97

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_97

    .line 656
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_8a
    move-exception v0

    .line 657
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_7c

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_7c

    .line 661
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_97
    :goto_97
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 662
    :cond_af
    return v13
.end method

.method private addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "strAnr"    # Ljava/lang/String;
    .param p5, "strEmail"    # Ljava/lang/String;
    .param p6, "strGas"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 668
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_5f

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUSIMRecordToEf: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", number="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", subId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_69

    .line 668
    :cond_5f
    move/from16 v3, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move/from16 v12, p7

    .line 673
    :goto_69
    const/16 v17, 0x0

    .line 675
    .local v17, "result":I
    const/4 v0, 0x0

    .line 676
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_7f

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 677
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 678
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v18, v0

    goto :goto_81

    .line 682
    :cond_7f
    move-object/from16 v18, v0

    .end local v0    # "emails":[Ljava/lang/String;
    .local v18, "emails":[Ljava/lang/String;
    :goto_81
    :try_start_81
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 684
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_a6

    .line 685
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v4, v0

    move/from16 v5, p7

    move/from16 v6, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-interface/range {v4 .. v16}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_a4} :catch_b2
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_a4} :catch_a9

    move/from16 v17, v4

    .line 692
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_a6
    move/from16 v0, v17

    goto :goto_bd

    .line 690
    :catch_a9
    move-exception v0

    .line 691
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_bb

    .line 688
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_b2
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 692
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 693
    :goto_bb
    move/from16 v0, v17

    .end local v17    # "result":I
    .local v0, "result":I
    :goto_bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addUsimRecordToEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 694
    return v0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .registers 22
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 819
    move-object v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    move-object/from16 v2, p2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pin2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    move-object/from16 v12, p5

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_5e

    :cond_56
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    .line 824
    :goto_5e
    const/4 v14, 0x0

    .line 827
    .local v14, "result":I
    :try_start_5f
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 828
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_79

    .line 829
    const-string v8, ""

    const-string v9, ""

    move-object v3, v0

    move/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_78} :catch_87
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_78} :catch_7a

    move v14, v3

    .line 836
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_79
    :goto_79
    goto :goto_94

    .line 834
    :catch_7a
    move-exception v0

    .line 835
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_94

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_94

    .line 832
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_87
    move-exception v0

    .line 833
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_79

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_79

    .line 837
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_94
    :goto_94
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 838
    :cond_ac
    return v14
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I
    .registers 14
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "pin2"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .line 842
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_2c

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 846
    :cond_2c
    const/4 v0, 0x0

    .line 849
    .local v0, "result":I
    :try_start_2d
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 851
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_41

    .line 852
    const-string v5, ""

    const-string v6, ""

    .line 853
    move-object v2, v1

    move v3, p4

    move v4, p1

    move v7, p2

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_40} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_40} :catch_42

    move v0, v2

    .line 859
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_41
    :goto_41
    goto :goto_54

    .line 857
    :catch_42
    move-exception v1

    .line 858
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_54

    .line 855
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_4b
    move-exception v1

    .line 856
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_41

    .line 860
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 861
    return v0
.end method

.method private deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 25
    .param p1, "efType"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "emails"    # [Ljava/lang/String;
    .param p5, "subId"    # I

    .line 866
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_39

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEf: efType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_3f

    .line 866
    :cond_39
    move/from16 v2, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    .line 870
    :goto_3f
    const/16 v16, 0x0

    .line 873
    .local v16, "result":I
    :try_start_41
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 875
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_68

    .line 876
    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v0

    move/from16 v4, p5

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    invoke-interface/range {v3 .. v15}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_66} :catch_74
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_66} :catch_6b

    move/from16 v16, v3

    .line 883
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_68
    move/from16 v0, v16

    goto :goto_7f

    .line 881
    :catch_6b
    move-exception v0

    .line 882
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_7d

    .line 879
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_74
    move-exception v0

    .line 880
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 883
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 884
    :goto_7d
    move/from16 v0, v16

    .end local v16    # "result":I
    .local v0, "result":I
    :goto_7f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteUsimRecordFromEf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 885
    return v0
.end method

.method private deleteUsimRecordFromEfByIndex(III)I
    .registers 15
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "subId"    # I

    .line 889
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_20

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUsimRecordFromEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 892
    :cond_20
    const/4 v0, 0x0

    .line 895
    .local v0, "result":I
    :try_start_21
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 897
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_38

    .line 898
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v3, p3

    move v4, p1

    move v10, p2

    invoke-interface/range {v2 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_37} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_37} :catch_39

    move v0, v2

    .line 905
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_38
    :goto_38
    goto :goto_4b

    .line 903
    :catch_39
    move-exception v1

    .line 904
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_4b

    .line 901
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_42
    move-exception v1

    .line 902
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_38

    .line 906
    :goto_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteUsimRecordFromEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 907
    return v0
.end method

.method private getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    .registers 2

    .line 992
    nop

    .line 993
    const-string v0, "mtksimphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 992
    invoke-static {v0}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 995
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    return-object v0
.end method

.method private getMaskString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1077
    if-nez p1, :cond_5

    .line 1078
    const-string v0, "null"

    return-object v0

    .line 1079
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_29

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_29
    const-string v0, "xx"

    return-object v0
.end method

.method private getRequestSubId(Landroid/net/Uri;)I
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;

    .line 998
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRequestSubId url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1001
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_20} :catch_21

    return v0

    .line 1002
    :catch_21
    move-exception v0

    .line 1003
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadAllSimContacts(I)Landroid/database/Cursor;
    .registers 11
    .param p1, "efType"    # I

    .line 154
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 155
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 156
    .local v1, "subIdList":[I
    array-length v2, v1

    new-array v2, v2, [Landroid/database/Cursor;

    .line 158
    .local v2, "result":[Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 159
    .local v3, "i":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_36

    aget v6, v1, v5

    .line 160
    .local v6, "subId":I
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-direct {p0, p1, v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v8

    aput-object v8, v2, v3

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadAllSimContacts: subId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "MtkIccProvider"

    invoke-static {v8, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v6    # "subId":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_10

    .line 164
    .end local v7    # "i":I
    .restart local v3    # "i":I
    :cond_36
    new-instance v4, Landroid/database/MergeCursor;

    invoke-direct {v4, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v4
.end method

.method private loadFromEf(II)Landroid/database/MatrixCursor;
    .registers 8
    .param p1, "efType"    # I
    .param p2, "subId"    # I

    .line 168
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromEf: efType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 171
    :cond_28
    const/4 v0, 0x0

    .line 173
    .local v0, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;>;"
    :try_start_29
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 174
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_34

    .line 175
    invoke-interface {v1, p2, p1}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_42
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_33} :catch_35

    move-object v0, v2

    .line 181
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_34
    :goto_34
    goto :goto_4f

    .line 179
    :catch_35
    move-exception v1

    .line 180
    .local v1, "ex":Ljava/lang/SecurityException;
    sget-boolean v2, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v2, :cond_4f

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_4f

    .line 177
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_42
    move-exception v1

    .line 178
    .local v1, "ex":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_34

    .line 183
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    if-eqz v0, :cond_98

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 186
    .local v1, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 187
    .local v2, "cursor":Landroid/database/MatrixCursor;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_74

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adnRecords.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 188
    :cond_74
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_75
    if-ge v3, v1, :cond_83

    .line 189
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadRecord(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Landroid/database/MatrixCursor;I)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 191
    .end local v3    # "i":I
    :cond_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query success, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 192
    return-object v2

    .line 195
    .end local v1    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    :cond_98
    const-string v1, "MtkIccProvider"

    const-string v2, "Cannot load ADN records"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private loadRecord(Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;Landroid/database/MatrixCursor;I)V
    .registers 20
    .param p1, "record"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .line 917
    move-object/from16 v1, p0

    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v0

    .line 918
    .local v2, "len":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 919
    new-array v3, v2, [Ljava/lang/Object;

    .line 920
    .local v3, "contact":[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, "alphaTag":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 922
    .local v5, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, "emails":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 924
    .local v7, "anr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getGrpIds()Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "grpIds":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getRecId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 927
    .local v9, "index":Ljava/lang/String;
    const/16 v0, 0x8

    if-lt v2, v0, :cond_35

    .line 928
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAasIndex()I

    move-result v10

    .line 929
    .local v10, "aasIndex":I
    const/4 v11, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 931
    .end local v10    # "aasIndex":I
    :cond_35
    const/16 v10, 0x9

    if-lt v2, v10, :cond_3f

    .line 932
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getSne()Ljava/lang/String;

    move-result-object v10

    .line 933
    .local v10, "sne":Ljava/lang/String;
    aput-object v10, v3, v0

    .line 935
    .end local v10    # "sne":Ljava/lang/String;
    :cond_3f
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_5a

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadRecord: record:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 935
    :cond_5a
    move-object/from16 v10, p1

    .line 938
    :goto_5c
    const/4 v11, 0x0

    aput-object v9, v3, v11

    .line 939
    const/4 v12, 0x1

    aput-object v4, v3, v12

    .line 940
    const/4 v0, 0x2

    aput-object v5, v3, v0

    .line 943
    const-string v13, "ro.vendor.mtk_kor_customization"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e7

    .line 944
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v0, :cond_e7

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v13, 0xfefe

    if-ne v0, v13, :cond_e7

    .line 945
    const/4 v13, 0x0

    .line 946
    .local v13, "ucslen":I
    const-string v14, ""

    .line 949
    .local v14, "strKSC":Ljava/lang/String;
    :try_start_85
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v15, "utf-16be"

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 951
    .local v0, "inData":[B
    new-instance v15, Ljava/lang/String;

    const-string v12, "KSC5601"

    invoke-direct {v15, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_96} :catch_98

    move-object v14, v15

    .line 954
    .end local v0    # "inData":[B
    goto :goto_b1

    .line 952
    :catch_98
    move-exception v0

    .line 953
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    sget-boolean v12, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v12, :cond_b1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Implausible UnsupportedEncodingException : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 956
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_b1
    :goto_b1
    nop

    .line 957
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    .line 958
    .end local v13    # "ucslen":I
    .local v0, "ucslen":I
    :goto_b6
    if-lez v0, :cond_c6

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v13, 0xf8f7

    if-ne v12, v13, :cond_c6

    .line 959
    add-int/lit8 v0, v0, -0x1

    goto :goto_b6

    .line 962
    :cond_c6
    invoke-virtual {v14, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v3, v13

    .line 963
    sget-boolean v12, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v12, :cond_e7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decode ADN using KSC5601 : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v3, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 968
    .end local v0    # "ucslen":I
    .end local v14    # "strKSC":Ljava/lang/String;
    :cond_e7
    if-eqz v6, :cond_105

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .local v0, "emailString":Ljava/lang/StringBuilder;
    array-length v12, v6

    :goto_ef
    if-ge v11, v12, :cond_fe

    aget-object v13, v6, v11

    .line 971
    .local v13, "email":Ljava/lang/String;
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .end local v13    # "email":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_ef

    .line 974
    :cond_fe
    const/4 v11, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 976
    .end local v0    # "emailString":Ljava/lang/StringBuilder;
    :cond_105
    const/4 v0, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->getAdditionalNumber()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v0

    .line 977
    const/4 v0, 0x5

    aput-object v8, v3, v0

    .line 978
    const/4 v0, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v0

    .line 979
    move-object/from16 v11, p2

    invoke-virtual {v11, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_120

    .line 918
    .end local v3    # "contact":[Ljava/lang/Object;
    .end local v4    # "alphaTag":Ljava/lang/String;
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v7    # "anr":Ljava/lang/String;
    .end local v8    # "grpIds":Ljava/lang/String;
    .end local v9    # "index":Ljava/lang/String;
    :cond_11c
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 981
    :goto_120
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 984
    const-string v0, "MtkIccProvider"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 988
    const-string v0, "MtkIccProvider"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "inVal"    # Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 363
    .local v0, "len":I
    if-nez v0, :cond_10

    .line 364
    sget-boolean v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "len of input String is 0"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 365
    :cond_f
    return-object p1

    .line 367
    :cond_10
    move-object v1, p1

    .line 369
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_29

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_29

    .line 370
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_29
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 24
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 699
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEf: efType=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldnumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newname="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newnumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subscription="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_6f

    :cond_65
    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v14, p7

    .line 704
    :goto_6f
    const/4 v15, 0x0

    .line 707
    .local v15, "result":I
    :try_start_70
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 708
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_8a

    .line 709
    move-object v3, v0

    move/from16 v4, p7

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_89} :catch_98
    .catch Ljava/lang/SecurityException; {:try_start_70 .. :try_end_89} :catch_8b

    move v15, v3

    .line 716
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_8a
    :goto_8a
    goto :goto_a5

    .line 714
    :catch_8b
    move-exception v0

    .line 715
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_a5

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_a5

    .line 712
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_98
    move-exception v0

    .line 713
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_8a

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_8a

    .line 717
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_a5
    :goto_a5
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_bd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 718
    :cond_bd
    return v15
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 16
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "subId"    # I

    .line 723
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_38

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newnumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-direct {p0, p4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 728
    :cond_38
    const/4 v0, 0x0

    .line 731
    .local v0, "result":I
    :try_start_39
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 733
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_4b

    .line 734
    move-object v2, v1

    move v3, p6

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p2

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateAdnRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4a} :catch_55
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_4a} :catch_4c

    move v0, v2

    .line 741
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_4b
    :goto_4b
    goto :goto_5e

    .line 739
    :catch_4c
    move-exception v1

    .line 740
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 737
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_55
    move-exception v1

    .line 738
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_4b

    .line 742
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIccRecordInEfByIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 743
    return v0
.end method

.method private updatePhbStorageInfo(II)V
    .registers 8
    .param p1, "update"    # I
    .param p2, "subId"    # I

    .line 1056
    const/4 v0, 0x0

    .line 1058
    .local v0, "res":Z
    :try_start_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1059
    .local v1, "phoneId":I
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1060
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_21

    .line 1061
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    .line 1062
    .local v3, "mFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->hasModemPhbEnhanceCapability(Lcom/android/internal/telephony/uicc/IccFileHandler;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1063
    invoke-static {p1}, Lcom/mediatek/internal/telephony/phb/CsimPhbUtil;->updatePhbStorageInfo(I)Z

    move-result v4

    move v0, v4

    goto :goto_21

    .line 1065
    :cond_1b
    const-string v4, "[updatePhbStorageInfo] is not a csim card"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_20} :catch_22

    .line 1066
    const/4 v0, 0x0

    .line 1071
    .end local v1    # "phoneId":I
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "mFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_21
    :goto_21
    goto :goto_2a

    .line 1069
    :catch_22
    move-exception v1

    .line 1070
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1072
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updatePhbStorageInfo] res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1073
    return-void
.end method

.method private updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;II)I
    .registers 8
    .param p1, "efType"    # I
    .param p2, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "index"    # I
    .param p4, "subId"    # I

    .line 1032
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_28

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsByIndexWithError subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",newAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1036
    :cond_28
    const/4 v0, 0x0

    .line 1039
    .local v0, "result":I
    :try_start_29
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1041
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_34

    .line 1042
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsByIndexWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_33} :catch_35

    move v0, v2

    .line 1048
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_34
    :goto_34
    goto :goto_47

    .line 1046
    :catch_35
    move-exception v1

    .line 1047
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_47

    .line 1044
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_3e
    move-exception v1

    .line 1045
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_34

    .line 1049
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsByIndexWithError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1050
    return v0
.end method

.method private updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I
    .registers 8
    .param p1, "efType"    # I
    .param p2, "oldAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p3, "newAdn"    # Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .param p4, "subId"    # I

    .line 1009
    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_28

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsimPBRecordsBySearchWithError subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oldAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newAdn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1013
    :cond_28
    const/4 v0, 0x0

    .line 1016
    .local v0, "result":I
    :try_start_29
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v1

    .line 1018
    .local v1, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v1, :cond_34

    .line 1019
    invoke-interface {v1, p4, p1, p2, p3}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsBySearchWithError(IILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;)I

    move-result v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_33} :catch_35

    move v0, v2

    .line 1025
    .end local v1    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_34
    :goto_34
    goto :goto_47

    .line 1023
    :catch_35
    move-exception v1

    .line 1024
    .local v1, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_47

    .line 1021
    .end local v1    # "ex":Ljava/lang/SecurityException;
    :catch_3e
    move-exception v1

    .line 1022
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .end local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_34

    .line 1026
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsimPBRecordsBySearchWithError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 1027
    return v0
.end method

.method private updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 29
    .param p1, "efType"    # I
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "oldNumber"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;
    .param p5, "newNumber"    # Ljava/lang/String;
    .param p6, "strAnr"    # Ljava/lang/String;
    .param p7, "strEmail"    # Ljava/lang/String;
    .param p8, "subId"    # I

    .line 749
    move-object/from16 v1, p0

    move-object/from16 v2, p7

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_71

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEf: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oldname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    move-object/from16 v15, p2

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    move-object/from16 v13, p4

    invoke-direct {v1, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    move-object/from16 v12, p5

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_7d

    .line 749
    :cond_71
    move/from16 v3, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    .line 758
    :goto_7d
    const/16 v17, 0x0

    .line 760
    .local v17, "result":I
    const/4 v0, 0x0

    .line 761
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_8b

    .line 762
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 763
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v18, v0

    goto :goto_8d

    .line 761
    :cond_8b
    move-object/from16 v18, v0

    .line 767
    .end local v0    # "emails":[Ljava/lang/String;
    .local v18, "emails":[Ljava/lang/String;
    :goto_8d
    :try_start_8d
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 769
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_b5

    .line 770
    const-string v9, ""

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v4, v0

    move/from16 v5, p8

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v11, v16

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, v19

    move-object/from16 v16, v18

    invoke-interface/range {v4 .. v16}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfBySearchWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b3} :catch_c1
    .catch Ljava/lang/SecurityException; {:try_start_8d .. :try_end_b3} :catch_b8

    move/from16 v17, v4

    .line 778
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_b5
    move/from16 v0, v17

    goto :goto_cc

    .line 776
    :catch_b8
    move-exception v0

    .line 777
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_ca

    .line 774
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_c1
    move-exception v0

    .line 775
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 778
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 779
    :goto_ca
    move/from16 v0, v17

    .end local v17    # "result":I
    .local v0, "result":I
    :goto_cc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUsimRecordInEf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 780
    return v0
.end method

.method private updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 26
    .param p1, "efType"    # I
    .param p2, "nIndex"    # I
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newNumber"    # Ljava/lang/String;
    .param p5, "strAnr"    # Ljava/lang/String;
    .param p6, "strEmail"    # Ljava/lang/String;
    .param p7, "subId"    # I

    .line 787
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    sget-boolean v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v0, :cond_5f

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimRecordInEfByIndex: efType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Index="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newname="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    move-object/from16 v14, p3

    invoke-direct {v1, v14}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newnumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    move-object/from16 v15, p4

    invoke-direct {v1, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", anr ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    move-object/from16 v12, p5

    invoke-direct {v1, v12}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", emails="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_69

    .line 787
    :cond_5f
    move/from16 v3, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v12, p5

    .line 793
    :goto_69
    const/16 v16, 0x0

    .line 795
    .local v16, "result":I
    const/4 v0, 0x0

    .line 796
    .local v0, "emails":[Ljava/lang/String;
    if-eqz v2, :cond_77

    .line 797
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 798
    const/4 v4, 0x0

    aput-object v2, v0, v4

    move-object/from16 v17, v0

    goto :goto_79

    .line 796
    :cond_77
    move-object/from16 v17, v0

    .line 802
    .end local v0    # "emails":[Ljava/lang/String;
    .local v17, "emails":[Ljava/lang/String;
    :goto_79
    :try_start_79
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getIccPhbService()Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;

    move-result-object v0

    .line 804
    .local v0, "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    if-eqz v0, :cond_95

    .line 805
    const/4 v10, 0x0

    move-object v4, v0

    move/from16 v5, p7

    move/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, v17

    move/from16 v12, p2

    invoke-interface/range {v4 .. v12}, Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;->updateUsimPBRecordsInEfByIndexWithError(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v4
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_93} :catch_a1
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_93} :catch_98

    move/from16 v16, v4

    .line 812
    .end local v0    # "iccIpb":Lcom/mediatek/internal/telephony/phb/IMtkIccPhoneBook;
    :cond_95
    move/from16 v0, v16

    goto :goto_ac

    .line 810
    :catch_98
    move-exception v0

    .line 811
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_aa

    .line 808
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_a1
    move-exception v0

    .line 809
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 812
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 813
    :goto_aa
    move/from16 v0, v16

    .end local v16    # "result":I
    .local v0, "result":I
    :goto_ac
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUsimRecordInEfByIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 814
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 26
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 381
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v8}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 383
    .local v9, "match":I
    packed-switch v9, :pswitch_data_1e2

    .line 414
    :pswitch_21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_38
    const/16 v0, 0x4f30

    .line 411
    .local v0, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    .line 412
    .local v1, "subId":I
    move v10, v0

    move v11, v1

    goto :goto_6d

    .line 405
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    :pswitch_41
    const/16 v0, 0x4f30

    .line 406
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 407
    .restart local v1    # "subId":I
    move v10, v0

    move v11, v1

    goto :goto_6d

    .line 400
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    :pswitch_4a
    const/16 v0, 0x6f3b

    .line 401
    .restart local v0    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    .line 402
    .restart local v1    # "subId":I
    move v10, v0

    move v11, v1

    goto :goto_6d

    .line 395
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    :pswitch_53
    const/16 v0, 0x6f3b

    .line 396
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 397
    .restart local v1    # "subId":I
    move v10, v0

    move v11, v1

    goto :goto_6d

    .line 390
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    :pswitch_5c
    const/16 v0, 0x6f3a

    .line 391
    .restart local v0    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v1

    .line 392
    .restart local v1    # "subId":I
    move v10, v0

    move v11, v1

    goto :goto_6d

    .line 385
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    :pswitch_65
    const/16 v0, 0x6f3a

    .line 386
    .restart local v0    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 387
    .restart local v1    # "subId":I
    move v10, v0

    move v11, v1

    .line 419
    .end local v0    # "efType":I
    .end local v1    # "subId":I
    .local v10, "efType":I
    .local v11, "subId":I
    :goto_6d
    const-string v0, ""

    .line 420
    .local v0, "tag":Ljava/lang/String;
    const-string v1, ""

    .line 421
    .local v1, "number":Ljava/lang/String;
    const/4 v2, 0x0

    .line 422
    .local v2, "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 423
    .local v3, "pin2":Ljava/lang/String;
    const/4 v4, -0x1

    .line 425
    .local v4, "nIndex":I
    const-string v5, " AND "

    move-object/from16 v12, p2

    invoke-virtual {v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 426
    .local v13, "tokens":[Ljava/lang/String;
    array-length v5, v13

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v2

    move-object v6, v3

    move v0, v5

    move v5, v4

    .line 428
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v3    # "pin2":Ljava/lang/String;
    .end local v4    # "nIndex":I
    .local v0, "n":I
    .local v5, "nIndex":I
    .local v6, "pin2":Ljava/lang/String;
    .local v14, "tag":Ljava/lang/String;
    .local v15, "number":Ljava/lang/String;
    .local v16, "emails":[Ljava/lang/String;
    :goto_84
    const/4 v4, -0x1

    add-int/lit8 v17, v0, -0x1

    .end local v0    # "n":I
    .local v17, "n":I
    const/4 v0, 0x0

    if-ltz v17, :cond_106

    .line 429
    aget-object v1, v13, v17

    .line 430
    .local v1, "param":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 431
    .local v2, "index":I
    if-ne v2, v4, :cond_ad

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve: bad whereClause parameter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MtkIccProvider"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move/from16 v0, v17

    goto :goto_84

    .line 437
    :cond_ad
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "key":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "val":Ljava/lang/String;
    const-string v4, "index"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .end local v5    # "nIndex":I
    .restart local v4    # "nIndex":I
    goto :goto_102

    .line 449
    .end local v4    # "nIndex":I
    .restart local v5    # "nIndex":I
    :cond_cd
    const-string v4, "tag"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_db

    .line 450
    invoke-direct {v7, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    .end local v14    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    goto :goto_102

    .line 451
    .end local v4    # "tag":Ljava/lang/String;
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_db
    const-string v4, "number"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 452
    invoke-direct {v7, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .end local v15    # "number":Ljava/lang/String;
    .local v4, "number":Ljava/lang/String;
    goto :goto_102

    .line 453
    .end local v4    # "number":Ljava/lang/String;
    .restart local v15    # "number":Ljava/lang/String;
    :cond_e9
    const-string v4, "emails"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 455
    const/4 v4, 0x0

    move-object/from16 v16, v4

    .end local v16    # "emails":[Ljava/lang/String;
    .local v4, "emails":[Ljava/lang/String;
    goto :goto_102

    .line 456
    .end local v4    # "emails":[Ljava/lang/String;
    .restart local v16    # "emails":[Ljava/lang/String;
    :cond_f5
    const-string v4, "pin2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_102

    .line 457
    invoke-direct {v7, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 459
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "val":Ljava/lang/String;
    :cond_102
    :goto_102
    move/from16 v0, v17

    goto/16 :goto_84

    .line 460
    :cond_106
    const/16 v18, 0x0

    .line 461
    .local v18, "result":I
    const-string v3, "delete result = "

    const/4 v1, 0x7

    const/16 v2, 0x8

    if-lez v5, :cond_154

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete index is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 463
    if-eq v1, v9, :cond_132

    if-ne v2, v9, :cond_128

    goto :goto_132

    .line 473
    :cond_128
    const-string v0, "deleteIccRecordFromEfByIndex "

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 474
    invoke-direct {v7, v10, v5, v6, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;I)I

    move-result v0

    .end local v18    # "result":I
    .local v0, "result":I
    goto :goto_141

    .line 464
    .end local v0    # "result":I
    .restart local v18    # "result":I
    :cond_132
    :goto_132
    const-string v0, "deleteUsimRecordFromEfByIndex "

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 465
    invoke-direct {v7, v10, v5, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteUsimRecordFromEfByIndex(III)I

    move-result v0

    .line 468
    .end local v18    # "result":I
    .restart local v0    # "result":I
    if-lez v0, :cond_141

    .line 469
    const/4 v4, -0x1

    invoke-direct {v7, v4, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 476
    :cond_141
    :goto_141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 477
    return v0

    .line 480
    .end local v0    # "result":I
    .restart local v18    # "result":I
    :cond_154
    const/16 v4, 0x6f3b

    if-ne v10, v4, :cond_160

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 481
    const/4 v0, -0x5

    return v0

    .line 485
    :cond_160
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16d

    .line 486
    return v0

    .line 489
    :cond_16d
    if-eq v1, v9, :cond_194

    if-ne v2, v9, :cond_179

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v9

    move-object v9, v3

    goto :goto_19b

    .line 505
    :cond_179
    const-string v0, "deleteIccRecordFromEf "

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v14

    move-object v4, v3

    move-object v3, v15

    move/from16 v19, v9

    move-object v9, v4

    .end local v9    # "match":I
    .local v19, "match":I
    move-object/from16 v4, v16

    move/from16 v20, v5

    .end local v5    # "nIndex":I
    .local v20, "nIndex":I
    move-object v5, v6

    move-object/from16 v21, v6

    .end local v6    # "pin2":Ljava/lang/String;
    .local v21, "pin2":Ljava/lang/String;
    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .end local v18    # "result":I
    .restart local v0    # "result":I
    goto :goto_1ce

    .line 489
    .end local v0    # "result":I
    .end local v19    # "match":I
    .end local v20    # "nIndex":I
    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v5    # "nIndex":I
    .restart local v6    # "pin2":Ljava/lang/String;
    .restart local v9    # "match":I
    .restart local v18    # "result":I
    :cond_194
    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v19, v9

    move-object v9, v3

    .line 490
    .end local v5    # "nIndex":I
    .end local v6    # "pin2":Ljava/lang/String;
    .end local v9    # "match":I
    .restart local v19    # "match":I
    .restart local v20    # "nIndex":I
    .restart local v21    # "pin2":Ljava/lang/String;
    :goto_19b
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-lt v0, v2, :cond_1b7

    .line 491
    const-string v0, "updateUsimPBRecordsBySearchWithError "

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const-string v1, ""

    invoke-direct {v0, v14, v15, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v2, v1, v1, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v10, v0, v2, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v0

    const/4 v6, -0x1

    .end local v18    # "result":I
    .restart local v0    # "result":I
    goto :goto_1c9

    .line 495
    .end local v0    # "result":I
    .restart local v18    # "result":I
    :cond_1b7
    const-string v0, "deleteUsimRecordFromEf "

    invoke-direct {v7, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v14

    move-object v3, v15

    const/4 v6, -0x1

    move-object/from16 v4, v16

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->deleteUsimRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 500
    .end local v18    # "result":I
    .restart local v0    # "result":I
    :goto_1c9
    if-lez v0, :cond_1ce

    .line 501
    invoke-direct {v7, v6, v11}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 509
    :cond_1ce
    :goto_1ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 510
    return v0

    nop

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
        :pswitch_21
        :pswitch_21
        :pswitch_41
        :pswitch_38
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 26
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .line 203
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v0, 0x0

    .line 206
    .local v0, "pin2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 208
    .local v11, "match":I
    const-string v12, "Cannot insert into URL: "

    const-string v1, "pin2"

    packed-switch v11, :pswitch_data_250

    .line 242
    :pswitch_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :pswitch_3d
    const/16 v1, 0x4f30

    .line 238
    .local v1, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 239
    .local v2, "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 232
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_47
    const/16 v1, 0x4f30

    .line 233
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 234
    .restart local v2    # "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 226
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_51
    const/16 v2, 0x6f3b

    .line 227
    .local v2, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 228
    .local v3, "subId":I
    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    move-object v13, v0

    move v14, v2

    move v15, v3

    goto :goto_80

    .line 220
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :pswitch_5f
    const/16 v2, 0x6f3b

    .line 221
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 222
    .restart local v3    # "subId":I
    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    move-object v13, v0

    move v14, v2

    move v15, v3

    goto :goto_80

    .line 215
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :pswitch_6d
    const/16 v1, 0x6f3a

    .line 216
    .restart local v1    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 217
    .local v2, "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 210
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_77
    const/16 v1, 0x6f3a

    .line 211
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 212
    .restart local v2    # "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    .line 246
    .end local v0    # "pin2":Ljava/lang/String;
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    .local v13, "pin2":Ljava/lang/String;
    .local v14, "efType":I
    .local v15, "subId":I
    :goto_80
    const-string v0, "tag"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, "number":Ljava/lang/String;
    const/16 v18, 0x0

    .line 249
    .local v18, "result":I
    const/4 v0, 0x7

    const/16 v1, 0x8

    if-eq v0, v11, :cond_e0

    if-ne v1, v11, :cond_96

    goto :goto_e0

    .line 306
    :cond_96
    if-nez v17, :cond_9d

    .line 307
    const-string v17, ""

    move-object/from16 v7, v17

    goto :goto_9f

    .line 306
    :cond_9d
    move-object/from16 v7, v17

    .line 309
    .end local v17    # "number":Ljava/lang/String;
    .local v7, "number":Ljava/lang/String;
    :goto_9f
    if-nez v16, :cond_a6

    .line 310
    const-string v16, ""

    move-object/from16 v6, v16

    goto :goto_a8

    .line 309
    :cond_a6
    move-object/from16 v6, v16

    .line 312
    .end local v16    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    :goto_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addIccRecordToEf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 313
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v6

    move-object v3, v7

    move-object v5, v13

    move-object/from16 v16, v6

    .end local v6    # "tag":Ljava/lang/String;
    .restart local v16    # "tag":Ljava/lang/String;
    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v20, v13

    move-object/from16 v6, v16

    .end local v18    # "result":I
    .local v0, "result":I
    goto/16 :goto_1ee

    .line 250
    .end local v0    # "result":I
    .end local v7    # "number":Ljava/lang/String;
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v18    # "result":I
    :cond_e0
    :goto_e0
    const-string v0, "gas"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "strGas":Ljava/lang/String;
    const-string v0, "anr"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "strAnr":Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "strEmail":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v0

    if-lt v2, v1, :cond_1c9

    .line 254
    const-string v1, "aas"

    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 255
    .local v1, "aasIndex":Ljava/lang/Integer;
    if-nez v17, :cond_104

    .line 256
    const-string v17, ""

    move-object/from16 v2, v17

    goto :goto_106

    .line 255
    :cond_104
    move-object/from16 v2, v17

    .line 258
    .end local v17    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_106
    if-nez v16, :cond_10d

    .line 259
    const-string v16, ""

    move-object/from16 v3, v16

    goto :goto_10f

    .line 258
    :cond_10d
    move-object/from16 v3, v16

    .line 261
    .end local v16    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    :goto_10f
    new-instance v4, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    move-object/from16 v20, v13

    .end local v13    # "pin2":Ljava/lang/String;
    .local v20, "pin2":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-direct {v4, v14, v13, v3, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v4, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 263
    const-string v13, "anr2"

    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_150

    .line 264
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "strAnr2":Ljava/lang/String;
    sget-boolean v17, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v17, :cond_147

    .line 266
    move-object/from16 v17, v2

    .end local v2    # "number":Ljava/lang/String;
    .restart local v17    # "number":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "tag":Ljava/lang/String;
    .local v21, "tag":Ljava/lang/String;
    const-string v3, "insert anr2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_14b

    .line 265
    .end local v17    # "number":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_147
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    .line 268
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/String;
    :goto_14b
    const/4 v2, 0x1

    invoke-virtual {v4, v13, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    goto :goto_154

    .line 263
    .end local v13    # "strAnr2":Ljava/lang/String;
    .end local v17    # "number":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_150
    move-object/from16 v17, v2

    move-object/from16 v21, v3

    .line 270
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .restart local v17    # "number":Ljava/lang/String;
    .restart local v21    # "tag":Ljava/lang/String;
    :goto_154
    const-string v2, "anr3"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 271
    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "strAnr3":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v3, :cond_17c

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert anr3: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getMaskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 275
    :cond_17c
    const/4 v3, 0x2

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 277
    .end local v2    # "strAnr3":Ljava/lang/String;
    :cond_180
    invoke-virtual {v4, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setGrpIds(Ljava/lang/String;)V

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "emails":[Ljava/lang/String;
    const-string v3, ""

    if-eqz v5, :cond_196

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_196

    .line 280
    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    .line 281
    const/16 v16, 0x0

    aput-object v5, v2, v16

    goto :goto_197

    .line 279
    :cond_196
    const/4 v13, 0x1

    .line 283
    :goto_197
    invoke-virtual {v4, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 284
    if-eqz v1, :cond_1a3

    .line 285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 287
    :cond_1a3
    array-length v0, v0

    const/16 v13, 0x9

    if-lt v0, v13, :cond_1b1

    .line 288
    const-string v0, "sne"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "sne":Ljava/lang/String;
    invoke-virtual {v4, v0}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    .line 292
    .end local v0    # "sne":Ljava/lang/String;
    :cond_1b1
    const-string v0, "updateUsimPBRecordsBySearchWithError "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v0, v3, v3, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v14, v0, v4, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v0

    .line 295
    .end local v1    # "aasIndex":Ljava/lang/Integer;
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v4    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v18    # "result":I
    .local v0, "result":I
    move-object/from16 v19, v5

    move-object/from16 v22, v7

    move-object/from16 v16, v21

    const/4 v13, 0x1

    move-object/from16 v21, v6

    goto :goto_1e5

    .line 296
    .end local v0    # "result":I
    .end local v20    # "pin2":Ljava/lang/String;
    .end local v21    # "tag":Ljava/lang/String;
    .local v13, "pin2":Ljava/lang/String;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v18    # "result":I
    :cond_1c9
    move-object/from16 v20, v13

    .end local v13    # "pin2":Ljava/lang/String;
    .restart local v20    # "pin2":Ljava/lang/String;
    const-string v0, "addUsimRecordToEf "

    invoke-direct {v8, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v13, 0x1

    move-object v4, v6

    move-object/from16 v19, v5

    .end local v5    # "strEmail":Ljava/lang/String;
    .local v19, "strEmail":Ljava/lang/String;
    move-object/from16 v21, v6

    .end local v6    # "strAnr":Ljava/lang/String;
    .local v21, "strAnr":Ljava/lang/String;
    move-object v6, v7

    move-object/from16 v22, v7

    .end local v7    # "strGas":Ljava/lang/String;
    .local v22, "strGas":Ljava/lang/String;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->addUsimRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .end local v18    # "result":I
    .restart local v0    # "result":I
    :goto_1e5
    if-lez v0, :cond_1ea

    .line 302
    invoke-direct {v8, v13, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updatePhbStorageInfo(II)V

    .line 305
    .end local v19    # "strEmail":Ljava/lang/String;
    .end local v21    # "strAnr":Ljava/lang/String;
    .end local v22    # "strGas":Ljava/lang/String;
    :cond_1ea
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    .line 316
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "number":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .local v7, "number":Ljava/lang/String;
    :goto_1ee
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-gtz v0, :cond_200

    .line 319
    const-string v2, "error/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_23f

    .line 322
    :cond_200
    packed-switch v11, :pswitch_data_264

    .line 346
    :pswitch_203
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :pswitch_218
    const-string v2, "pbr/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    goto :goto_23c

    .line 339
    :pswitch_21e
    const-string v2, "pbr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    goto :goto_23c

    .line 336
    :pswitch_224
    const-string v2, "fdn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    goto :goto_23c

    .line 332
    :pswitch_22a
    const-string v2, "fdn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    goto :goto_23c

    .line 328
    :pswitch_230
    const-string v2, "adn/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    goto :goto_23c

    .line 324
    :pswitch_236
    const-string v2, "adn/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    nop

    .line 351
    :goto_23c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    :goto_23f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 355
    .local v2, "resultUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 357
    return-object v2

    nop

    :pswitch_data_250
    .packed-switch 0x1
        :pswitch_77
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_28
        :pswitch_28
        :pswitch_47
        :pswitch_3d
    .end packed-switch

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_236
        :pswitch_230
        :pswitch_22a
        :pswitch_224
        :pswitch_203
        :pswitch_203
        :pswitch_21e
        :pswitch_218
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x4f30

    const/16 v2, 0x6f49

    const/16 v3, 0x6f3b

    const/16 v4, 0x6f3a

    packed-switch v0, :pswitch_data_8e

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_3c
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadAllSimContacts(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_4a
    nop

    .line 139
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 138
    invoke-direct {p0, v1, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_54
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_5d
    nop

    .line 132
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 131
    invoke-direct {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_67
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_70
    nop

    .line 125
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 124
    invoke-direct {p0, v3, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_7a
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_83
    nop

    .line 118
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 117
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_83
        :pswitch_7a
        :pswitch_70
        :pswitch_67
        :pswitch_5d
        :pswitch_54
        :pswitch_4a
        :pswitch_41
        :pswitch_3c
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 32
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 516
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v0, 0x0

    .line 520
    .local v0, "pin2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 521
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v10}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 522
    .local v12, "match":I
    const-string v1, "pin2"

    packed-switch v12, :pswitch_data_256

    .line 556
    :pswitch_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :pswitch_3d
    const/16 v1, 0x4f30

    .line 552
    .local v1, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 553
    .local v2, "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 546
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_47
    const/16 v1, 0x4f30

    .line 547
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 548
    .restart local v2    # "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 540
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_51
    const/16 v2, 0x6f3b

    .line 541
    .local v2, "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v3

    .line 542
    .local v3, "subId":I
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    move-object v13, v0

    move v14, v2

    move v15, v3

    goto :goto_80

    .line 534
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :pswitch_5f
    const/16 v2, 0x6f3b

    .line 535
    .restart local v2    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    .line 536
    .restart local v3    # "subId":I
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    move-object v13, v0

    move v14, v2

    move v15, v3

    goto :goto_80

    .line 529
    .end local v2    # "efType":I
    .end local v3    # "subId":I
    :pswitch_6d
    const/16 v1, 0x6f3a

    .line 530
    .restart local v1    # "efType":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->getRequestSubId(Landroid/net/Uri;)I

    move-result v2

    .line 531
    .local v2, "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    goto :goto_80

    .line 524
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    :pswitch_77
    const/16 v1, 0x6f3a

    .line 525
    .restart local v1    # "efType":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 526
    .restart local v2    # "subId":I
    move-object v13, v0

    move v14, v1

    move v15, v2

    .line 559
    .end local v0    # "pin2":Ljava/lang/String;
    .end local v1    # "efType":I
    .end local v2    # "subId":I
    .local v13, "pin2":Ljava/lang/String;
    .local v14, "efType":I
    .local v15, "subId":I
    :goto_80
    const-string v0, "tag"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "tag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 561
    .local v7, "number":Ljava/lang/String;
    const/16 v16, 0x0

    .line 562
    .local v16, "emails":[Ljava/lang/String;
    const-string v0, "newTag"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 563
    .local v17, "newTag":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 564
    .local v18, "newNumber":Ljava/lang/String;
    const-string v0, "index"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 565
    .local v19, "idInt":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 566
    .local v0, "index":I
    if-eqz v19, :cond_a9

    .line 567
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_aa

    .line 566
    :cond_a9
    move v6, v0

    .line 569
    .end local v0    # "index":I
    .local v6, "index":I
    :goto_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 570
    const/16 v20, 0x0

    .line 571
    .local v20, "result":I
    const/4 v0, 0x7

    const/16 v1, 0x8

    if-eq v0, v12, :cond_109

    if-ne v1, v12, :cond_cc

    move v10, v6

    move-object/from16 v21, v13

    move-object v13, v7

    goto :goto_10d

    .line 627
    :cond_cc
    if-lez v6, :cond_eb

    .line 628
    const-string v0, "updateIccRecordInEfByIndex"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    move v1, v14

    move v2, v6

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move v10, v6

    .end local v6    # "index":I
    .local v10, "index":I
    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v21, v13

    move-object/from16 v1, v17

    move-object v13, v7

    move-object/from16 v17, v8

    .end local v20    # "result":I
    .local v0, "result":I
    goto/16 :goto_240

    .line 631
    .end local v0    # "result":I
    .end local v10    # "index":I
    .restart local v6    # "index":I
    .restart local v20    # "result":I
    :cond_eb
    move v10, v6

    .end local v6    # "index":I
    .restart local v10    # "index":I
    const-string v0, "updateIccRecordInEf"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v8

    move-object v3, v7

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v13

    move-object/from16 v21, v13

    move-object v13, v7

    .end local v7    # "number":Ljava/lang/String;
    .local v13, "number":Ljava/lang/String;
    .local v21, "pin2":Ljava/lang/String;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v1, v17

    move-object/from16 v17, v8

    .end local v20    # "result":I
    .restart local v0    # "result":I
    goto/16 :goto_240

    .line 571
    .end local v0    # "result":I
    .end local v10    # "index":I
    .end local v21    # "pin2":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v7    # "number":Ljava/lang/String;
    .local v13, "pin2":Ljava/lang/String;
    .restart local v20    # "result":I
    :cond_109
    move v10, v6

    move-object/from16 v21, v13

    move-object v13, v7

    .line 572
    .end local v6    # "index":I
    .end local v7    # "number":Ljava/lang/String;
    .restart local v10    # "index":I
    .local v13, "number":Ljava/lang/String;
    .restart local v21    # "pin2":Ljava/lang/String;
    :goto_10d
    const-string v0, "newAnr"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "strAnr":Ljava/lang/String;
    const-string v0, "newEmails"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "strEmail":Ljava/lang/String;
    const-string v0, "aas"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 576
    .local v22, "aasIndex":Ljava/lang/Integer;
    const-string v0, "sne"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "sne":Ljava/lang/String;
    if-nez v18, :cond_12c

    .line 578
    const-string v18, ""

    move-object/from16 v4, v18

    goto :goto_12e

    .line 577
    :cond_12c
    move-object/from16 v4, v18

    .line 580
    .end local v18    # "newNumber":Ljava/lang/String;
    .local v4, "newNumber":Ljava/lang/String;
    :goto_12e
    if-nez v17, :cond_135

    .line 581
    const-string v17, ""

    move-object/from16 v3, v17

    goto :goto_137

    .line 580
    :cond_135
    move-object/from16 v3, v17

    .line 583
    .end local v17    # "newTag":Ljava/lang/String;
    .local v3, "newTag":Ljava/lang/String;
    :goto_137
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    const/4 v2, 0x0

    invoke-direct {v0, v14, v2, v3, v4}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v0, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;)V

    .line 585
    const-string v1, "newAnr2"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16e

    .line 586
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "strAnr2":Ljava/lang/String;
    sget-boolean v18, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v18, :cond_167

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    .end local v3    # "newTag":Ljava/lang/String;
    .local v24, "newTag":Ljava/lang/String;
    const-string v3, "update newAnr2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    goto :goto_169

    .end local v24    # "newTag":Ljava/lang/String;
    .restart local v3    # "newTag":Ljava/lang/String;
    :cond_167
    move-object/from16 v24, v3

    .line 588
    .end local v3    # "newTag":Ljava/lang/String;
    .restart local v24    # "newTag":Ljava/lang/String;
    :goto_169
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    goto :goto_170

    .line 585
    .end local v1    # "strAnr2":Ljava/lang/String;
    .end local v24    # "newTag":Ljava/lang/String;
    .restart local v3    # "newTag":Ljava/lang/String;
    :cond_16e
    move-object/from16 v24, v3

    .line 590
    .end local v3    # "newTag":Ljava/lang/String;
    .restart local v24    # "newTag":Ljava/lang/String;
    :goto_170
    const-string v1, "newAnr3"

    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 591
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "strAnr3":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->DBG:Z

    if-eqz v2, :cond_194

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update newAnr3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->log(Ljava/lang/String;)V

    .line 593
    :cond_194
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAnr(Ljava/lang/String;I)V

    .line 595
    .end local v1    # "strAnr3":Ljava/lang/String;
    :cond_198
    const-string v1, ""

    if-eqz v6, :cond_1aa

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1aa

    .line 596
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 597
    .end local v16    # "emails":[Ljava/lang/String;
    .local v2, "emails":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object v6, v2, v3

    move-object v3, v2

    goto :goto_1ac

    .line 599
    .end local v2    # "emails":[Ljava/lang/String;
    .restart local v16    # "emails":[Ljava/lang/String;
    :cond_1aa
    move-object/from16 v3, v16

    .end local v16    # "emails":[Ljava/lang/String;
    .local v3, "emails":[Ljava/lang/String;
    :goto_1ac
    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setEmails([Ljava/lang/String;)V

    .line 600
    if-eqz v22, :cond_1b8

    .line 601
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setAasIndex(I)V

    .line 603
    :cond_1b8
    if-eqz v5, :cond_1bd

    .line 604
    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;->setSne(Ljava/lang/String;)V

    .line 606
    :cond_1bd
    if-lez v10, :cond_1fc

    .line 607
    sget-object v1, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1da

    .line 608
    const-string v1, "updateUsimPBRecordsByIndexWithError"

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 609
    invoke-direct {v9, v14, v0, v10, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsByIndexWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;II)I

    move-result v1

    move v0, v1

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move-object/from16 v17, v8

    move-object/from16 v16, v24

    .end local v20    # "result":I
    .local v1, "result":I
    goto/16 :goto_23a

    .line 611
    .end local v1    # "result":I
    .restart local v20    # "result":I
    :cond_1da
    const-string v1, "updateUsimRecordInEfByIndex"

    invoke-direct {v9, v1}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 612
    move-object v2, v0

    .end local v0    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v2, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move-object/from16 v0, p0

    move v1, v14

    move-object v11, v2

    .end local v2    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .local v11, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    move v2, v10

    move-object/from16 v18, v3

    move-object/from16 v16, v24

    .end local v3    # "emails":[Ljava/lang/String;
    .end local v24    # "newTag":Ljava/lang/String;
    .local v16, "newTag":Ljava/lang/String;
    .local v18, "emails":[Ljava/lang/String;
    move-object/from16 v3, v16

    move-object/from16 v23, v4

    .end local v4    # "newNumber":Ljava/lang/String;
    .local v23, "newNumber":Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5    # "sne":Ljava/lang/String;
    .local v24, "sne":Ljava/lang/String;
    move-object v5, v7

    move-object/from16 v25, v6

    .end local v6    # "strEmail":Ljava/lang/String;
    .local v25, "strEmail":Ljava/lang/String;
    move-object/from16 v26, v7

    .end local v7    # "strAnr":Ljava/lang/String;
    .local v26, "strAnr":Ljava/lang/String;
    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    move-object/from16 v17, v8

    .end local v20    # "result":I
    .local v0, "result":I
    goto :goto_23a

    .line 616
    .end local v11    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v16    # "newTag":Ljava/lang/String;
    .end local v18    # "emails":[Ljava/lang/String;
    .end local v23    # "newNumber":Ljava/lang/String;
    .end local v25    # "strEmail":Ljava/lang/String;
    .end local v26    # "strAnr":Ljava/lang/String;
    .local v0, "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v3    # "emails":[Ljava/lang/String;
    .restart local v4    # "newNumber":Ljava/lang/String;
    .restart local v5    # "sne":Ljava/lang/String;
    .restart local v6    # "strEmail":Ljava/lang/String;
    .restart local v7    # "strAnr":Ljava/lang/String;
    .restart local v20    # "result":I
    .local v24, "newTag":Ljava/lang/String;
    :cond_1fc
    move-object v11, v0

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v16, v24

    move-object/from16 v24, v5

    .end local v0    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v4    # "newNumber":Ljava/lang/String;
    .end local v5    # "sne":Ljava/lang/String;
    .end local v6    # "strEmail":Ljava/lang/String;
    .end local v7    # "strAnr":Ljava/lang/String;
    .restart local v11    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .restart local v16    # "newTag":Ljava/lang/String;
    .restart local v18    # "emails":[Ljava/lang/String;
    .restart local v23    # "newNumber":Ljava/lang/String;
    .local v24, "sne":Ljava/lang/String;
    .restart local v25    # "strEmail":Ljava/lang/String;
    .restart local v26    # "strAnr":Ljava/lang/String;
    sget-object v0, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v0, v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_221

    .line 617
    const-string v0, "updateUsimPBRecordsBySearchWithError"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 618
    new-instance v0, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;

    invoke-direct {v0, v8, v13, v1}, Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v0, v11, v15}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimPBRecordsBySearchWithError(ILcom/mediatek/internal/telephony/phb/MtkAdnRecord;Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;I)I

    move-result v0

    move-object/from16 v17, v8

    .end local v20    # "result":I
    .local v0, "result":I
    goto :goto_23a

    .line 621
    .end local v0    # "result":I
    .restart local v20    # "result":I
    :cond_221
    const-string v0, "updateUsimRecordInEf"

    invoke-direct {v9, v0}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    move-object/from16 v6, v26

    move-object/from16 v7, v25

    move-object/from16 v17, v8

    .end local v8    # "tag":Ljava/lang/String;
    .local v17, "tag":Ljava/lang/String;
    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->updateUsimRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 626
    .end local v11    # "record":Lcom/mediatek/internal/telephony/phb/MtkAdnRecord;
    .end local v20    # "result":I
    .end local v22    # "aasIndex":Ljava/lang/Integer;
    .end local v24    # "sne":Ljava/lang/String;
    .end local v25    # "strEmail":Ljava/lang/String;
    .end local v26    # "strAnr":Ljava/lang/String;
    .restart local v0    # "result":I
    :goto_23a
    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v23

    .line 636
    .end local v23    # "newNumber":Ljava/lang/String;
    .local v1, "newTag":Ljava/lang/String;
    .local v16, "emails":[Ljava/lang/String;
    .local v18, "newNumber":Ljava/lang/String;
    :goto_240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/mediatek/internal/telephony/phb/MtkIccProvider;->logi(Ljava/lang/String;)V

    .line 637
    return v0

    nop

    :pswitch_data_256
    .packed-switch 0x1
        :pswitch_77
        :pswitch_6d
        :pswitch_5f
        :pswitch_51
        :pswitch_26
        :pswitch_26
        :pswitch_47
        :pswitch_3d
    .end packed-switch
.end method
