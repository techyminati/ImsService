.class public abstract Lcom/mediatek/simservs/capability/CapabilitiesType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "CapabilitiesType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"


# instance fields
.field public mActived:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 45
    invoke-direct {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->loadConfiguration()V

    .line 46
    return-void
.end method

.method private loadConfiguration()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "xmlContent":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 57
    return-void

    .line 59
    :cond_7
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 60
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2}, Lorg/xml/sax/InputSource;-><init>()V

    .line 61
    .local v2, "is":Lorg/xml/sax/InputSource;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 64
    const/16 v3, 0x1f4

    :try_start_1e
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_22} :catch_77
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_6d

    .line 73
    .local v3, "doc":Lorg/w3c/dom/Document;
    nop

    .line 74
    invoke-virtual {p0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 76
    .local v4, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_69

    .line 77
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 78
    .local v5, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 79
    .local v6, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-lez v7, :cond_69

    .line 80
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_43
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_69

    .line 81
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 82
    .local v8, "node":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "active"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 83
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/mediatek/simservs/capability/CapabilitiesType;->mActived:Z

    .line 84
    goto :goto_69

    .line 80
    .end local v8    # "node":Lorg/w3c/dom/Node;
    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 89
    .end local v5    # "activeElement":Lorg/w3c/dom/Element;
    .end local v6    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v7    # "i":I
    :cond_69
    :goto_69
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/capability/CapabilitiesType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    .line 90
    return-void

    .line 69
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "currentNode":Lorg/w3c/dom/NodeList;
    :catch_6d
    move-exception v4

    .line 70
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    new-instance v5, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v5, v3}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v5

    .line 65
    .end local v4    # "e":Ljava/io/IOException;
    :catch_77
    move-exception v4

    .line 66
    .local v4, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 68
    new-instance v5, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v5, v3}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v5
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 99
    const-string v0, "active"

    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 101
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_a
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/capability/CapabilitiesType;->getByAttrName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .registers 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 114
    const-string v0, "active"

    if-eqz p1, :cond_a

    .line 115
    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 117
    :cond_a
    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/simservs/capability/CapabilitiesType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_f
    return-void
.end method
