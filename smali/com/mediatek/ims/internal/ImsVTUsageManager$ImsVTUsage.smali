.class public Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTUsageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsVTUsage"
.end annotation


# static fields
.field public static final STATE_RX:I = 0x2

.field public static final STATE_TX:I = 0x1

.field public static final STATE_TXRX:I = 0x3


# instance fields
.field private mLteRxUsage:J

.field private mLteTxUsage:J

.field private mLteUsage:J

.field private mUsedForName:Ljava/lang/String;

.field private mWifiRxUsage:J

.field private mWifiTxUsage:J

.field private mWifiUsage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 92
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 93
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 94
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 95
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 96
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lteTx"    # J
    .param p4, "lteRx"    # J
    .param p6, "lteTxRx"    # J
    .param p8, "wifiTx"    # J
    .param p10, "wifiRx"    # J
    .param p12, "wifiTxRx"    # J

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 106
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 107
    iput-wide p4, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 108
    iput-wide p6, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 110
    iput-wide p8, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 111
    iput-wide p10, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 112
    iput-wide p12, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 121
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 122
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 124
    invoke-virtual {p2, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 125
    invoke-virtual {p2, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 126
    invoke-virtual {p2, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method


# virtual methods
.method public getLteUsage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 132
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "usage":J
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    goto :goto_0

    .line 137
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 138
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    goto :goto_0

    .line 140
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 141
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 144
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getWifiUsage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 148
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "usage":J
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 151
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    goto :goto_0

    .line 153
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 154
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    goto :goto_0

    .line 156
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 157
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 160
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public setAllUsage(JJJJJJ)V
    .locals 2
    .param p1, "lteTx"    # J
    .param p3, "lteRx"    # J
    .param p5, "lteTxRx"    # J
    .param p7, "wifiTx"    # J
    .param p9, "wifiRx"    # J
    .param p11, "wifiTxRx"    # J

    .line 193
    iput-wide p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 194
    iput-wide p3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 195
    iput-wide p5, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 197
    iput-wide p7, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 198
    iput-wide p9, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 199
    iput-wide p11, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setAllUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public setLteUsage(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "usage"    # J

    .line 164
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 165
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 168
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 171
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 174
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLTEUsage] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public setWifiUsage(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "usage"    # J

    .line 178
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 179
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 182
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 185
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 188
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setWifiUsage] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 7
    .param p1, "subUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 217
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 218
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 219
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 221
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 222
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    invoke-virtual {p1, v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 223
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    invoke-virtual {p1, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[subtraction]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] lteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lteRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lteTxRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wifiTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wifiRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wifiTxRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 5
    .param p1, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 206
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 207
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 209
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 210
    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 211
    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateFrom]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method
