.class public Lcom/mediatek/simservs/capability/DiversionServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "DiversionServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion-serv-cap"


# instance fields
.field mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getActionCapabilities()Lcom/mediatek/simservs/capability/ActionCapabilities;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    return-object v0
.end method

.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "communication-diversion-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 9
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 61
    const-string v0, "serv-cap-actions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 62
    .local v0, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-string v2, "communication-diversion-serv-cap"

    const/4 v3, 0x0

    if-lez v1, :cond_20

    .line 63
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 64
    .local v1, "actionNode":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/mediatek/simservs/capability/ActionCapabilities;

    iget-object v5, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v6, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6, v1}, Lcom/mediatek/simservs/capability/ActionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mActionCapabilities:Lcom/mediatek/simservs/capability/ActionCapabilities;

    .line 68
    .end local v1    # "actionNode":Lorg/w3c/dom/Element;
    :cond_20
    const-string v1, "serv-cap-conditions"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 69
    .local v1, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3d

    .line 70
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 71
    .local v3, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v5, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v6, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mIntendedId:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6, v3}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v4, p0, Lcom/mediatek/simservs/capability/DiversionServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 75
    .end local v3    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_3d
    return-void
.end method
