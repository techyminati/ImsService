.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field protected static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field protected static final COMMON_POLICY_ALIAS:Ljava/lang/String; = "cp"

.field protected static final COMMON_POLICY_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FALSE_WITH_QUOTE:Ljava/lang/String; = "\"false\""

.field public static final TAG:Ljava/lang/String; = "XcapElement"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final TRUE_WITH_QUOTE:Ljava/lang/String; = "\"true\""

.field protected static final XCAP_ALIAS:Ljava/lang/String; = "ss"

.field protected static final XCAP_NAMESPACE:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

.field protected mEtag:Ljava/lang/String;

.field public mIntendedId:Ljava/lang/String;

.field protected mIsSupportEtag:Z

.field protected mNetwork:Landroid/net/Network;

.field protected mNodeUri:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 69
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIsSupportEtag:Z

    .line 73
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 85
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 86
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v1, "simservs"

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 151
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v1, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 152
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 561
    .local v0, "r":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v1, "total":Ljava/lang/StringBuilder;
    :goto_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_1a

    .line 564
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 566
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .registers 15
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 304
    const-string v0, "\""

    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    .line 306
    .local v1, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_1a

    .line 307
    new-instance v2, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;Landroid/net/Network;I)V

    .local v2, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_27

    .line 309
    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_1a
    new-instance v2, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;I)V

    .line 312
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_27
    const/4 v3, 0x0

    .line 313
    .local v3, "conn":Ljava/net/HttpURLConnection;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2d
    iget-object v5, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v5, :cond_4a

    .line 317
    const-string v5, "X-3GPP-Intended-Identity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_4a
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getDisableETag()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_55

    move v0, v5

    goto :goto_57

    :cond_55
    sget-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    .line 321
    .local v0, "disableETag":Z
    :goto_57
    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_59} :catch_b6
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_59} :catch_ac
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_59} :catch_a7
    .catchall {:try_start_2d .. :try_end_59} :catchall_a5

    const-string v7, "If-Match"

    if-eqz v6, :cond_62

    if-nez v0, :cond_62

    .line 322
    :try_start_5f
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_62
    const/4 v6, 0x0

    .line 326
    .local v6, "success":Z
    const/4 v8, 0x1

    .line 329
    .local v8, "errorRetry":I
    :cond_64
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v9

    move-object v3, v9

    .line 331
    if-eqz v3, :cond_a0

    .line 332
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_73} :catch_b6
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_73} :catch_ac
    .catch Ljava/net/URISyntaxException; {:try_start_5f .. :try_end_73} :catch_a7
    .catchall {:try_start_5f .. :try_end_73} :catchall_a5

    .line 333
    .local v9, "responseCode":I
    const/16 v10, 0xc8

    const-string v11, "info"

    if-ne v9, v10, :cond_8b

    .line 334
    :try_start_79
    const-string v10, "ETag"

    invoke-virtual {v3, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "etagValue":Ljava/lang/String;
    const/4 v6, 0x1

    .line 337
    if-eqz v10, :cond_84

    .line 338
    iput-object v10, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 341
    :cond_84
    const-string v12, "document deleted in xcap server..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    nop

    .end local v10    # "etagValue":Ljava/lang/String;
    goto :goto_a0

    :cond_8b
    const/16 v10, 0x19c

    if-ne v9, v10, :cond_9a

    .line 343
    const-string v10, "412 fail, retry without etag"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    add-int/lit8 v8, v8, 0x1

    goto :goto_a0

    .line 347
    :cond_9a
    new-instance v5, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v5, v9}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attribute":Ljava/lang/String;
    throw v5
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_a0} :catch_b6
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_a0} :catch_ac
    .catch Ljava/net/URISyntaxException; {:try_start_79 .. :try_end_a0} :catch_a7
    .catchall {:try_start_79 .. :try_end_a0} :catchall_a5

    .line 350
    .end local v9    # "responseCode":I
    .restart local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attribute":Ljava/lang/String;
    :cond_a0
    :goto_a0
    if-nez v6, :cond_ba

    if-le v8, v5, :cond_64

    goto :goto_ba

    .line 359
    .end local v0    # "disableETag":Z
    .end local v6    # "success":Z
    .end local v8    # "errorRetry":I
    :catchall_a5
    move-exception v0

    goto :goto_bf

    .line 356
    :catch_a7
    move-exception v0

    .line 357
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_a8
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .end local v0    # "e":Ljava/net/URISyntaxException;
    goto :goto_ba

    .line 353
    :catch_ac
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 355
    new-instance v5, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v5, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    .end local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attribute":Ljava/lang/String;
    throw v5

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attribute":Ljava/lang/String;
    :catch_b6
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_a5

    .line 359
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_ba
    :goto_ba
    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :goto_bf
    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 360
    throw v0
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .registers 7
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 543
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 544
    .local v0, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 545
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 546
    .local v2, "buffer":Ljava/io/StringWriter;
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 549
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 165
    const-string v0, "\""

    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v1

    .line 166
    .local v1, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    const/4 v2, 0x0

    .line 167
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 169
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_1c

    .line 170
    new-instance v4, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;Landroid/net/Network;I)V

    .local v4, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_29

    .line 172
    .end local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_1c
    new-instance v4, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;I)V

    .line 175
    .restart local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_29
    const/4 v5, 0x0

    .line 176
    .local v5, "conn":Ljava/net/HttpURLConnection;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2f
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_4c

    .line 180
    const-string v7, "X-3GPP-Intended-Identity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4c
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getDisableETag()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_58

    :cond_56
    sget-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    .line 184
    .local v0, "disableETag":Z
    :goto_58
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    if-eqz v7, :cond_63

    if-nez v0, :cond_63

    .line 185
    const-string v8, "If-None-Match"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_63
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v7

    move-object v5, v7

    .line 189
    if-eqz v5, :cond_96

    .line 190
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_8b

    .line 191
    const-string v7, "ETag"

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "etagValue":Ljava/lang/String;
    if-eqz v7, :cond_80

    .line 194
    iput-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 197
    :cond_80
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move-object v2, v8

    .line 199
    invoke-virtual {p0, v2}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 200
    .end local v7    # "etagValue":Ljava/lang/String;
    goto :goto_96

    .line 201
    :cond_8b
    const/4 v3, 0x0

    .line 202
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "ret":Ljava/lang/String;
    .end local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attribute":Ljava/lang/String;
    throw v7
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_96} :catch_be
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_96} :catch_b4
    .catch Ljava/net/URISyntaxException; {:try_start_2f .. :try_end_96} :catch_a7
    .catchall {:try_start_2f .. :try_end_96} :catchall_a5

    .line 213
    .end local v0    # "disableETag":Z
    .restart local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attribute":Ljava/lang/String;
    :cond_96
    :goto_96
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 215
    if-eqz v2, :cond_a4

    .line 216
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_a4

    .line 218
    :catch_9f
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_cb

    .line 220
    :cond_a4
    :goto_a4
    goto :goto_cb

    .line 213
    :catchall_a5
    move-exception v0

    goto :goto_cc

    .line 210
    :catch_a7
    move-exception v0

    .line 211
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_a8
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_a5

    .line 213
    .end local v0    # "e":Ljava/net/URISyntaxException;
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 215
    if-eqz v2, :cond_a4

    .line 216
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_9f

    goto :goto_a4

    .line 207
    :catch_b4
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :try_start_b5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    .end local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "ret":Ljava/lang/String;
    .end local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attribute":Ljava/lang/String;
    throw v7

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attribute":Ljava/lang/String;
    :catch_be
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_b5 .. :try_end_c2} :catchall_a5

    .line 213
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 215
    if-eqz v2, :cond_a4

    .line 216
    :try_start_c7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_9f

    goto :goto_a4

    .line 222
    :goto_cb
    return-object v3

    .line 213
    :goto_cc
    invoke-virtual {v4}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 215
    if-eqz v2, :cond_da

    .line 216
    :try_start_d1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_da

    .line 218
    :catch_d5
    move-exception v7

    .line 219
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    .line 220
    .end local v7    # "e":Ljava/io/IOException;
    :cond_da
    :goto_da
    nop

    .line 221
    :goto_db
    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .registers 2

    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v1, "simservs"

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 134
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v1, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 135
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .registers 2

    .line 522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 3

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v0, "pathUri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 512
    :cond_1d
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 22
    .param p1, "xmlErrorTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 599
    const-string v0, "xe:constraint-failure"

    const-string v1, "xe:cannot-insert"

    const-string v2, "constraint-failure"

    const-string v3, "cannot-insert"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 603
    .local v1, "xmlError":[Ljava/lang/String;
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 604
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 605
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 606
    .local v4, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5}, Lorg/xml/sax/InputSource;-><init>()V

    .line 607
    .local v5, "is":Lorg/xml/sax/InputSource;
    new-instance v6, Ljava/io/StringReader;
    :try_end_20
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_20} :catch_be
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_20} :catch_ac
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_20} :catch_9a

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    :try_start_24
    invoke-virtual {v7, v8}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 609
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 611
    .local v6, "doc":Lorg/w3c/dom/Document;
    const/4 v9, 0x0

    .line 612
    .local v9, "currentNode":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .line 614
    .local v10, "textContent":Ljava/lang/String;
    array-length v11, v1

    move v12, v3

    :goto_36
    if-ge v12, v11, :cond_87

    aget-object v13, v1, v12

    .line 615
    .local v13, "tag":Ljava/lang/String;
    invoke-interface {v6, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    move-object v9, v14

    .line 617
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_7d

    .line 618
    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;
    :try_end_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_24 .. :try_end_4b} :catch_96
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4b} :catch_92
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_4b} :catch_8e

    .line 619
    .local v14, "activeElement":Lorg/w3c/dom/Element;
    move-object/from16 v15, p1

    :try_start_4d
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v16

    .line 620
    .local v16, "phrase":Lorg/w3c/dom/Attr;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 621
    const-string v3, "XcapElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v18, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v0, "parse409ErrorMessage:["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4d .. :try_end_74} :catch_7b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_74} :catch_79
    .catch Lorg/xml/sax/SAXException; {:try_start_4d .. :try_end_74} :catch_77

    .line 622
    if-eqz v10, :cond_81

    .line 623
    return-object v10

    .line 633
    .end local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Lorg/xml/sax/InputSource;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v10    # "textContent":Ljava/lang/String;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "activeElement":Lorg/w3c/dom/Element;
    .end local v16    # "phrase":Lorg/w3c/dom/Attr;
    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_77
    move-exception v0

    goto :goto_a1

    .line 630
    :catch_79
    move-exception v0

    goto :goto_b3

    .line 627
    :catch_7b
    move-exception v0

    goto :goto_c5

    .line 617
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "is":Lorg/xml/sax/InputSource;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v10    # "textContent":Ljava/lang/String;
    .restart local v13    # "tag":Ljava/lang/String;
    :cond_7d
    move-object/from16 v15, p1

    move-object/from16 v18, v0

    .line 614
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "tag":Ljava/lang/String;
    .restart local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_81
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    const/4 v3, 0x0

    goto :goto_36

    .end local v18    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_87
    move-object/from16 v15, p1

    move-object/from16 v18, v0

    .line 636
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Lorg/xml/sax/InputSource;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v10    # "textContent":Ljava/lang/String;
    nop

    .line 638
    const/4 v0, 0x0

    return-object v0

    .line 633
    :catch_8e
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_a1

    .line 630
    :catch_92
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_b3

    .line 627
    :catch_96
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_c5

    .line 633
    :catch_9a
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v8, p2

    .line 634
    .local v0, "e":Lorg/xml/sax/SAXException;
    :goto_a1
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 635
    new-instance v2, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v2

    .line 630
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_ac
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v8, p2

    :goto_b3
    const/16 v3, 0x1f4

    .line 631
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 632
    new-instance v2, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v2, v3}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v2

    .line 627
    .end local v0    # "e":Ljava/io/IOException;
    :catch_be
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move-object/from16 v8, p2

    :goto_c5
    const/16 v3, 0x1f4

    .line 628
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 629
    new-instance v2, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v2, v3}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v2
.end method

.method protected readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "file"    # Ljava/lang/String;

    .line 572
    const-string v0, ""

    .line 575
    .local v0, "text":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 577
    .local v1, "dis":Ljava/io/DataInputStream;
    :goto_c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "buf":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 578
    const-string v2, "XcapElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_c

    .line 581
    :cond_3a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3d} :catch_3e

    .line 584
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "buf":Ljava/lang/String;
    goto :goto_42

    .line 582
    :catch_3e
    move-exception v1

    .line 583
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 586
    .end local v1    # "e":Ljava/io/IOException;
    :goto_42
    return-object v0
.end method

.method protected saveContent(Ljava/lang/String;)V
    .registers 18
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 385
    move-object/from16 v1, p0

    const-string v0, "\""

    const/4 v2, 0x0

    .line 386
    .local v2, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v3, 0x0

    .line 387
    .local v3, "conn":Ljava/net/HttpURLConnection;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 391
    .local v5, "is":Ljava/io/InputStream;
    :try_start_c
    new-instance v6, Ljava/net/URI;

    iget-object v7, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 392
    .local v6, "uri":Ljava/net/URI;
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v7

    .line 394
    .local v7, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    iget-object v8, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v8, :cond_2c

    .line 395
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;Landroid/net/Network;I)V

    move-object v2, v8

    .line 397
    goto :goto_3a

    .line 401
    :cond_2c
    new-instance v8, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;I)V

    move-object v2, v8

    .line 404
    :goto_3a
    iget-object v8, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v8, :cond_57

    .line 405
    const-string v8, "X-3GPP-Intended-Identity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_57
    iget-object v0, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getDisableETag()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_63

    :cond_61
    sget-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    :goto_63
    move v9, v0

    .line 409
    .local v9, "disableETag":Z
    iget-object v0, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_66} :catch_189
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_66} :catch_16e
    .catchall {:try_start_c .. :try_end_66} :catchall_169

    const-string v10, "If-Match"

    if-eqz v0, :cond_6f

    if-nez v9, :cond_6f

    .line 410
    :try_start_6c
    invoke-interface {v4, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_6f
    iget-object v0, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservSetting()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "NoReplyTimer"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 415
    const-string v0, "/data/simservs.xml"

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/xcap/XcapElement;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_89} :catch_189
    .catch Ljava/net/URISyntaxException; {:try_start_6c .. :try_end_89} :catch_16e
    .catchall {:try_start_6c .. :try_end_89} :catchall_169

    .line 417
    .local v0, "xMl":Ljava/lang/String;
    if-eqz v0, :cond_8d

    .line 418
    move-object v11, v0

    .end local p1    # "xml":Ljava/lang/String;
    .local v11, "xml":Ljava/lang/String;
    goto :goto_8f

    .line 422
    .end local v0    # "xMl":Ljava/lang/String;
    .end local v11    # "xml":Ljava/lang/String;
    .restart local p1    # "xml":Ljava/lang/String;
    :cond_8d
    move-object/from16 v11, p1

    .end local p1    # "xml":Ljava/lang/String;
    .restart local v11    # "xml":Ljava/lang/String;
    :goto_8f
    const/4 v0, 0x0

    .line 424
    .local v0, "putElementMime":Ljava/lang/String;
    :try_start_90
    iget-object v12, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v12}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_ac

    iget-object v12, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 425
    invoke-virtual {v12}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_ac

    .line 426
    iget-object v12, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v12}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_b6

    .line 428
    :cond_ac
    const-string v12, "xcap.putelcontenttype"

    const-string v13, "application/xcap-el+xml"

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_b4} :catch_167
    .catch Ljava/net/URISyntaxException; {:try_start_90 .. :try_end_b4} :catch_165
    .catchall {:try_start_90 .. :try_end_b4} :catchall_195

    move-object v0, v12

    move-object v12, v0

    .line 432
    .end local v0    # "putElementMime":Ljava/lang/String;
    .local v12, "putElementMime":Ljava/lang/String;
    :goto_b6
    const/4 v0, 0x0

    .line 433
    .local v0, "success":Z
    const/4 v13, 0x1

    move v14, v13

    move-object v13, v3

    move v3, v0

    .line 436
    .end local v0    # "success":Z
    .local v3, "success":Z
    .local v13, "conn":Ljava/net/HttpURLConnection;
    .local v14, "errorRetry":I
    :goto_bb
    :try_start_bb
    invoke-virtual {v2, v6, v12, v11, v4}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    move-object v13, v0

    .line 438
    if-eqz v13, :cond_13f

    .line 439
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c6} :catch_162
    .catch Ljava/net/URISyntaxException; {:try_start_bb .. :try_end_c6} :catch_15f
    .catchall {:try_start_bb .. :try_end_c6} :catchall_15b

    move v15, v0

    .line 440
    .local v15, "responseCode":I
    const/16 v0, 0xc8

    const-string v8, "info"

    if-eq v15, v0, :cond_11c

    const/16 v0, 0xc9

    if-ne v15, v0, :cond_d2

    goto :goto_11c

    .line 449
    :cond_d2
    const/16 v0, 0x19c

    if-ne v15, v0, :cond_e1

    .line 450
    :try_start_d6
    const-string v0, "412 fail, retry without etag"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_de} :catch_162
    .catch Ljava/net/URISyntaxException; {:try_start_d6 .. :try_end_de} :catch_15f
    .catchall {:try_start_d6 .. :try_end_de} :catchall_15b

    .line 452
    add-int/lit8 v14, v14, 0x1

    goto :goto_13f

    .line 453
    :cond_e1
    const/16 v8, 0x199

    if-ne v15, v8, :cond_116

    .line 455
    :try_start_e5
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 456
    if-eqz v5, :cond_106

    const-string v0, "true"

    const-string v10, "xcap.handl409"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 457
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    const-string v10, "phrase"

    invoke-virtual {v1, v10, v5}, Lcom/mediatek/simservs/xcap/XcapElement;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v3    # "success":Z
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "uri":Ljava/net/URI;
    .end local v7    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v9    # "disableETag":Z
    .end local v11    # "xml":Ljava/lang/String;
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "errorRetry":I
    .end local v15    # "responseCode":I
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    throw v0

    .line 459
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v3    # "success":Z
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "uri":Ljava/net/URI;
    .restart local v7    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v9    # "disableETag":Z
    .restart local v11    # "xml":Ljava/lang/String;
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "errorRetry":I
    .restart local v15    # "responseCode":I
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    :cond_106
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v0, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v3    # "success":Z
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "uri":Ljava/net/URI;
    .end local v7    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v9    # "disableETag":Z
    .end local v11    # "xml":Ljava/lang/String;
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "errorRetry":I
    .end local v15    # "responseCode":I
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    throw v0
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_10c} :catch_10c
    .catch Ljava/net/URISyntaxException; {:try_start_e5 .. :try_end_10c} :catch_15f
    .catchall {:try_start_e5 .. :try_end_10c} :catchall_15b

    .line 461
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v3    # "success":Z
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "uri":Ljava/net/URI;
    .restart local v7    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v9    # "disableETag":Z
    .restart local v11    # "xml":Ljava/lang/String;
    .restart local v12    # "putElementMime":Ljava/lang/String;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "errorRetry":I
    .restart local v15    # "responseCode":I
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    :catch_10c
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/IOException;
    :try_start_10d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 463
    new-instance v10, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v10, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v11    # "xml":Ljava/lang/String;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    throw v10

    .line 466
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v11    # "xml":Ljava/lang/String;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    :cond_116
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v0, v15}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v11    # "xml":Ljava/lang/String;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    throw v0

    .line 441
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v11    # "xml":Ljava/lang/String;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    :cond_11c
    :goto_11c
    const-string v0, "ETag"

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "etagValue":Ljava/lang/String;
    const/4 v3, 0x1

    .line 444
    if-eqz v0, :cond_127

    .line 445
    iput-object v0, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 448
    :cond_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v3

    .end local v3    # "success":Z
    .local p1, "success":Z
    const-string v3, "document created in xcap server... etagValue="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_13d} :catch_162
    .catch Ljava/net/URISyntaxException; {:try_start_10d .. :try_end_13d} :catch_15f
    .catchall {:try_start_10d .. :try_end_13d} :catchall_15b

    .line 449
    move/from16 v3, p1

    .line 469
    .end local v0    # "etagValue":Ljava/lang/String;
    .end local v15    # "responseCode":I
    .end local p1    # "success":Z
    .restart local v3    # "success":Z
    :cond_13f
    :goto_13f
    if-nez v3, :cond_149

    const/4 v0, 0x1

    if-le v14, v0, :cond_145

    goto :goto_149

    :cond_145
    move-object/from16 v1, p0

    goto/16 :goto_bb

    .line 476
    .end local v3    # "success":Z
    .end local v6    # "uri":Ljava/net/URI;
    .end local v7    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v9    # "disableETag":Z
    .end local v12    # "putElementMime":Ljava/lang/String;
    .end local v14    # "errorRetry":I
    :cond_149
    :goto_149
    nop

    .line 477
    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 480
    if-eqz v5, :cond_15a

    .line 481
    :try_start_14f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_15a

    .line 483
    :catch_153
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 484
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_188

    .line 485
    :cond_15a
    :goto_15a
    goto :goto_188

    .line 476
    :catchall_15b
    move-exception v0

    move-object v1, v0

    move-object v3, v13

    goto :goto_197

    .line 473
    :catch_15f
    move-exception v0

    move-object v3, v13

    goto :goto_171

    .line 470
    :catch_162
    move-exception v0

    move-object v3, v13

    goto :goto_18c

    .line 473
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .local v3, "conn":Ljava/net/HttpURLConnection;
    :catch_165
    move-exception v0

    goto :goto_171

    .line 470
    :catch_167
    move-exception v0

    goto :goto_18c

    .line 476
    .end local v11    # "xml":Ljava/lang/String;
    .local p1, "xml":Ljava/lang/String;
    :catchall_169
    move-exception v0

    move-object/from16 v11, p1

    move-object v1, v0

    goto :goto_197

    .line 473
    :catch_16e
    move-exception v0

    move-object/from16 v11, p1

    .line 474
    .end local p1    # "xml":Ljava/lang/String;
    .local v0, "e":Ljava/net/URISyntaxException;
    .restart local v11    # "xml":Ljava/lang/String;
    :goto_171
    :try_start_171
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_195

    .line 476
    .end local v0    # "e":Ljava/net/URISyntaxException;
    if-eqz v2, :cond_179

    .line 477
    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 480
    :cond_179
    if-eqz v5, :cond_186

    .line 481
    :try_start_17b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_17f

    goto :goto_186

    .line 483
    :catch_17f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 484
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 486
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_187

    .line 485
    :cond_186
    :goto_186
    nop

    .line 487
    :goto_187
    move-object v13, v3

    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v13    # "conn":Ljava/net/HttpURLConnection;
    :goto_188
    return-void

    .line 470
    .end local v11    # "xml":Ljava/lang/String;
    .end local v13    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local p1    # "xml":Ljava/lang/String;
    :catch_189
    move-exception v0

    move-object/from16 v11, p1

    .line 471
    .end local p1    # "xml":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v11    # "xml":Ljava/lang/String;
    :goto_18c
    :try_start_18c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 472
    new-instance v1, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v1, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    .end local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v11    # "xml":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    throw v1
    :try_end_195
    .catchall {:try_start_18c .. :try_end_195} :catchall_195

    .line 476
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v11    # "xml":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    :catchall_195
    move-exception v0

    move-object v1, v0

    :goto_197
    if-eqz v2, :cond_19c

    .line 477
    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 480
    :cond_19c
    if-eqz v5, :cond_1a9

    .line 481
    :try_start_19e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1a9

    .line 483
    :catch_1a2
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 484
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1aa

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1a9
    :goto_1a9
    nop

    .line 486
    :goto_1aa
    throw v1
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 235
    move-object/from16 v1, p0

    const-string v0, "\""

    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v2

    .line 237
    .local v2, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    iget-object v3, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1c

    .line 238
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;Landroid/net/Network;I)V

    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_29

    .line 240
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_1c
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;I)V

    .line 243
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_29
    const/4 v4, 0x0

    .line 244
    .local v4, "conn":Ljava/net/HttpURLConnection;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_2f
    iget-object v6, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v6, :cond_4c

    .line 248
    const-string v6, "X-3GPP-Intended-Identity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4c
    iget-object v0, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getDisableETag()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_57

    move v0, v6

    goto :goto_59

    :cond_57
    sget-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    .line 252
    .local v0, "disableETag":Z
    :goto_59
    iget-object v7, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_5b} :catch_db
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5b} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_2f .. :try_end_5b} :catch_c8
    .catchall {:try_start_2f .. :try_end_5b} :catchall_c4

    const-string v8, "If-Match"

    if-eqz v7, :cond_64

    if-nez v0, :cond_64

    .line 253
    :try_start_61
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_64
    const/4 v7, 0x0

    .line 257
    .local v7, "success":Z
    const/4 v9, 0x0

    .line 260
    .local v9, "errorRetry":I
    :cond_66
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    const-string v11, "application/xcap-att+xml"
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_6c} :catch_db
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6c} :catch_cf
    .catch Ljava/net/URISyntaxException; {:try_start_61 .. :try_end_6c} :catch_c8
    .catchall {:try_start_61 .. :try_end_6c} :catchall_c4

    move-object/from16 v12, p2

    :try_start_6e
    invoke-virtual {v3, v10, v11, v12, v5}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v10

    move-object v4, v10

    .line 263
    if-eqz v4, :cond_b9

    .line 264
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_79} :catch_c2
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_79} :catch_c0
    .catch Ljava/net/URISyntaxException; {:try_start_6e .. :try_end_79} :catch_be
    .catchall {:try_start_6e .. :try_end_79} :catchall_e6

    .line 265
    .local v10, "responseCode":I
    const/16 v11, 0xc8

    const-string v13, "info"

    if-eq v10, v11, :cond_99

    const/16 v11, 0xc9

    if-ne v10, v11, :cond_84

    goto :goto_99

    .line 274
    :cond_84
    const/16 v11, 0x19c

    if-ne v10, v11, :cond_93

    .line 275
    :try_start_88
    const-string v11, "412 fail, retry without etag"

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    .line 279
    :cond_93
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v6, v10}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attrName":Ljava/lang/String;
    .end local p2    # "attrValue":Ljava/lang/String;
    throw v6

    .line 266
    .restart local v2    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attrName":Ljava/lang/String;
    .restart local p2    # "attrValue":Ljava/lang/String;
    :cond_99
    :goto_99
    const-string v11, "ETag"

    invoke-virtual {v4, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "etagValue":Ljava/lang/String;
    const/4 v7, 0x1

    .line 269
    if-eqz v11, :cond_a4

    .line 270
    iput-object v11, v1, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 273
    :cond_a4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "document created in xcap server... etagValue="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_b8} :catch_c2
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_b8} :catch_c0
    .catch Ljava/net/URISyntaxException; {:try_start_88 .. :try_end_b8} :catch_be
    .catchall {:try_start_88 .. :try_end_b8} :catchall_e6

    .line 274
    nop

    .line 282
    .end local v10    # "responseCode":I
    .end local v11    # "etagValue":Ljava/lang/String;
    :cond_b9
    :goto_b9
    if-nez v7, :cond_e1

    if-le v9, v6, :cond_66

    goto :goto_e1

    .line 288
    .end local v0    # "disableETag":Z
    .end local v7    # "success":Z
    .end local v9    # "errorRetry":I
    :catch_be
    move-exception v0

    goto :goto_cb

    .line 285
    :catch_c0
    move-exception v0

    goto :goto_d2

    .line 283
    :catch_c2
    move-exception v0

    goto :goto_de

    .line 291
    :catchall_c4
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_e7

    .line 288
    :catch_c8
    move-exception v0

    move-object/from16 v12, p2

    .line 289
    .local v0, "e":Ljava/net/URISyntaxException;
    :goto_cb
    :try_start_cb
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .end local v0    # "e":Ljava/net/URISyntaxException;
    goto :goto_e1

    .line 285
    :catch_cf
    move-exception v0

    move-object/from16 v12, p2

    .line 286
    .local v0, "e":Ljava/io/IOException;
    :goto_d2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    new-instance v6, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v6, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    .end local v2    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .end local p1    # "attrName":Ljava/lang/String;
    .end local p2    # "attrValue":Ljava/lang/String;
    throw v6

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/XcapElement;
    .restart local p1    # "attrName":Ljava/lang/String;
    .restart local p2    # "attrValue":Ljava/lang/String;
    :catch_db
    move-exception v0

    move-object/from16 v12, p2

    .line 284
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_de
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_e1
    .catchall {:try_start_cb .. :try_end_e1} :catchall_e6

    .line 291
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e1
    :goto_e1
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_e6
    move-exception v0

    :goto_e7
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 292
    throw v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 372
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->saveContent(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_d} :catch_e

    .line 375
    goto :goto_12

    .line 373
    :catch_e
    move-exception v0

    .line 374
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 376
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_12
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2
    .param p1, "etag"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mEtag:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 96
    if-eqz p1, :cond_1a

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XCAP dedicated network netid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapElement"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    .line 100
    :cond_1a
    return-void
.end method
