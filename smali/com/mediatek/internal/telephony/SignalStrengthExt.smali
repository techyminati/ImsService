.class public Lcom/mediatek/internal/telephony/SignalStrengthExt;
.super Ljava/lang/Object;
.source "SignalStrengthExt.java"

# interfaces
.implements Lmediatek/telephony/ISignalStrengthExt;


# static fields
.field private static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "SignalStrengthExt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 171
    const-string v0, "SignalStrengthExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;

    .line 176
    const-string v0, "SignalStrengthExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method


# virtual methods
.method public mapLteSignalLevel(III)I
    .registers 10
    .param p1, "mLteRsrp"    # I
    .param p2, "mLteRssnr"    # I
    .param p3, "mLteSignalStrength"    # I

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "rssiIconLevel":I
    const/4 v1, -0x1

    .line 96
    .local v1, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 98
    .local v2, "snrIconLevel":I
    const/16 v3, -0x2c

    if-le p1, v3, :cond_9

    .line 99
    const/4 v1, -0x1

    goto :goto_26

    .line 100
    :cond_9
    const/16 v3, -0x55

    if-lt p1, v3, :cond_f

    .line 101
    const/4 v1, 0x4

    goto :goto_26

    .line 102
    :cond_f
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_15

    .line 103
    const/4 v1, 0x3

    goto :goto_26

    .line 104
    :cond_15
    const/16 v3, -0x69

    if-lt p1, v3, :cond_1b

    .line 105
    const/4 v1, 0x2

    goto :goto_26

    .line 106
    :cond_1b
    const/16 v3, -0x73

    if-lt p1, v3, :cond_21

    .line 107
    const/4 v1, 0x1

    goto :goto_26

    .line 108
    :cond_21
    const/16 v3, -0x8c

    if-lt p1, v3, :cond_26

    .line 109
    const/4 v1, 0x0

    .line 118
    :cond_26
    :goto_26
    const/16 v3, 0x12c

    if-le p2, v3, :cond_2c

    .line 119
    const/4 v2, -0x1

    goto :goto_49

    .line 120
    :cond_2c
    const/16 v3, 0x82

    if-lt p2, v3, :cond_32

    .line 121
    const/4 v2, 0x4

    goto :goto_49

    .line 122
    :cond_32
    const/16 v3, 0x2d

    if-lt p2, v3, :cond_38

    .line 123
    const/4 v2, 0x3

    goto :goto_49

    .line 124
    :cond_38
    const/16 v3, 0xa

    if-lt p2, v3, :cond_3e

    .line 125
    const/4 v2, 0x2

    goto :goto_49

    .line 126
    :cond_3e
    const/16 v3, -0x1e

    if-lt p2, v3, :cond_44

    .line 127
    const/4 v2, 0x1

    goto :goto_49

    .line 128
    :cond_44
    const/16 v3, -0xc8

    if-lt p2, v3, :cond_49

    .line 129
    const/4 v2, 0x0

    .line 131
    :cond_49
    :goto_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " snrIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SignalStrengthExt"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, -0x1

    if-eq v2, v3, :cond_82

    if-eq v1, v3, :cond_82

    .line 141
    if-ge v1, v2, :cond_80

    move v3, v1

    goto :goto_81

    :cond_80
    move v3, v2

    :goto_81
    return v3

    .line 144
    :cond_82
    if-eq v2, v3, :cond_85

    .line 145
    return v2

    .line 148
    :cond_85
    if-eq v1, v3, :cond_88

    .line 149
    return v1

    .line 153
    :cond_88
    const/16 v3, 0x3f

    if-le p3, v3, :cond_8e

    .line 154
    const/4 v0, 0x0

    goto :goto_a2

    .line 155
    :cond_8e
    const/16 v3, 0xc

    if-lt p3, v3, :cond_94

    .line 156
    const/4 v0, 0x4

    goto :goto_a2

    .line 157
    :cond_94
    const/16 v3, 0x8

    if-lt p3, v3, :cond_9a

    .line 158
    const/4 v0, 0x3

    goto :goto_a2

    .line 159
    :cond_9a
    const/4 v3, 0x5

    if-lt p3, v3, :cond_9f

    .line 160
    const/4 v0, 0x2

    goto :goto_a2

    .line 161
    :cond_9f
    if-ltz p3, :cond_a2

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_a2
    :goto_a2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLTELevel - rssi:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rssiIconLevel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0
.end method

.method public mapUmtsSignalLevel(II)I
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "UmtsRscp"    # I

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "isTdd3G":Z
    const/4 v1, 0x0

    .line 66
    .local v1, "level":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapUmtsSignalLevel, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/SignalStrengthExt;->log(Ljava/lang/String;)V

    .line 69
    const/16 v2, -0x19

    if-gt p2, v2, :cond_3a

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_20

    goto :goto_3a

    .line 71
    :cond_20
    const/16 v2, -0x48

    if-lt p2, v2, :cond_26

    .line 72
    const/4 v1, 0x4

    goto :goto_3b

    .line 73
    :cond_26
    const/16 v2, -0x58

    if-lt p2, v2, :cond_2c

    .line 74
    const/4 v1, 0x3

    goto :goto_3b

    .line 75
    :cond_2c
    const/16 v2, -0x68

    if-lt p2, v2, :cond_32

    .line 76
    const/4 v1, 0x2

    goto :goto_3b

    .line 77
    :cond_32
    const/16 v2, -0x78

    if-lt p2, v2, :cond_38

    .line 78
    const/4 v1, 0x1

    goto :goto_3b

    .line 80
    :cond_38
    const/4 v1, 0x0

    goto :goto_3b

    .line 70
    :cond_3a
    :goto_3a
    const/4 v1, 0x0

    .line 81
    :goto_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapUmtsSignalLevel, level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/SignalStrengthExt;->log(Ljava/lang/String;)V

    .line 82
    return v1
.end method
