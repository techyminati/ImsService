.class public abstract Lcom/mediatek/simservs/client/SimservType;
.super Lcom/mediatek/simservs/xcap/InquireType;
.source "SimservType.java"


# static fields
.field static final ATT_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG:Ljava/lang/String; = "SimservType"


# instance fields
.field public mActived:Z

.field protected mHasXcapNS:Z

.field protected mPrefix:Ljava/lang/String;

.field mSsTc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/InquireType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mPrefix:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mHasXcapNS:Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Xcap debug params: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v1}, Lcom/mediatek/xcap/client/XcapDebugParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimservType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method


# virtual methods
.method public abstract initServiceInstance(Lorg/w3c/dom/Document;)V
.end method

.method public isActive()Z
    .registers 2

    .line 200
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    return v0
.end method

.method public isSupportEtag()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/SimservType;->mIsSupportEtag:Z

    return v0
.end method

.method protected loadConfiguration()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 82
    move-object/from16 v1, p0

    const-string v0, ""

    .line 83
    .local v0, "xmlContent":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "nodeName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadConfiguration():nodeName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimservType"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservQueryResult()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 88
    const-string v3, "/data/ss.xml"

    invoke-virtual {v1, v3}, Lcom/mediatek/simservs/client/SimservType;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadConfiguration():fail to get tested xml for nodeName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 96
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadConfiguration():get tested xml for nodeName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    goto :goto_64

    .line 101
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getContent()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 104
    .end local v0    # "xmlContent":Ljava/lang/String;
    .local v3, "xmlContent":Ljava/lang/String;
    :goto_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlContent="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v3, :cond_286

    .line 107
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 108
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 109
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 110
    .local v7, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    move-object v8, v0

    .line 111
    .local v8, "is":Lorg/xml/sax/InputSource;
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 114
    const/16 v9, 0x1f4

    const/4 v10, 0x0

    :try_start_9b
    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_9f
    .catch Lorg/xml/sax/SAXException; {:try_start_9b .. :try_end_9f} :catch_ac
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9f} :catch_a0

    .line 135
    .local v0, "doc":Lorg/w3c/dom/Document;
    :goto_9f
    goto :goto_c8

    .line 131
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    :catch_a0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v9}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ac
    move-exception v0

    move-object v11, v0

    .line 116
    .local v11, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v5, v10}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 117
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 118
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    move-object v8, v0

    .line 119
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 121
    :try_start_c3
    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_c7
    .catch Lorg/xml/sax/SAXException; {:try_start_c3 .. :try_end_c7} :catch_27a
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c7} :catch_26e

    .line 130
    .local v0, "doc":Lorg/w3c/dom/Document;
    goto :goto_9f

    .line 136
    .end local v11    # "e":Lorg/xml/sax/SAXException;
    :goto_c8
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 137
    .local v9, "currentNode":Lorg/w3c/dom/NodeList;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getNodeName()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    const-string v12, "Got "

    const-string v13, "true"

    const-string v14, "active"

    const-string v15, "loadConfiguration"

    if-lez v11, :cond_152

    .line 140
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 141
    .local v6, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 142
    .local v11, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/mediatek/simservs/client/SimservType;->mPrefix:Ljava/lang/String;

    .line 143
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/mediatek/simservs/client/SimservType;->mHasXcapNS:Z

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_150

    .line 146
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12e
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    if-ge v10, v12, :cond_150

    .line 147
    invoke-interface {v11, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 148
    .local v12, "node":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14d

    .line 149
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 150
    goto :goto_150

    .line 146
    .end local v12    # "node":Lorg/w3c/dom/Node;
    :cond_14d
    add-int/lit8 v10, v10, 0x1

    goto :goto_12e

    .line 154
    .end local v6    # "activeElement":Lorg/w3c/dom/Element;
    .end local v10    # "i":I
    .end local v11    # "map":Lorg/w3c/dom/NamedNodeMap;
    :cond_150
    :goto_150
    goto/16 :goto_24e

    .line 155
    :cond_152
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-interface {v0, v11, v10}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 156
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_1d7

    .line 157
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 158
    .local v16, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 159
    .local v6, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/mediatek/simservs/client/SimservType;->mPrefix:Ljava/lang/String;

    .line 160
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/mediatek/simservs/client/SimservType;->mHasXcapNS:Z

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", prefix="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/simservs/client/SimservType;->mPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", NS="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v1, Lcom/mediatek/simservs/client/SimservType;->mHasXcapNS:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-lez v10, :cond_1d5

    .line 164
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1b3
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_1d5

    .line 165
    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 166
    .local v11, "node":Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d2

    .line 167
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 168
    goto :goto_1d5

    .line 164
    .end local v11    # "node":Lorg/w3c/dom/Node;
    :cond_1d2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b3

    .line 172
    .end local v6    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "i":I
    .end local v16    # "activeElement":Lorg/w3c/dom/Element;
    :cond_1d5
    :goto_1d5
    goto/16 :goto_24e

    .line 173
    :cond_1d7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ss:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 174
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_24e

    .line 175
    const/4 v6, 0x0

    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 176
    .local v10, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 177
    .local v11, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v9, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/mediatek/simservs/client/SimservType;->mPrefix:Ljava/lang/String;

    .line 178
    iput-boolean v6, v1, Lcom/mediatek/simservs/client/SimservType;->mHasXcapNS:Z

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got ss:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-lez v6, :cond_24e

    .line 181
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22c
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_24e

    .line 182
    invoke-interface {v11, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 183
    .restart local v12    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24b

    .line 184
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 185
    goto :goto_24e

    .line 181
    .end local v12    # "node":Lorg/w3c/dom/Node;
    :cond_24b
    add-int/lit8 v6, v6, 0x1

    goto :goto_22c

    .line 193
    .end local v6    # "i":I
    .end local v10    # "activeElement":Lorg/w3c/dom/Element;
    .end local v11    # "map":Lorg/w3c/dom/NamedNodeMap;
    :cond_24e
    :goto_24e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmldoc="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/SimservType;->initServiceInstance(Lorg/w3c/dom/Document;)V

    goto :goto_286

    .line 126
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "currentNode":Lorg/w3c/dom/NodeList;
    .local v11, "e":Lorg/xml/sax/SAXException;
    :catch_26e
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 127
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v9}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4

    .line 122
    .end local v0    # "err":Ljava/io/IOException;
    :catch_27a
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 123
    .local v0, "err":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 125
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v9}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4

    .line 197
    .end local v0    # "err":Lorg/xml/sax/SAXException;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Lorg/xml/sax/InputSource;
    .end local v11    # "e":Lorg/xml/sax/SAXException;
    :cond_286
    :goto_286
    return-void
.end method

.method public refresh()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->loadConfiguration()V

    .line 62
    return-void
.end method

.method public saveNode(ZLcom/mediatek/simservs/client/policy/RuleSet;)V
    .registers 8
    .param p1, "active"    # Z
    .param p2, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 233
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ss:"

    const-string v3, ""

    if-eqz v1, :cond_16

    move-object v1, v2

    goto :goto_17

    :cond_16
    move-object v1, v3

    :goto_17
    move-object v0, v1

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 237
    const-string v2, "xmlns:ss=\"http://uri.etsi.org/ngn/params/xml/simservs/xcap\" "

    goto :goto_3b

    :cond_3a
    move-object v2, v3

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    if-eqz p2, :cond_60

    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v3

    :cond_60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "thisXml":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveNode: thisXml="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimservType"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, v1}, Lcom/mediatek/simservs/client/SimservType;->setContent(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setActive(Z)V
    .registers 9
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 210
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "xml":Ljava/lang/String;
    const-string v1, "xcap.ns.ss"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "useXcapNs":Ljava/lang/String;
    nop

    .line 214
    const-string v3, "xcap.attr.active.quote"

    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 216
    .local v3, "quotationMarkNeeded":Z
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 217
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    const-string v4, "<ss:"

    if-eqz v2, :cond_3d

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " active=\"true\"/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    .line 220
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " active=\"false\"/>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_55
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/SimservType;->setContent(Ljava/lang/String;)V

    goto :goto_6e

    .line 224
    :cond_59
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/SimservType;->mActived:Z

    const-string v6, "active"

    if-eqz v5, :cond_67

    .line 225
    if-eqz v3, :cond_63

    const-string v4, "\"true\""

    :cond_63
    invoke-virtual {p0, v6, v4}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 227
    :cond_67
    if-eqz v3, :cond_6b

    const-string v2, "\"false\""

    :cond_6b
    invoke-virtual {p0, v6, v2}, Lcom/mediatek/simservs/client/SimservType;->setByAttrName(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_6e
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 9
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 254
    :try_start_0
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_e} :catch_7e

    const-string v2, "ss:"

    const-string v3, ""

    if-eqz v1, :cond_16

    move-object v1, v2

    goto :goto_17

    :cond_16
    move-object v1, v3

    :goto_17
    move-object v0, v1

    .line 256
    :try_start_18
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/SimservType;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 259
    const-string v3, "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    goto :goto_55

    :cond_54
    nop

    :goto_55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    .line 260
    const-string v1, "SimservType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContent: mNodeUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/SimservType;->mNodeUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->saveContent(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_7d} :catch_7e

    .line 264
    .end local v0    # "useXcapNs":Ljava/lang/String;
    goto :goto_82

    .line 262
    :catch_7e
    move-exception v0

    .line 263
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 265
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_82
    return-void
.end method
