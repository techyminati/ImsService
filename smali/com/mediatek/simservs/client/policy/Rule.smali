.class public Lcom/mediatek/simservs/client/policy/Rule;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Rule.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:rule"

.field public static final NODE_XML_NAMESPACE:Ljava/lang/String; = "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mActions:Lcom/mediatek/simservs/client/policy/Actions;

.field public mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

.field public mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "none"

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Rule;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 60
    return-void
.end method


# virtual methods
.method public createActions()Lcom/mediatek/simservs/client/policy/Actions;
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-nez v0, :cond_11

    .line 143
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    const-string v3, "cp:rule"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 145
    :cond_11
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public createConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-nez v0, :cond_11

    .line 155
    new-instance v0, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    const-string v3, "cp:rule"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 157
    :cond_11
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method public getActions()Lcom/mediatek/simservs/client/policy/Actions;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    return-object v0
.end method

.method public getConditions()Lcom/mediatek/simservs/client/policy/Conditions;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "cp:rule"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 11
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 69
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 70
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "id"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 71
    const-string v1, "conditions"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 72
    .local v2, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "urn:ietf:params:xml:ns:common-policy"

    const/4 v5, 0x0

    const-string v6, "cp:rule"

    if-lez v3, :cond_2e

    .line 73
    new-instance v1, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 74
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-direct {v1, v3, v6, v7, v8}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_73

    .line 76
    :cond_2e
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_4a

    .line 79
    new-instance v1, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 80
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-direct {v1, v3, v6, v7, v8}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_73

    .line 82
    :cond_4a
    const-string v1, "cp:conditions"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_68

    .line 84
    new-instance v1, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 85
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-direct {v1, v3, v6, v7, v8}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    goto :goto_73

    .line 87
    :cond_68
    new-instance v1, Lcom/mediatek/simservs/client/policy/Conditions;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v3, v6, v7}, Lcom/mediatek/simservs/client/policy/Conditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    .line 92
    :goto_73
    const-string v1, "actions"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 93
    .local v3, "actionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lez v7, :cond_91

    .line 94
    new-instance v1, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 95
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto :goto_d6

    .line 97
    :cond_91
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 98
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_ad

    .line 99
    new-instance v1, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 100
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto :goto_d6

    .line 102
    :cond_ad
    const-string v1, "cp:actions"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 103
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_cb

    .line 104
    new-instance v1, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    .line 105
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    goto :goto_d6

    .line 107
    :cond_cb
    new-instance v1, Lcom/mediatek/simservs/client/policy/Actions;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v5}, Lcom/mediatek/simservs/client/policy/Actions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    .line 111
    :goto_d6
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 6
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cp:rule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%5b@id=%22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%22%5d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 188
    :cond_42
    const-string v0, "Rule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContent etag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->saveContent(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5d} :catch_5e

    .line 192
    goto :goto_62

    .line 190
    :catch_5e
    move-exception v0

    .line 191
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_62
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "xml"    # Ljava/lang/String;
    .param p2, "hasXcapNS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 204
    const-string v0, "Rule"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContent hasXcapNS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Rule;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cp:rule"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 209
    if-eqz p2, :cond_31

    const-string v1, "xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    goto :goto_33

    :cond_31
    const-string v1, ""

    .line 210
    .local v1, "xcapNS":Ljava/lang/String;
    :goto_33
    const-string v2, "xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    .line 211
    .local v2, "cpNS":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "namespace":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%5b@id=%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%22%5d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Rule;->mNodeUri:Ljava/lang/String;

    .line 214
    .end local v1    # "xcapNS":Ljava/lang/String;
    .end local v2    # "cpNS":Ljava/lang/String;
    .end local v3    # "namespace":Ljava/lang/String;
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContent etag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Rule;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->saveContent(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_8c} :catch_8d

    .line 218
    goto :goto_91

    .line 216
    :catch_8d
    move-exception v0

    .line 217
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_91
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 5
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 121
    const-string v0, "cp:rule"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 122
    .local v0, "ruleElement":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mConditions:Lcom/mediatek/simservs/client/policy/Conditions;

    if-eqz v1, :cond_18

    .line 125
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Conditions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 126
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 129
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_18
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Rule;->mActions:Lcom/mediatek/simservs/client/policy/Actions;

    if-eqz v1, :cond_23

    .line 130
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Actions;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 131
    .local v1, "actionsElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 133
    .end local v1    # "actionsElement":Lorg/w3c/dom/Element;
    :cond_23
    return-object v0
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 7

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "root":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 229
    .local v1, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 231
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 232
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 233
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v4}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v0, v5

    .line 234
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 235
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/policy/Rule;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5
    :try_end_1a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_1a} :catch_26
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_1a} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_1a} :catch_1c

    move-object v1, v5

    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    goto :goto_2a

    .line 241
    :catch_1c
    move-exception v3

    .line 242
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2b

    .line 239
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :catch_21
    move-exception v3

    .line 240
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    goto :goto_2a

    .line 236
    :catch_26
    move-exception v3

    .line 238
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 243
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_2a
    nop

    .line 244
    :goto_2b
    return-object v1
.end method
