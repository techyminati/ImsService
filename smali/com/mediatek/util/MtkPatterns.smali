.class public Lcom/mediatek/util/MtkPatterns;
.super Ljava/lang/Object;
.source "MtkPatterns.java"


# static fields
.field public static final KEY_URLDATA_END:Ljava/lang/String; = "end"

.field public static final KEY_URLDATA_START:Ljava/lang/String; = "start"

.field public static final KEY_URLDATA_VALUE:Ljava/lang/String; = "value"

.field private static final MTK_WEB_PROTOCOL_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtkPatterns"

.field private static final mBadEndRemovingRegex:Ljava/lang/String;

.field private static final mBadFrontRemovingRegex:Ljava/lang/String;

.field private static final mValidCharRegex:Ljava/lang/String; = "a-zA-Z0-9\\-_"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 53
    const-string v0, "http://"

    const-string v1, "https://"

    const-string v2, "rtsp://"

    const-string v3, "ftp://"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/util/MtkPatterns;->MTK_WEB_PROTOCOL_NAMES:[Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "a-zA-Z0-9\\-_"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v5, "(^[^.]*[^%s.://#&=]+)(?:[a-zA-Z]+://|[%s]+.)"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/util/MtkPatterns;->mBadFrontRemovingRegex:Ljava/lang/String;

    .line 78
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v0

    const-string v0, "([\\.\\:][%s)]+[/%s]*)([\\.\\:]?[^%s\\.\\:\\s/]+[^\\.=&%%/]*$)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/util/MtkPatterns;->mBadEndRemovingRegex:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMtkWebUrlPattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .registers 2
    .param p0, "defaultPattern"    # Ljava/util/regex/Pattern;

    .line 146
    move-object v0, p0

    .line 148
    .local v0, "ret":Ljava/util/regex/Pattern;
    sget-object v0, Lcom/mediatek/util/ChinaPatterns;->CHINA_AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    .line 149
    return-object v0
.end method

.method public static getWebProtocolNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "defaultProtocols"    # [Ljava/lang/String;

    .line 62
    move-object v0, p0

    .line 63
    .local v0, "protocols":[Ljava/lang/String;
    sget-object v0, Lcom/mediatek/util/MtkPatterns;->MTK_WEB_PROTOCOL_NAMES:[Ljava/lang/String;

    .line 64
    return-object v0
.end method

.method public static getWebUrl(Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 10
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebUrl,  start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@M_MtkPatterns"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p0, :cond_58

    .line 120
    sget-object v0, Lcom/mediatek/util/MtkPatterns;->mBadFrontRemovingRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 121
    .local v1, "p1":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 122
    .local v2, "m1":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_3d

    .line 123
    const/4 v3, 0x1

    invoke-static {v0, p0, v3, v4}, Lcom/mediatek/util/MtkPatterns;->replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int p1, p2, v0

    .line 127
    :cond_3d
    sget-object v0, Lcom/mediatek/util/MtkPatterns;->mBadEndRemovingRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 128
    .local v3, "p2":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 129
    .local v5, "m2":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 130
    const/4 v6, 0x2

    invoke-static {v0, p0, v6, v4}, Lcom/mediatek/util/MtkPatterns;->replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int p2, p1, v0

    .line 135
    .end local v1    # "p1":Ljava/util/regex/Pattern;
    .end local v2    # "m1":Ljava/util/regex/Matcher;
    .end local v3    # "p2":Ljava/util/regex/Pattern;
    .end local v5    # "m2":Ljava/util/regex/Matcher;
    :cond_58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "end"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    return-object v0
.end method

.method private static final replaceGroup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "groupToReplace"    # I
    .param p3, "groupOccurrence"    # I
    .param p4, "replacement"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 101
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p3, :cond_15

    .line 102
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_12

    .line 103
    return-object p1

    .line 101
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 106
    .end local v1    # "i":I
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, p4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    return-object v1
.end method

.method private static final replaceGroup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "regex"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "groupToReplace"    # I
    .param p3, "replacement"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/mediatek/util/MtkPatterns;->replaceGroup(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
