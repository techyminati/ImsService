.class public Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
.super Lcom/mediatek/simservs/client/SimservType;
.source "TerminatingIdentityPresentationRestriction.java"


# static fields
.field public static NODE_DEFAULT_BEHAVIOUR:I = 0x0

.field public static final NODE_NAME:Ljava/lang/String; = "terminating-identity-presentation-restriction"

.field public static NODE_ROOT_FULL_CHILD:I

.field public static NODE_ROOT_NO_CHILD:I


# instance fields
.field public mContainDefaultBehaviour:Z

.field public mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

.field public mNodeSelector:I

.field public mShowActivePara:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_NO_CHILD:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_DEFAULT_BEHAVIOUR:I

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "xui"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 31
    sget v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    iput v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    .line 44
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "terminating-identity-presentation-restriction"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 48
    const-string v0, "default-behaviour"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 49
    .local v1, "defaultBehaviour":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "terminating-identity-presentation-restriction"

    if-lez v2, :cond_2f

    .line 50
    iput-boolean v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 51
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 52
    .local v0, "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 55
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_2e

    .line 56
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 58
    .end local v0    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_2e
    goto :goto_70

    .line 59
    :cond_2f
    const-string v2, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 61
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5a

    .line 62
    iput-boolean v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 63
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 64
    .restart local v0    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v4, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 67
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_59

    .line 68
    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 70
    .end local v0    # "defaultBehaviourElement":Lorg/w3c/dom/Element;
    :cond_59
    goto :goto_70

    .line 71
    :cond_5a
    new-instance v0, Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v2, v5, v3}, Lcom/mediatek/simservs/client/DefaultBehaviour;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    .line 73
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_70

    .line 74
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    iget-object v2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 78
    :cond_70
    :goto_70
    return-void
.end method

.method public isContainDefaultBehaviour()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    return v0
.end method

.method public isDefaultPresentationRestricted()Z
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->isPresentationRestricted()Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "serviceXml":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 93
    const-string v1, "SimservType"

    const-string v2, "saveConfiguration: null xml string"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 96
    :cond_e
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setContent(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mContainDefaultBehaviour:Z

    .line 98
    return-void
.end method

.method public setDefaultPresentationRestricted(Z)V
    .registers 4
    .param p1, "presentationRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 155
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 157
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    goto :goto_1a

    .line 158
    :cond_17
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->saveConfiguration()V

    .line 160
    :goto_1a
    return-void
.end method

.method public setDefaultPresentationRestricted(ZZIZ)V
    .registers 7
    .param p1, "presentationRestricted"    # Z
    .param p2, "nodeActive"    # Z
    .param p3, "nodeSelector"    # I
    .param p4, "showActivePara"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setPresentationRestricted(Z)V

    .line 165
    iput-boolean p2, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    .line 166
    iput-boolean p4, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    .line 167
    iput p3, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    .line 169
    sget v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_DEFAULT_BEHAVIOUR:I

    if-ne p3, v0, :cond_1b

    .line 170
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "defaultBehaviourXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setContent(Ljava/lang/String;)V

    .line 172
    .end local v0    # "defaultBehaviourXml":Ljava/lang/String;
    goto :goto_1e

    .line 173
    :cond_1b
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->saveConfiguration()V

    .line 175
    :goto_1e
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 184
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 185
    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    if-eqz v0, :cond_24

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XCAP dedicated network netid to mDefaultBehaviour: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimservType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/DefaultBehaviour;->setNetwork(Landroid/net/Network;)V

    .line 189
    :cond_24
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 9

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "root":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 108
    .local v1, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 110
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 111
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 112
    .local v4, "document":Lorg/w3c/dom/Document;
    const-string v5, "terminating-identity-presentation-restriction"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v0, v5

    .line 113
    const-string v5, "SimservType"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toXmlString: mShowActivePara="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mActived="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mNodeSelector="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mShowActivePara:Z

    if-eqz v5, :cond_50

    .line 117
    const-string v5, "active"

    iget-boolean v6, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mActived:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_50
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 120
    iget v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mNodeSelector:I

    sget v6, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_NO_CHILD:I

    if-eq v5, v6, :cond_62

    .line 121
    iget-object v5, p0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->mDefaultBehaviour:Lcom/mediatek/simservs/client/DefaultBehaviour;

    invoke-virtual {v5, v4}, Lcom/mediatek/simservs/client/DefaultBehaviour;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 122
    .local v5, "defaultElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 124
    .end local v5    # "defaultElement":Lorg/w3c/dom/Element;
    :cond_62
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5
    :try_end_66
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_66} :catch_72
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_66} :catch_6d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_66} :catch_68

    move-object v1, v5

    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    goto :goto_76

    .line 130
    :catch_68
    move-exception v3

    .line 131
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_77

    .line 128
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :catch_6d
    move-exception v3

    .line 129
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    goto :goto_76

    .line 125
    :catch_72
    move-exception v3

    .line 127
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 132
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_76
    nop

    .line 133
    :goto_77
    return-object v1
.end method
