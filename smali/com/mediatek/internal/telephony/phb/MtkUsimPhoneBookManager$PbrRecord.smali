.class Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "MtkUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private mAnrIndex:I

.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;[B)V
    .registers 6
    .param p2, "record"    # [B

    .line 1833
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1824
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    .line 1834
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 1836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PBR rec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V

    .line 1837
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p2

    invoke-direct {p1, p2, v0, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1838
    .local p1, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    .line 1839
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 1821
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;

    .line 1821
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;
    .param p1, "x1"    # I

    .line 1821
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .registers 15
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "parentTag"    # I

    .line 1866
    const/4 v0, 0x0

    .line 1868
    .local v0, "tagNumberWithinParentTag":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1870
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_96

    goto/16 :goto_8a

    .line 1896
    :pswitch_a
    const/4 v2, -0x1

    .line 1897
    .local v2, "sfi":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    .line 1899
    .local v7, "data":[B
    array-length v3, v7

    const/4 v4, 0x2

    if-lt v3, v4, :cond_72

    array-length v3, v7

    const/4 v5, 0x3

    if-le v3, v5, :cond_18

    goto :goto_72

    .line 1904
    :cond_18
    array-length v3, v7

    if-ne v3, v5, :cond_21

    .line 1905
    aget-byte v3, v7, v4

    and-int/lit16 v2, v3, 0xff

    move v8, v2

    goto :goto_22

    .line 1904
    :cond_21
    move v8, v2

    .line 1908
    .end local v2    # "sfi":I
    .local v8, "sfi":I
    :goto_22
    const/4 v2, 0x0

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v4, v7, v3

    and-int/lit16 v4, v4, 0xff

    or-int v9, v2, v4

    .line 1910
    .local v9, "efid":I
    const/16 v2, 0xc4

    if-ne v1, v2, :cond_3e

    .line 1911
    iget v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    mul-int/lit16 v4, v2, 0x100

    add-int/2addr v1, v4

    .line 1912
    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mAnrIndex:I

    move v10, v1

    goto :goto_3f

    .line 1910
    :cond_3e
    move v10, v1

    .line 1915
    .end local v1    # "tag":I
    .local v10, "tag":I
    :goto_3f
    new-instance v11, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    move-object v1, v11

    move v3, p2

    move v4, v9

    move v5, v8

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;-><init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;IIII)V

    .line 1916
    .local v1, "object":Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
    iput v10, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    .line 1917
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    # getter for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$400(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    .line 1918
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$300(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;Ljava/lang/String;)V

    .line 1920
    iget-object v2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1921
    move v1, v10

    goto :goto_8a

    .line 1900
    .end local v8    # "sfi":I
    .end local v9    # "efid":I
    .end local v10    # "tag":I
    .local v1, "tag":I
    .restart local v2    # "sfi":I
    :cond_72
    :goto_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid TLV length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MtkUsimPhoneBookManager"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    nop

    .line 1925
    .end local v2    # "sfi":I
    .end local v7    # "data":[B
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    .line 1926
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v2

    if-nez v2, :cond_93

    .line 1927
    return-void

    .line 1926
    :cond_93
    goto/16 :goto_1

    nop

    :pswitch_data_96
    .packed-switch 0xc0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .registers 7
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;

    .line 1847
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v0

    .line 1848
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_24

    goto :goto_17

    .line 1852
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 1853
    .local v1, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1854
    .local v2, "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1855
    nop

    .line 1859
    .end local v1    # "data":[B
    .end local v2    # "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1860
    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$PbrRecord;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    # operator++ for: Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->mSliceCount:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;->access$408(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;)I

    .line 1861
    return-void

    .line 1859
    :cond_23
    goto :goto_0

    :pswitch_data_24
    .packed-switch 0xa8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
