.class public Lcom/mediatek/xcap/client/XcapDebugParam;
.super Ljava/lang/Object;
.source "XcapDebugParam.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XcapDebugParam"

.field private static final TAG_ROOT:Ljava/lang/String; = "DebugParam"

.field private static final TAG_XCAP_AUID:Ljava/lang/String; = "XcapAUID"

.field private static final TAG_XCAP_DISABLE_ETAG:Ljava/lang/String; = "DisableETag"

.field private static final TAG_XCAP_DOCUMENT_NAME:Ljava/lang/String; = "XcapDocumentName"

.field private static final TAG_XCAP_ENABLE_HTTP_LOG:Ljava/lang/String; = "EnableHttpLog"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_QUERY_RESULT:Ljava/lang/String; = "EnablePredefinedSimservQueryResult"

.field private static final TAG_XCAP_ENABLE_PREDEFINED_SIMSERV_SETTING:Ljava/lang/String; = "EnablePredefinedSimservSetting"

.field private static final TAG_XCAP_ENABLE_SIMSERV_QUERY_WHOLE:Ljava/lang/String; = "EnableSimservQueryWhole"

.field private static final TAG_XCAP_ENABLE_TRUST_ALL:Ljava/lang/String; = "EnableXcapTrustAll"

.field private static final TAG_XCAP_HTTP_DIGEST_PASSWORD:Ljava/lang/String; = "HttpDigestPassword"

.field private static final TAG_XCAP_HTTP_DIGEST_USERNAME:Ljava/lang/String; = "HttpDigestUsername"

.field private static final TAG_XCAP_PUT_ELEMENT_MIME:Ljava/lang/String; = "XcapPutElementMime"

.field private static final TAG_XCAP_ROOT:Ljava/lang/String; = "XcapRoot"

.field private static final TAG_XCAP_USER_AGENT:Ljava/lang/String; = "XcapUserAgent"

.field private static final TAG_XCAP_XUI:Ljava/lang/String; = "XcapXui"

.field private static mDisableETag:Z

.field private static mEnableHttpLog:Z

.field private static mEnablePredefinedSimservQueryResult:Z

.field private static mEnablePredefinedSimservSetting:Z

.field private static mEnableSimservQueryWhole:Z

.field private static mEnableXcapTrustAll:Z

.field private static mHttpDigestPassword:Ljava/lang/String;

.field private static mHttpDigestUsername:Ljava/lang/String;

.field private static mXcapAUID:Ljava/lang/String;

.field private static mXcapDocumentName:Ljava/lang/String;

.field private static mXcapPutElementMime:Ljava/lang/String;

.field private static mXcapRoot:Ljava/lang/String;

.field private static mXcapUserAgent:Ljava/lang/String;

.field private static mXcapXui:Ljava/lang/String;

.field private static sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 96
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 97
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 98
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 99
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 103
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;
    .registers 1

    .line 111
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    if-nez v0, :cond_b

    .line 112
    new-instance v0, Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-direct {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;-><init>()V

    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 114
    :cond_b
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->sInstance:Lcom/mediatek/xcap/client/XcapDebugParam;

    return-object v0
.end method

.method private instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 9
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 227
    const-string v0, "XcapDebugParam"

    const-string v1, "instantiateFromXmlNode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 231
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "XcapRoot"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 232
    .local v1, "node":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_23

    .line 233
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 236
    :cond_23
    const-string v2, "XcapUserAgent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 237
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3b

    .line 238
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 241
    :cond_3b
    const-string v2, "XcapXui"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 242
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_53

    .line 243
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 246
    :cond_53
    const-string v2, "HttpDigestUsername"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_6b

    .line 248
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 251
    :cond_6b
    const-string v2, "HttpDigestPassword"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 252
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_83

    .line 253
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 256
    :cond_83
    const-string v2, "EnablePredefinedSimservQueryResult"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 257
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v4, 0x1

    const-string v5, "true"

    if-lez v2, :cond_a7

    .line 258
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 260
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    goto :goto_a7

    .line 262
    :cond_a5
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 266
    .end local v2    # "str":Ljava/lang/String;
    :cond_a7
    :goto_a7
    const-string v2, "EnablePredefinedSimservSetting"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 267
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_c8

    .line 268
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 269
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 270
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    goto :goto_c8

    .line 272
    :cond_c6
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 276
    .end local v2    # "str":Ljava/lang/String;
    :cond_c8
    :goto_c8
    const-string v2, "EnableSimservQueryWhole"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 277
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_e9

    .line 278
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 280
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    goto :goto_e9

    .line 282
    :cond_e7
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 286
    .end local v2    # "str":Ljava/lang/String;
    :cond_e9
    :goto_e9
    const-string v2, "EnableHttpLog"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 287
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_10a

    .line 288
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 289
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 290
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    goto :goto_10a

    .line 292
    :cond_108
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 296
    .end local v2    # "str":Ljava/lang/String;
    :cond_10a
    :goto_10a
    const-string v2, "EnableXcapTrustAll"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_12b

    .line 298
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 299
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 300
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    goto :goto_12b

    .line 302
    :cond_129
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 306
    .end local v2    # "str":Ljava/lang/String;
    :cond_12b
    :goto_12b
    const-string v2, "XcapDocumentName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 307
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_143

    .line 308
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 311
    :cond_143
    const-string v2, "XcapPutElementMime"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_15b

    .line 313
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 316
    :cond_15b
    const-string v2, "XcapAUID"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_173

    .line 318
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 321
    :cond_173
    const-string v2, "DisableETag"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 322
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_194

    .line 323
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_192

    .line 325
    sput-boolean v4, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    goto :goto_194

    .line 327
    :cond_192
    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    .line 331
    .end local v2    # "str":Ljava/lang/String;
    :cond_194
    :goto_194
    return-void
.end method

.method private reset()V
    .registers 4

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 211
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 212
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 213
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    .line 214
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    .line 215
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    .line 216
    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    .line 217
    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 218
    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    .line 219
    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 220
    const-string v2, "simservs.xml"

    sput-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 221
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 222
    sput-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 223
    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    .line 224
    return-void
.end method


# virtual methods
.method public getDisableETag()Z
    .registers 2

    .line 386
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    return v0
.end method

.method public getEnableHttpLog()Z
    .registers 2

    .line 366
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    return v0
.end method

.method public getEnablePredefinedSimservQueryResult()Z
    .registers 2

    .line 354
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    return v0
.end method

.method public getEnablePredefinedSimservSetting()Z
    .registers 2

    .line 358
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    return v0
.end method

.method public getEnableSimservQueryWhole()Z
    .registers 2

    .line 362
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    return v0
.end method

.method public getEnableXcapTrustAll()Z
    .registers 2

    .line 370
    sget-boolean v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    return v0
.end method

.method public getHttpDigestPassword()Ljava/lang/String;
    .registers 2

    .line 350
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpDigestUsername()Ljava/lang/String;
    .registers 2

    .line 346
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapAUID()Ljava/lang/String;
    .registers 2

    .line 382
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapDocumentName()Ljava/lang/String;
    .registers 2

    .line 374
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapPutElementMime()Ljava/lang/String;
    .registers 2

    .line 378
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .registers 2

    .line 334
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapUserAgent()Ljava/lang/String;
    .registers 2

    .line 338
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapXui()Ljava/lang/String;
    .registers 2

    .line 342
    sget-object v0, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    return-object v0
.end method

.method public load()V
    .registers 8

    .line 122
    const-string v0, "XcapDebugParam"

    const-string v1, "XcapDebugParam is loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/mediatek/xcap/client/XcapDebugParam;->readProperty()V

    .line 126
    const-string v0, "/data/misc/xcapconfig.xml"

    invoke-virtual {p0, v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "xmlContent":Ljava/lang/String;
    if-eqz v0, :cond_59

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_59

    .line 132
    :cond_1b
    :try_start_1b
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 133
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 134
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    .line 135
    .local v3, "is":Lorg/xml/sax/InputSource;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 137
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 139
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v5, "DebugParam"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 140
    .local v5, "debugParamNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_57

    .line 141
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/xcap/client/XcapDebugParam;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    :try_end_48
    .catch Lorg/xml/sax/SAXException; {:try_start_1b .. :try_end_48} :catch_53
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_48} :catch_4e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_48} :catch_49

    goto :goto_57

    .line 147
    .end local v1    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "debugParamNode":Lorg/w3c/dom/NodeList;
    :catch_49
    move-exception v1

    .line 148
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_58

    .line 145
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_4e
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_57

    .line 143
    :catch_53
    move-exception v1

    .line 144
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 149
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :cond_57
    :goto_57
    nop

    .line 150
    :goto_58
    return-void

    .line 128
    :cond_59
    :goto_59
    return-void
.end method

.method public readProperty()V
    .registers 7

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "val":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.vendor.xcap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "XcapRoot"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    move-object v3, v0

    goto :goto_28

    :cond_27
    move-object v3, v1

    :goto_28
    sput-object v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "XcapUserAgent"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    move-object v3, v0

    goto :goto_4e

    :cond_4d
    move-object v3, v1

    :goto_4e
    sput-object v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "XcapXui"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    move-object v3, v0

    goto :goto_74

    :cond_73
    move-object v3, v1

    :goto_74
    sput-object v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    .line 185
    const-string v3, "persist.vendor.xcap.simservquerywhole"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v5, "EnableXcapTrustAll"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "XcapDocumentName"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_bd

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_bd

    move-object v3, v0

    goto :goto_be

    :cond_bd
    move-object v3, v1

    :goto_be
    sput-object v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "XcapPutElementMime"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_e3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e3

    move-object v3, v0

    goto :goto_e4

    :cond_e3
    move-object v3, v1

    :goto_e4
    sput-object v3, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "XcapAUID"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_108

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_108

    move-object v1, v0

    :cond_108
    sput-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v2, "DisableETag"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readProperty mXcapRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmXcapUserAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmXcapXui: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmEnableSimservQueryWhole: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nmEnableXcapTrustAll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nmXcapDocumentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmXcapPutElementMime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmXcapAUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nmDisableETag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XcapDebugParam"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "file"    # Ljava/lang/String;

    .line 159
    const-string v0, ""

    .line 162
    .local v0, "text":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "buf":Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_c

    .line 169
    :cond_24
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_29

    .line 172
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "buf":Ljava/lang/String;
    nop

    .line 174
    return-object v0

    .line 170
    :catch_29
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mXcapRoot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmXcapUserAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmXcapXui: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHttpDigestUsername: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHttpDigestPassword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mHttpDigestPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnablePredefinedSimservQueryResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservQueryResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnablePredefinedSimservSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnablePredefinedSimservSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnableSimservQueryWhole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableSimservQueryWhole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnableHttpLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableHttpLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmEnableXcapTrustAll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mEnableXcapTrustAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmXcapDocumentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapDocumentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmXcapPutElementMime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapPutElementMime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmXcapAUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mXcapAUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDisableETag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/mediatek/xcap/client/XcapDebugParam;->mDisableETag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
