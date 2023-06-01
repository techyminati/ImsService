.class public Lcom/mediatek/simservs/capability/BarringServiceCapability;
.super Lcom/mediatek/simservs/capability/CapabilitiesType;
.source "BarringServiceCapability.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-barring-serv-cap"


# instance fields
.field mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/CapabilitiesType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getConditionCapabilities()Lcom/mediatek/simservs/capability/ConditionCapabilities;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "communication-barring-serv-cap"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 8
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 48
    const-string v0, "serv-cap-conditions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 49
    .local v0, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_20

    .line 50
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 51
    .local v1, "conditionNode":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/capability/ConditionCapabilities;

    iget-object v3, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mIntendedId:Ljava/lang/String;

    const-string v5, "communication-barring-serv-cap"

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/mediatek/simservs/capability/ConditionCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V

    iput-object v2, p0, Lcom/mediatek/simservs/capability/BarringServiceCapability;->mConditionCapabilities:Lcom/mediatek/simservs/capability/ConditionCapabilities;

    .line 55
    .end local v1    # "conditionNode":Lorg/w3c/dom/Element;
    :cond_20
    return-void
.end method
