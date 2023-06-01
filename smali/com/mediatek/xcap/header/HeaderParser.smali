.class public final Lcom/mediatek/xcap/header/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# static fields
.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "XcapHeaderParser"

.field private static final TELDBG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/header/HeaderParser;->SENLOG:Z

    .line 35
    const-string v0, "persist.vendor.log.tag.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/mediatek/xcap/header/HeaderParser;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static getQuoteString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 102
    const-string v0, "\""

    invoke-static {p0, p2, v0}, Lcom/mediatek/xcap/header/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 103
    .local v1, "posStart":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, v2, v0}, Lcom/mediatek/xcap/header/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "posEnd":I
    const-string v2, ""

    .line 107
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XcapHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3c

    const-string v3, ""

    return-object v3

    .line 110
    :cond_3c
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/mediatek/xcap/header/HeaderParser;->SENLOG:Z

    if-nez v5, :cond_53

    move-object v5, v2

    goto :goto_55

    :cond_53
    const-string v5, "[hidden]"

    :goto_55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v2
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    .line 81
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 82
    const v2, 0x7fffffff

    return v2

    .line 83
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 84
    const/4 v2, 0x0

    return v2

    .line 86
    :cond_17
    long-to-int v2, v0

    return v2

    .line 88
    .end local v0    # "seconds":J
    :catch_19
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 49
    goto :goto_15

    .line 47
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 52
    :cond_15
    :goto_15
    return p1
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 66
    goto :goto_16

    .line 63
    .end local v0    # "c":C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 69
    :cond_16
    :goto_16
    return p1
.end method
