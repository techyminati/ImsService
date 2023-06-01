.class public Lcom/mediatek/xcap/header/WwwAuthHeader;
.super Ljava/lang/Object;
.source "WwwAuthHeader.java"


# static fields
.field private static final ALGO:Ljava/lang/String; = "algorithm"

.field private static final DIGEST_SCHEME:Ljava/lang/String; = "Digest"

.field private static final NONCE:Ljava/lang/String; = "nonce"

.field private static final OPAQUE:Ljava/lang/String; = "opaque"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field private static final QOP:Ljava/lang/String; = "qop"

.field private static final QOP_AUTH:Ljava/lang/String; = "auth"

.field private static final QOP_AUTH_INT:Ljava/lang/String; = "auth-int"

.field private static final REALM:Ljava/lang/String; = "realm"

.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "WwwAuthenticateHeader"

.field private static final TELDBG:Z


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mOpaque:Ljava/lang/String;

.field private mQop:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mSchemeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    .line 22
    const-string v0, "persist.vendor.log.tag.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    sput-boolean v1, Lcom/mediatek/xcap/header/WwwAuthHeader;->TELDBG:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "schemeName"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "qop"    # Ljava/lang/String;
    .param p6, "opaque"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;
    .registers 25
    .param p0, "headerValue"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "obj":Lcom/mediatek/xcap/header/WwwAuthHeader;
    move-object/from16 v1, p0

    .line 122
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "pos":I
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_12d

    .line 124
    move v3, v2

    .line 125
    .local v3, "tokenStart":I
    const-string v4, " "

    invoke-static {v1, v2, v4}, Lcom/mediatek/xcap/header/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 127
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "scheme":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/xcap/header/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 131
    .local v12, "rest":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 133
    const/4 v5, 0x0

    .line 134
    .local v5, "realm":Ljava/lang/String;
    const/4 v6, 0x0

    .line 135
    .local v6, "domain":Ljava/lang/String;
    const/4 v7, 0x0

    .line 136
    .local v7, "nonce":Ljava/lang/String;
    const/4 v8, 0x0

    .line 137
    .local v8, "algo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 138
    .local v9, "stale":Ljava/lang/String;
    const/4 v10, 0x0

    .line 139
    .local v10, "qop":Ljava/lang/String;
    const/4 v11, 0x0

    .line 141
    .local v11, "opaque":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, "fields":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 143
    .local v14, "i":I
    array-length v15, v13

    move-object/from16 v16, v1

    .end local v1    # "value":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move v11, v14

    move-object v14, v5

    move v5, v1

    .end local v5    # "realm":Ljava/lang/String;
    .end local v6    # "domain":Ljava/lang/String;
    .end local v7    # "nonce":Ljava/lang/String;
    .end local v8    # "algo":Ljava/lang/String;
    .end local v9    # "stale":Ljava/lang/String;
    .end local v10    # "qop":Ljava/lang/String;
    .local v11, "i":I
    .local v14, "realm":Ljava/lang/String;
    .local v17, "domain":Ljava/lang/String;
    .local v18, "nonce":Ljava/lang/String;
    .local v19, "algo":Ljava/lang/String;
    .local v20, "stale":Ljava/lang/String;
    .local v21, "qop":Ljava/lang/String;
    .local v22, "opaque":Ljava/lang/String;
    :goto_47
    if-ge v5, v15, :cond_117

    aget-object v6, v13, v5

    .line 144
    .local v6, "field":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "field["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    if-nez v9, :cond_65

    move-object v9, v6

    goto :goto_67

    :cond_65
    const-string v9, "[hidden]"

    :goto_67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "keyValue":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_99

    .line 147
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No support:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    add-int/lit8 v11, v11, 0x1

    .line 149
    goto/16 :goto_113

    .line 152
    :cond_99
    aget-object v8, v7, v1

    .line 154
    .local v8, "key":Ljava/lang/String;
    array-length v10, v7

    const/16 v23, 0x1

    if-le v10, v9, :cond_af

    .line 155
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "kv":Ljava/lang/String;
    goto :goto_b1

    .line 157
    .end local v9    # "kv":Ljava/lang/String;
    :cond_af
    aget-object v9, v7, v23

    .line 160
    .restart local v9    # "kv":Ljava/lang/String;
    :goto_b1
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_bd

    .line 161
    invoke-static {v9, v8, v1}, Lcom/mediatek/xcap/header/HeaderParser;->getQuoteString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 164
    :cond_bd
    const-string v10, "realm"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 165
    move-object v14, v9

    goto :goto_111

    .line 166
    :cond_c7
    const-string v10, "uri"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d0

    goto :goto_111

    .line 167
    :cond_d0
    const-string v10, "algorithm"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_db

    .line 168
    move-object/from16 v19, v9

    goto :goto_111

    .line 169
    :cond_db
    const-string v10, "domain"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 170
    move-object/from16 v17, v9

    goto :goto_111

    .line 171
    :cond_e6
    const-string v10, "nonce"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 172
    move-object/from16 v18, v9

    goto :goto_111

    .line 173
    :cond_f1
    const-string v10, "stale"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fc

    .line 174
    move-object/from16 v20, v9

    goto :goto_111

    .line 175
    :cond_fc
    const-string v10, "qop"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    .line 176
    move-object/from16 v21, v9

    goto :goto_111

    .line 177
    :cond_107
    const-string v10, "opaque"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_111

    .line 178
    move-object/from16 v22, v9

    .line 180
    :cond_111
    :goto_111
    add-int/lit8 v11, v11, 0x1

    .line 143
    .end local v6    # "field":Ljava/lang/String;
    .end local v7    # "keyValue":[Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "kv":Ljava/lang/String;
    :goto_113
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_47

    .line 182
    :cond_117
    new-instance v1, Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-object v5, v1

    move-object v6, v4

    move-object v7, v14

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v21

    move v15, v11

    .end local v11    # "i":I
    .local v15, "i":I
    move-object/from16 v11, v22

    invoke-direct/range {v5 .. v11}, Lcom/mediatek/xcap/header/WwwAuthHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 183
    .end local v3    # "tokenStart":I
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v12    # "rest":Ljava/lang/String;
    .end local v13    # "fields":[Ljava/lang/String;
    .end local v14    # "realm":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "domain":Ljava/lang/String;
    .end local v18    # "nonce":Ljava/lang/String;
    .end local v19    # "algo":Ljava/lang/String;
    .end local v20    # "stale":Ljava/lang/String;
    .end local v21    # "qop":Ljava/lang/String;
    .end local v22    # "opaque":Ljava/lang/String;
    move-object/from16 v1, v16

    goto/16 :goto_4

    .line 185
    .end local v16    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_12d
    move-object/from16 v16, v1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WwwAuthenticateHeader"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .registers 2
    .param p1, "nonce"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .registers 2
    .param p1, "opaque"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setQop(Ljava/lang/String;)V
    .registers 2
    .param p1, "qop"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .registers 2
    .param p1, "realm"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .registers 2
    .param p1, "schemeName"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WwwAuthHeader [realm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/header/WwwAuthHeader;->SENLOG:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mRealm:Ljava/lang/String;

    goto :goto_13

    :cond_11
    const-string v1, "[hidden]"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", schema name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mSchemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mQop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/header/WwwAuthHeader;->mOpaque:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
