.class Lcom/mediatek/internal/telephony/cat/BipChannelManager;
.super Ljava/lang/Object;
.source "BipChannelManager.java"


# static fields
.field public static final MAXCHANNELID:I = 0x7

.field public static final MAXPSCID:I = 0x5

.field public static final MAXUICCSERVIER:I = 0x2


# instance fields
.field private mBipChannelStatus:[I

.field private mChannelIdPool:B

.field private mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

.field private mCurrentOccupiedPSCh:B

.field private mCurrentOccupiedUICCSerCh:B


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    .line 46
    iput-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    .line 47
    iput-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 48
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    .line 51
    const/4 v2, 0x7

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    .line 52
    new-array v3, v2, [Lcom/mediatek/internal/telephony/cat/Channel;

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    .line 53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_26

    .line 54
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aput-object v1, v4, v3

    .line 55
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    aput v0, v4, v3

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 57
    .end local v3    # "i":I
    :cond_26
    return-void
.end method


# virtual methods
.method public acquireChannelId(I)I
    .registers 10
    .param p1, "protocolType"    # I

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "i":B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireChannelId, protocolType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",occupied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v3, p1, :cond_34

    iget-byte v5, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-le v4, v5, :cond_3e

    :cond_34
    const/4 v5, 0x1

    if-eq v5, p1, :cond_39

    if-ne v4, p1, :cond_3f

    :cond_39
    const/4 v6, 0x5

    iget-byte v7, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-gt v6, v7, :cond_3f

    .line 83
    :cond_3e
    return v1

    .line 86
    :cond_3f
    const/4 v0, 0x0

    :goto_40
    const/4 v6, 0x7

    if-ge v0, v6, :cond_8b

    .line 87
    iget-byte v6, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    shl-int v7, v5, v0

    and-int/2addr v7, v6

    if-nez v7, :cond_87

    .line 88
    shl-int v1, v5, v0

    int-to-byte v1, v1

    or-int/2addr v1, v6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 89
    if-ne v3, p1, :cond_5a

    .line 90
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/2addr v1, v5

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    goto :goto_64

    .line 91
    :cond_5a
    if-eq v5, p1, :cond_5e

    if-ne v4, p1, :cond_64

    .line 93
    :cond_5e
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/2addr v1, v5

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    .line 94
    :cond_64
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireChannelId, mChannelIdPool "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 86
    :cond_87
    add-int/lit8 v6, v0, 0x1

    int-to-byte v0, v6

    goto :goto_40

    .line 99
    :cond_8b
    return v1
.end method

.method public addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I
    .registers 7
    .param p1, "cId"    # I
    .param p2, "ch"    # Lcom/mediatek/internal/telephony/cat/Channel;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCM-addChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-lez p1, :cond_3d

    .line 186
    :try_start_18
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v0, v2

    .line 187
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x4

    aput v3, v0, v2
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_25} :catch_26

    .line 191
    goto :goto_42

    .line 188
    :catch_26
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException addChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, -0x1

    return v1

    .line 193
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3d
    const-string v0, "No free channel id."

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_42
    return p1
.end method

.method public getBipChannelStatus(I)I
    .registers 4
    .param p1, "cId"    # I

    .line 208
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;
    .registers 5
    .param p1, "cId"    # I

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 201
    :catch_7
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexOutOfBoundsException getChannel cId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreeChannelId()I
    .registers 4

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_12

    .line 67
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_f

    .line 68
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 66
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 71
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public isChannelIdOccupied(I)Z
    .registers 5
    .param p1, "cId"    # I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChannelIdOccupied, mChannelIdPool "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-lez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2
.end method

.method public isClientChannelOpened()Z
    .registers 5

    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_37

    .line 237
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    if-eqz v1, :cond_17

    aget-object v2, v1, v0

    if-eqz v2, :cond_17

    aget-object v1, v1, v0

    iget v1, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_11} :catch_1a

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_17

    .line 241
    const/4 v1, 0x1

    return v1

    .line 236
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :catch_1a
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClientChannelOpened channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[BIP]"

    invoke-static {v3, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 246
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_37
    nop

    .line 247
    :goto_38
    const/4 v1, 0x0

    return v1
.end method

.method public releaseChannelId(I)V
    .registers 8
    .param p1, "cId"    # I

    .line 137
    const-string v0, ":"

    const/4 v1, -0x1

    .line 139
    .local v1, "protocolType":I
    const-string v2, "[BIP]"

    if-lez p1, :cond_e0

    const/4 v3, 0x7

    if-le p1, v3, :cond_c

    goto/16 :goto_e0

    .line 145
    :cond_c
    :try_start_c
    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v4, p1, -0x1

    int-to-byte v4, v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-nez v3, :cond_31

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has been released."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 149
    :cond_31
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_bc

    .line 150
    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    move v1, v3

    .line 156
    const/4 v3, 0x3

    if-ne v3, v1, :cond_4c

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-lez v3, :cond_4c

    .line 158
    sub-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    goto :goto_76

    .line 159
    :cond_4c
    if-eq v5, v1, :cond_51

    const/4 v3, 0x2

    if-ne v3, v1, :cond_5a

    :cond_51
    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-lez v3, :cond_5a

    .line 162
    sub-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_76

    .line 164
    :cond_5a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_76
    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v4, p1, -0x1

    int-to-byte v4, v4

    shl-int v4, v5, v4

    not-int v4, v4

    int-to-byte v4, v4

    and-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",protocolType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",occupied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    goto :goto_df

    .line 152
    :cond_bc
    const-string v3, "channel object is null."

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c1} :catch_c2

    .line 153
    return-void

    .line 173
    :catch_c2
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_df
    return-void

    .line 140
    :cond_e0
    :goto_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, Invalid cid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public releaseChannelId(II)V
    .registers 8
    .param p1, "cId"    # I
    .param p2, "protocolType"    # I

    .line 102
    const-string v0, ":"

    const-string v1, "[BIP]"

    if-lez p1, :cond_ca

    const/4 v2, 0x7

    if-le p1, v2, :cond_b

    goto/16 :goto_ca

    .line 108
    :cond_b
    :try_start_b
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_30

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has been released."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_30
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3c

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-ltz v2, :cond_3c

    .line 115
    sub-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    goto :goto_66

    .line 116
    :cond_3c
    if-eq v4, p2, :cond_41

    const/4 v2, 0x2

    if-ne v2, p2, :cond_4a

    :cond_41
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-ltz v2, :cond_4a

    .line 119
    sub-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_66

    .line 121
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_66
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    shl-int v3, v4, v3

    not-int v3, v3

    int-to-byte v3, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",protocolType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",occupied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_ab} :catch_ac

    .line 133
    goto :goto_c9

    .line 130
    :catch_ac
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_c9
    return-void

    .line 103
    :cond_ca
    :goto_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseChannelId, Invalid cid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public removeChannel(I)I
    .registers 6
    .param p1, "cId"    # I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BCM-removeChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[BIP]"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_16
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(I)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 223
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_27} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_27} :catch_29

    .line 224
    const/4 v0, 0x1

    return v0

    .line 227
    :catch_29
    move-exception v0

    .line 228
    .local v0, "e1":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeChannel channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 225
    .end local v0    # "e1":Ljava/lang/NullPointerException;
    :catch_44
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException removeChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    nop

    .line 230
    :goto_5a
    const/4 v0, 0x0

    return v0
.end method

.method public setBipChannelStatus(II)V
    .registers 6
    .param p1, "cId"    # I
    .param p2, "status"    # I

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v1, p1, -0x1

    aput p2, v0, v1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    .line 216
    goto :goto_1e

    .line 214
    :catch_7
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IndexOutOfBoundsException setBipChannelStatus cId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[BIP]"

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1e
    return-void
.end method

.method public updateBipChannelStatus(II)V
    .registers 7
    .param p1, "cId"    # I
    .param p2, "chStatus"    # I

    .line 251
    const-string v0, "[BIP]"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iput p2, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_a} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_3b

    .line 254
    :catch_b
    move-exception v1

    .line 255
    .local v1, "e1":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBipChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 252
    .end local v1    # "e1":Ljava/lang/NullPointerException;
    :catch_26
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException updateBipChannelStatus cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3b
    nop

    .line 257
    :goto_3c
    return-void
.end method

.method public updateChannelStatus(II)V
    .registers 7
    .param p1, "cId"    # I
    .param p2, "chStatus"    # I

    .line 261
    const-string v0, "[BIP]"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput p2, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_c} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_3d

    .line 264
    :catch_d
    move-exception v1

    .line 265
    .local v1, "e1":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 262
    .end local v1    # "e1":Ljava/lang/NullPointerException;
    :catch_28
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException updateChannelStatus cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3d
    nop

    .line 267
    :goto_3e
    return-void
.end method

.method public updateChannelStatusInfo(II)V
    .registers 7
    .param p1, "cId"    # I
    .param p2, "chStatusInfo"    # I

    .line 270
    const-string v0, "[BIP]"

    :try_start_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/internal/telephony/cat/ChannelStatus;

    iput p2, v1, Lcom/mediatek/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_c} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_3d

    .line 273
    :catch_d
    move-exception v1

    .line 274
    .local v1, "e1":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateChannelStatusInfo id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 271
    .end local v1    # "e1":Ljava/lang/NullPointerException;
    :catch_28
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException updateChannelStatusInfo cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3d
    nop

    .line 276
    :goto_3e
    return-void
.end method
