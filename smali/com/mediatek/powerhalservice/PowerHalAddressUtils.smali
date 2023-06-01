.class public Lcom/mediatek/powerhalservice/PowerHalAddressUtils;
.super Ljava/lang/Object;
.source "PowerHalAddressUtils.java"


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_IPV4_COMPATIBLE_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_FORMAT_IPV4:I = 0x1

.field private static final IP_FORMAT_IPV6:I = 0x2

.field private static final IP_FORMAT_UNKONWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerHalAddressUitls"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    nop

    .line 51
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    nop

    .line 55
    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    .line 57
    nop

    .line 58
    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    nop

    .line 62
    const-string v0, "^::[fF]{4}:(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_IPV4_COMPATIBLE_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static isIPv4Address(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv4MulticastAddress(Ljava/lang/String;)Z
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .line 75
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "items":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1a

    .line 78
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "ipStartValue":I
    const/16 v3, 0xe0

    if-lt v1, v3, :cond_1a

    const/16 v3, 0xef

    if-gt v1, v3, :cond_1a

    .line 82
    const/4 v2, 0x1

    return v2

    .line 85
    .end local v1    # "ipStartValue":I
    :cond_1a
    return v2
.end method

.method public static isIPv4SourceAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "input"    # Ljava/lang/String;

    .line 70
    const-string v0, "0.0.0.0/0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 71
    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "0.0.0.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    nop

    .line 70
    :goto_1b
    return v1
.end method

.method public static isIPv6Address(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6StdAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6HexCompressedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 102
    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6IPv4CompatibleAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 101
    :goto_16
    return v0
.end method

.method public static isIPv6HexCompressedAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_HEX_COMPRESSED_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv6IPv4CompatibleAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_IPV4_COMPATIBLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIPv6SourceAddress(Ljava/lang/String;)Z
    .registers 3
    .param p0, "input"    # Ljava/lang/String;

    .line 106
    const-string v0, "::/0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    return v1
.end method

.method public static isIPv6StdAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->IPV6_STD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIpPairValid(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 10
    .param p0, "src_ip"    # Ljava/lang/String;
    .param p1, "dst_ip"    # Ljava/lang/String;
    .param p2, "src_port"    # I
    .param p3, "dst_port"    # I

    .line 111
    const/4 v0, 0x0

    .local v0, "src_format":I
    const/4 v1, 0x0

    .line 115
    .local v1, "dst_format":I
    const-string v2, ","

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt p2, v3, :cond_d1

    const v5, 0xffff

    if-gt p2, v5, :cond_d1

    if-lt p3, v3, :cond_d1

    if-le p3, v5, :cond_13

    goto/16 :goto_d1

    .line 120
    :cond_13
    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv4SourceAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 121
    const/4 v0, 0x1

    goto :goto_22

    .line 122
    :cond_1b
    invoke-static {p0}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6SourceAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 123
    const/4 v0, 0x2

    .line 129
    :goto_22
    invoke-static {p1}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 130
    const/4 v1, 0x1

    goto :goto_31

    .line 131
    :cond_2a
    invoke-static {p1}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 132
    const/4 v1, 0x2

    .line 139
    :goto_31
    if-eq v0, v1, :cond_4e

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not match:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 141
    return v4

    .line 145
    :cond_4e
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a6

    .line 148
    const-string v3, "127"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "violate: loopback address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 150
    return v4

    .line 154
    :cond_6e
    const-string v3, "255.255.255.255"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_8b

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "violate: broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 156
    return v4

    .line 160
    :cond_8b
    invoke-static {p1}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->isIPv4MulticastAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "violate: multicasting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 162
    return v4

    .line 166
    :cond_a6
    return v2

    .line 134
    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dst unknown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 135
    return v4

    .line 125
    :cond_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src unknown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 126
    return v4

    .line 116
    :cond_d1
    :goto_d1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid port:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/powerhalservice/PowerHalAddressUtils;->logd(Ljava/lang/String;)V

    .line 117
    return v4
.end method

.method private static log(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalAddressUitls"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalAddressUitls"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "info"    # Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerHalAddressUitls"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
