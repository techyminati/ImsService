.class public Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x200


# instance fields
.field private mData:[B

.field private mDataLen:I

.field private mEventMaxDataLen:I

.field private mMessageId:I

.field private mReadOffset:I

.field private mSlotId:I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 646
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .line 656
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 657
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/16 v0, 0x200

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 668
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 669
    iput p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 670
    iput p4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 671
    iput p3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 672
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 674
    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 675
    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 628
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method static synthetic access$2302(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;I)I
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p1, "x1"    # I

    .line 628
    iput p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    return p1
.end method


# virtual methods
.method public getByte()I
    .registers 4

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "ret":I
    monitor-enter p0

    .line 847
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 848
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 849
    monitor-exit p0

    .line 850
    return v0

    .line 849
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getBytes(I)[B
    .registers 6
    .param p1, "length"    # I

    .line 854
    monitor-enter p0

    .line 855
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_b

    .line 856
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 859
    :cond_b
    new-array v0, p1, [B

    .line 861
    .local v0, "ret":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p1, :cond_1f

    .line 862
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 863
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 861
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 865
    .end local v1    # "i":I
    :cond_1f
    monitor-exit p0

    return-object v0

    .line 866
    .end local v0    # "ret":[B
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getData()[B
    .registers 5

    .line 761
    monitor-enter p0

    .line 762
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v1, v0, [B

    .line 763
    .local v1, "tempData":[B
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    monitor-exit p0

    return-object v1

    .line 765
    .end local v1    # "tempData":[B
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getDataByReadOffest()[B
    .registers 6

    .line 775
    monitor-enter p0

    .line 776
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int v2, v0, v1

    new-array v2, v2, [B

    .line 777
    .local v2, "tempData":[B
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    const/4 v4, 0x0

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    monitor-exit p0

    return-object v2

    .line 779
    .end local v2    # "tempData":[B
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getDataLen()I
    .registers 2

    .line 769
    monitor-enter p0

    .line 770
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    monitor-exit p0

    return v0

    .line 771
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getFirstSlotId()I
    .registers 9

    .line 800
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 802
    .local v0, "simCount":I
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const/4 v4, 0x0

    const-string v5, "getFirstSlotId, invalid slot id: "

    const-string v6, "ExternalSimMgr"

    if-le v1, v2, :cond_2f

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v4

    .line 807
    :cond_2f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v0, :cond_3f

    .line 808
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    shl-int v7, v3, v1

    and-int/2addr v2, v7

    if-eqz v2, :cond_3c

    .line 809
    return v1

    .line 807
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 812
    .end local v1    # "i":I
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return v4
.end method

.method public getInt()I
    .registers 7

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "ret":I
    monitor-enter p0

    .line 823
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2d

    .line 824
    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int v0, v4, v1

    .line 828
    add-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 830
    :cond_2d
    monitor-exit p0

    .line 831
    return v0

    .line 830
    :catchall_2f
    move-exception v1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getMessageId()I
    .registers 2

    .line 783
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public getShort()I
    .registers 5

    .line 835
    const/4 v0, 0x0

    .line 836
    .local v0, "ret":I
    monitor-enter p0

    .line 837
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int v0, v3, v1

    .line 838
    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 839
    monitor-exit p0

    .line 840
    return v0

    .line 839
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getSlotBitMask()I
    .registers 2

    .line 793
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "len"    # I

    .line 870
    new-array v0, p1, [B

    .line 872
    .local v0, "buf":[B
    monitor-enter p0

    .line 873
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 875
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1b

    .line 877
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 875
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getTransactionId()I
    .registers 2

    .line 817
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public putByte(I)I
    .registers 5
    .param p1, "value"    # I

    .line 712
    monitor-enter p0

    .line 713
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_c

    .line 714
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 717
    :cond_c
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 718
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 719
    monitor-exit p0

    .line 720
    const/4 v0, 0x0

    return v0

    .line 719
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public putBytes([B)I
    .registers 6
    .param p1, "value"    # [B

    .line 747
    monitor-enter p0

    .line 748
    :try_start_1
    array-length v0, p1

    .line 750
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    if-le v0, v1, :cond_9

    .line 751
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 754
    :cond_9
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 756
    .end local v0    # "len":I
    monitor-exit p0

    .line 757
    return v3

    .line 756
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public putInt(I)I
    .registers 7
    .param p1, "value"    # I

    .line 684
    monitor-enter p0

    .line 685
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_c

    .line 686
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 689
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_23

    .line 690
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 691
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 693
    .end local v0    # "i":I
    :cond_23
    monitor-exit p0

    .line 694
    const/4 v0, 0x0

    return v0

    .line 693
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public putShort(I)I
    .registers 7
    .param p1, "value"    # I

    .line 698
    monitor-enter p0

    .line 699
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_c

    .line 700
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 703
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v2, :cond_23

    .line 704
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v4, v0, 0x8

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 705
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 707
    .end local v0    # "i":I
    :cond_23
    monitor-exit p0

    .line 708
    const/4 v0, 0x0

    return v0

    .line 707
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public putString(Ljava/lang/String;I)I
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .line 724
    monitor-enter p0

    .line 725
    :try_start_1
    iget v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_b

    .line 726
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 729
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 730
    .local v0, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge p2, v1, :cond_23

    .line 731
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v0, v2, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    iget v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    goto :goto_4d

    .line 734
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p2, v1

    .line 735
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    iget v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 737
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3e
    if-ge v3, v1, :cond_4d

    .line 738
    iget-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mData:[B

    iget v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    aput-byte v2, v4, v5

    .line 739
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 737
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 742
    .end local v0    # "s":[B
    .end local v1    # "remain":I
    .end local v3    # "i":I
    :cond_4d
    :goto_4d
    monitor-exit p0

    .line 743
    return v2

    .line 742
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public resetOffset()V
    .registers 2

    .line 678
    monitor-enter p0

    .line 679
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 680
    monitor-exit p0

    .line 681
    return-void

    .line 680
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 881
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpEvent: transaction_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data_len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->truncateString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 881
    return-object v0
.end method
