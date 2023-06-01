.class public Lcom/mediatek/xcap/auth/AkaDigestAuth;
.super Ljava/lang/Object;
.source "AkaDigestAuth.java"


# static fields
.field private static final AKA_SPLITTER:Ljava/lang/String; = "-"

.field private static final AKA_VERSION:Ljava/lang/String; = "AKAv"

.field private static final ALGORITHM_NAME_MD5:Ljava/lang/String; = "MD5"

.field private static final ALGORITHM_NAME_MD5_SESS:Ljava/lang/String; = "MD5-sess"

.field private static final ALGORITHM_NAME_UNSPECIFIED:Ljava/lang/String; = ""

.field private static final HEADER_VALUE_FORMAT_WITH_RESPONSE:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\""

.field private static final HEADER_VALUE_FORMAT_WITH_RESPONSE2:Ljava/lang/String; = "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\""

.field private static final HEXADECIMAL:[C

.field private static final ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field private static final QOP_AUTH_BOTH:Ljava/lang/String; = "auth, auth-int"

.field private static final QOP_AUTH_INT_NAME:Ljava/lang/String; = "auth-int"

.field private static final QOP_AUTH_NAME:Ljava/lang/String; = "auth"

.field private static final QOP_UNSPECIFIED:Ljava/lang/String; = ""

.field private static final QUOTE:Ljava/lang/String; = "\""

.field private static final SENLOG:Z

.field private static final SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "AkaDigestAuth"

.field private static final TELDBG:Z

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mAuts:Ljava/lang/String;

.field private mCharSet:Ljava/lang/String;

.field private mCnonce:Ljava/lang/String;

.field private mEntityBody:Ljava/lang/String;

.field mMd5Helper:Ljava/security/MessageDigest;

.field private mMethod:Ljava/lang/String;

.field private mNc:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mOpaque:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mQop:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 30
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->SENLOG:Z

    .line 31
    const-string v0, "persist.vendor.log.tag.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/mediatek/xcap/auth/AkaDigestAuth;->TELDBG:Z

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_22

    sput-object v0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->HEXADECIMAL:[C

    return-void

    nop

    :array_22
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "header"    # Lcom/mediatek/xcap/header/WwwAuthHeader;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "auts"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "nc"    # Ljava/lang/String;
    .param p7, "method"    # Ljava/lang/String;
    .param p8, "content"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->initMd5()V

    .line 118
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    .line 120
    const-string v1, "auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v2, "auth-int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 121
    iput-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    .line 124
    :cond_21
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_30

    .line 125
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    goto :goto_32

    .line 127
    :cond_30
    iput-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    .line 130
    :goto_32
    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    .line 136
    iput-object p5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    .line 137
    iput-object p6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    .line 138
    iput-object p7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->createCNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    .line 140
    iput-object p8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    .line 142
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "auts"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;
    .param p5, "nc"    # Ljava/lang/String;
    .param p6, "qop"    # Ljava/lang/String;
    .param p7, "algorithm"    # Ljava/lang/String;
    .param p8, "realm"    # Ljava/lang/String;
    .param p9, "nonce"    # Ljava/lang/String;
    .param p10, "opaque"    # Ljava/lang/String;
    .param p11, "cnonce"    # Ljava/lang/String;
    .param p12, "method"    # Ljava/lang/String;
    .param p13, "content"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->initMd5()V

    .line 86
    iput-object p6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    .line 87
    iput-object p7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    .line 93
    iput-object p10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    .line 96
    iput-object p12, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    .line 97
    iput-object p11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    .line 98
    iput-object p13, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    .line 101
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "nonce"    # Ljava/lang/String;
    .param p6, "cnonce"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "a1Res":Ljava/lang/String;
    const/4 v1, 0x0

    .line 257
    .local v1, "ha1Result":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/xcap/auth/AkaDigestAuth;->SENLOG:Z

    const-string v3, "run calculateHA1:"

    const-string v4, "AkaDigestAuth"

    const-string v5, "/"

    if-eqz v2, :cond_3e

    sget-boolean v2, Lcom/mediatek/xcap/auth/AkaDigestAuth;->TELDBG:Z

    if-eqz v2, :cond_11

    goto :goto_3e

    .line 261
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/[hidden]/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 258
    :cond_3e
    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_6e
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-nez v2, :cond_ba

    .line 272
    const-string v2, "MD5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto :goto_ba

    .line 278
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "tempStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_100

    .line 273
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_ba
    :goto_ba
    const-string v2, "A = username: relam : password"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "tmpStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a1Res:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v2    # "tmpStr":Ljava/lang/String;
    nop

    .line 283
    :goto_100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v0, :cond_11e

    .line 285
    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_11e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ha1Result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v1
.end method

.method private calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "qop"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "entityBody"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "a2Res":Ljava/lang/String;
    const/4 v1, 0x0

    .line 301
    .local v1, "ha2Result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run calculateHA2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {p3}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Body : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    const-string v3, "AkaDigestAuth"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ":"

    if-nez v2, :cond_92

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v5, "auth"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_92

    .line 306
    :cond_4f
    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v5, "auth-int"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {p0, p4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a2Res:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 305
    :cond_92
    :goto_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_a4
    :goto_a4
    if-eqz v0, :cond_c6

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a2:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0, v0}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ha2Result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v1
.end method

.method private createCNonce()Ljava/lang/String;
    .registers 7

    .line 185
    const-string v0, ""

    .line 187
    .local v0, "cnonce":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "dataStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AkaDigestAuth"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_32
    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v2
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_3c} :catch_3e

    move-object v0, v2

    .line 193
    goto :goto_53

    .line 191
    :catch_3e
    move-exception v2

    .line 192
    .local v2, "ue":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v2    # "ue":Ljava/io/UnsupportedEncodingException;
    :goto_53
    return-object v0
.end method

.method private encode([B)Ljava/lang/String;
    .registers 10
    .param p1, "binaryData"    # [B

    .line 199
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_7
    const/16 v0, 0x20

    new-array v0, v0, [C

    .line 205
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2b

    .line 206
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    .line 207
    .local v3, "low":I
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 208
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lcom/mediatek/xcap/auth/AkaDigestAuth;->HEXADECIMAL:[C

    aget-char v7, v6, v4

    aput-char v7, v0, v5

    .line 209
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 205
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 212
    .end local v2    # "i":I
    :cond_2b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private getBytes(Ljava/lang/String;)[B
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "rawData":[B
    :try_start_1
    const-string v1, "AkaDigestAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBytes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Charset : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCharSet:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-object v0, v1

    .line 337
    goto :goto_31

    .line 335
    :catch_2d
    move-exception v1

    .line 336
    .local v1, "ue":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 338
    .end local v1    # "ue":Ljava/io/UnsupportedEncodingException;
    :goto_31
    return-object v0
.end method

.method private initMd5()V
    .registers 2

    .line 148
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMd5Helper:Ljava/security/MessageDigest;

    .line 149
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_c

    .line 152
    goto :goto_10

    .line 150
    :catch_c
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 153
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_10
    return-void
.end method

.method private md5([B)Ljava/lang/String;
    .registers 6
    .param p1, "input"    # [B

    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, "hRes":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMd5Helper:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 325
    .local v1, "digestRes":[B
    invoke-direct {p0, v1}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AkaDigestAuth"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-object v0
.end method


# virtual methods
.method public calculateRequestDigest()Ljava/lang/String;
    .registers 14

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AkaDigestAuth"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v3, "auth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "response:"

    const-string v4, "rawRes:"

    const-string v5, ":"

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v6, "auth-int"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto/16 :goto_bc

    .line 237
    :cond_35
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 238
    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    iget-object v12, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "ha1":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "ha2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "rawRes":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, v5}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v1    # "ha1":Ljava/lang/String;
    .end local v5    # "rawRes":Ljava/lang/String;
    .end local v6    # "ha2":Ljava/lang/String;
    goto/16 :goto_138

    .line 245
    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported qop value, qop="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_138

    .line 230
    :cond_bc
    :goto_bc
    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mPassword:Ljava/lang/String;

    iget-object v11, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    iget-object v12, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .restart local v1    # "ha1":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mEntityBody:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateHA2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .restart local v6    # "ha2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .restart local v5    # "rawRes":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, v5}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->md5([B)Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "ha1":Ljava/lang/String;
    .end local v5    # "rawRes":Ljava/lang/String;
    .end local v6    # "ha2":Ljava/lang/String;
    nop

    .line 248
    :goto_138
    iput-object v0, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    .line 249
    return-object v0
.end method

.method public createAuthorHeaderValue()Ljava/lang/String;
    .registers 16

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "headerValue":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mOpaque:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x9

    if-eqz v1, :cond_48

    .line 165
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    aput-object v14, v13, v10

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    aput-object v10, v13, v9

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    aput-object v9, v13, v8

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    aput-object v8, v13, v7

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    aput-object v7, v13, v6

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    aput-object v6, v13, v5

    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    aput-object v5, v13, v4

    iget-object v4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    aput-object v4, v13, v3

    aput-object v1, v13, v2

    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    aput-object v1, v13, v11

    const-string v1, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\", opaque=\"%s\""

    invoke-static {v1, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    goto :goto_7a

    .line 169
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUsername:Ljava/lang/String;

    aput-object v12, v11, v10

    iget-object v10, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mRealm:Ljava/lang/String;

    aput-object v10, v11, v9

    iget-object v9, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNonce:Ljava/lang/String;

    aput-object v9, v11, v8

    iget-object v8, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mUri:Ljava/lang/String;

    aput-object v8, v11, v7

    iget-object v7, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mQop:Ljava/lang/String;

    aput-object v7, v11, v6

    iget-object v6, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mNc:Ljava/lang/String;

    aput-object v6, v11, v5

    iget-object v5, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mCnonce:Ljava/lang/String;

    aput-object v5, v11, v4

    iget-object v4, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mResponse:Ljava/lang/String;

    aput-object v4, v11, v3

    iget-object v3, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    aput-object v3, v11, v2

    const-string v2, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", qop=%s, nc=%s, cnonce=\"%s\", response=\"%s\""

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 173
    :goto_7a
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9a

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", algorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_9a
    iget-object v1, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    if-eqz v1, :cond_bf

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_bf

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", auts=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/xcap/auth/AkaDigestAuth;->mAuts:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_bf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
