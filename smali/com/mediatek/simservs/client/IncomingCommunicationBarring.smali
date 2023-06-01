.class public Lcom/mediatek/simservs/client/IncomingCommunicationBarring;
.super Lcom/mediatek/simservs/client/SimservType;
.source "IncomingCommunicationBarring.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "incoming-communication-barring"


# instance fields
.field mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;


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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 5

    .line 141
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    const-string v3, "incoming-communication-barring"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 142
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_18

    .line 143
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 145
    :cond_18
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 146
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 148
    :cond_23
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 101
    const-string v0, "incoming-communication-barring"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 9
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 45
    const-string v0, "ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 46
    .local v1, "ruleSetNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const-string v3, "Got ruleset"

    const/4 v4, 0x0

    const-string v5, "IncomingCommunicationBarring"

    const-string v6, "incoming-communication-barring"

    if-lez v2, :cond_3f

    .line 47
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 49
    .local v0, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 50
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_32

    .line 51
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 54
    :cond_32
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 55
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 57
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_3d
    goto/16 :goto_d0

    .line 58
    :cond_3f
    const-string v2, "urn:ietf:params:xml:ns:common-policy"

    invoke-interface {p1, v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_76

    .line 60
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 62
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 64
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_6a

    .line 65
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 68
    :cond_6a
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 69
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 71
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_75
    goto :goto_d0

    .line 72
    :cond_76
    const-string v0, "cp:ruleset"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_af

    .line 74
    const-string v0, "Got cp:ruleset"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 76
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v2, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v2, v3, v6, v4, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 78
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_a3

    .line 79
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 82
    :cond_a3
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v2, :cond_ae

    .line 83
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 85
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_ae
    goto :goto_d0

    .line 86
    :cond_af
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v2, v6, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 87
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_c5

    .line 88
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 91
    :cond_c5
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_d0

    .line 92
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 97
    :cond_d0
    :goto_d0
    return-void
.end method

.method public save(Z)V
    .registers 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveNode(ZLcom/mediatek/simservs/client/policy/RuleSet;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save: mEtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncomingCommunicationBarring"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 203
    :cond_28
    return-void
.end method

.method public saveRule(Lcom/mediatek/simservs/client/policy/Rule;)V
    .registers 6
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 180
    if-eqz p1, :cond_4e

    .line 181
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "ruleXml":Ljava/lang/String;
    const-string v1, "IncomingCommunicationBarring"

    if-nez v0, :cond_21

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRule: null xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_21
    invoke-virtual {p1, v0}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 188
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRule: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 192
    .end local v0    # "ruleXml":Ljava/lang/String;
    :cond_4d
    goto :goto_55

    .line 193
    :cond_4e
    const-string v0, "saveRule"

    const-string v1, "rule is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_55
    return-void
.end method

.method public saveRule(Ljava/lang/String;)V
    .registers 6
    .param p1, "ruleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 159
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 160
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 161
    .local v0, "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/simservs/client/policy/Rule;

    .line 162
    .local v2, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, v2, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 163
    invoke-virtual {p0, v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 164
    goto :goto_2d

    .line 166
    .end local v2    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2c
    goto :goto_14

    .line 167
    .end local v0    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_2d
    :goto_2d
    goto :goto_35

    .line 168
    :cond_2e
    const-string v0, "saveRule"

    const-string v1, "ruleId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_35
    return-void
.end method

.method public saveRuleSet()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "ruleXml":Ljava/lang/String;
    const-string v1, "IncomingCommunicationBarring"

    if-nez v0, :cond_10

    .line 123
    const-string v2, "saveRuleSet: null xml"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 126
    :cond_10
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 128
    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRuleSet: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 132
    :cond_42
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 207
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 208
    if-eqz p1, :cond_24

    .line 209
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    if-eqz v0, :cond_24

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XCAP dedicated network netid to mRuleSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimservType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 214
    :cond_24
    return-void
.end method
