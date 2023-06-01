.class public Lcom/mediatek/simservs/capability/ConditionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ConditionCapabilities.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "serv-cap-anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "serv-cap-busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "serv-cap-communication-diverted"

.field static final TAG_EXTERNAL_LIST:Ljava/lang/String; = "serv-cap-external-list"

.field static final TAG_IDENTITY:Ljava/lang/String; = "serv-cap-identity"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "serv-cap-international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "serv-cap-international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "serv-cap-media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "serv-cap-not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "serv-cap-not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "serv-cap-no-answer"

.field static final TAG_OTHER_IDENTITY:Ljava/lang/String; = "serv-cap-other-identity"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "serv-cap-presence-status"

.field static final TAG_REQUEST_NAME:Ljava/lang/String; = "serv-cap-request-name"

.field static final TAG_ROAMING:Ljava/lang/String; = "serv-cap-roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "serv-cap-rule-deactivated"

.field static final TAG_VALIDITY:Ljava/lang/String; = "serv-cap-validity"


# instance fields
.field public mAnonymousProvisioned:Z

.field public mCommunicationDivertedProvisioned:Z

.field public mExternalListProvisioned:Z

.field public mIdentityProvisioned:Z

.field public mInternationalProvisioned:Z

.field public mInternationalexHCProvisioned:Z

.field mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

.field public mOtherIdentityProvisioned:Z

.field public mPresenceStatusProvisioned:Z

.field public mRequestNameProvisioned:Z

.field public mRoamingProvisioned:Z

.field public mRuleDeactivatedProvisioned:Z

.field public mValidityProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "nodes"    # Lorg/w3c/dom/Node;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 37
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 73
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/capability/ConditionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getMediaConditions()Lcom/mediatek/simservs/capability/MediaConditions;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 173
    const-string v0, "serv-cap-conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 80
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "serv-cap-anonymous"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 81
    .local v1, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const-string v3, "true"

    const-string v4, "provisioned"

    const/4 v5, 0x0

    if-lez v2, :cond_24

    .line 82
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 83
    .local v2, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    .line 87
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_24
    const-string v2, "serv-cap-request-name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_40

    .line 89
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 90
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    .line 94
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_40
    const-string v2, "serv-cap-communication-diverted"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_5c

    .line 96
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 97
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    .line 101
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_5c
    const-string v2, "serv-cap-external-list"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_78

    .line 103
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 104
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    .line 108
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_78
    const-string v2, "serv-cap-identity"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_94

    .line 110
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 111
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    .line 115
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_94
    const-string v2, "serv-cap-international"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_b0

    .line 117
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 118
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    .line 122
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_b0
    const-string v2, "serv-cap-international-exHC"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_cc

    .line 124
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 125
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    .line 129
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_cc
    const-string v2, "serv-cap-other-identity"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_e8

    .line 131
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 132
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    .line 136
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_e8
    const-string v2, "serv-cap-presence-status"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 137
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_104

    .line 138
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 139
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    .line 143
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_104
    const-string v2, "serv-cap-roaming"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_120

    .line 145
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 146
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    .line 150
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_120
    const-string v2, "serv-cap-rule-deactivated"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 151
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_13c

    .line 152
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 153
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    .line 157
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_13c
    const-string v2, "serv-cap-validity"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_158

    .line 159
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 160
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "provisioned":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    .line 164
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_158
    const-string v2, "serv-cap-media"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 165
    .local v2, "mediassNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_177

    .line 166
    new-instance v3, Lcom/mediatek/simservs/capability/MediaConditions;

    iget-object v4, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v6, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIntendedId:Ljava/lang/String;

    .line 167
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v7, "serv-cap-conditions"

    invoke-direct {v3, v4, v7, v6, v5}, Lcom/mediatek/simservs/capability/MediaConditions;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v3, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mMediaConditions:Lcom/mediatek/simservs/capability/MediaConditions;

    .line 169
    :cond_177
    return-void
.end method

.method public isAnonymousProvisioned()Z
    .registers 2

    .line 177
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mAnonymousProvisioned:Z

    return v0
.end method

.method public isCommunicationDivertedProvisioned()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mCommunicationDivertedProvisioned:Z

    return v0
.end method

.method public isExternalListProvisioned()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mExternalListProvisioned:Z

    return v0
.end method

.method public isIdentityProvisioned()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mIdentityProvisioned:Z

    return v0
.end method

.method public isInternationalProvisioned()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalProvisioned:Z

    return v0
.end method

.method public isInternationalexHCProvisioned()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mInternationalexHCProvisioned:Z

    return v0
.end method

.method public isOtherIdentityProvisioned()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mOtherIdentityProvisioned:Z

    return v0
.end method

.method public isPresenceStatusProvisioned()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mPresenceStatusProvisioned:Z

    return v0
.end method

.method public isRequestNameProvisioned()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRequestNameProvisioned:Z

    return v0
.end method

.method public isRoamingProvisioned()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRoamingProvisioned:Z

    return v0
.end method

.method public isRuleDeactivatedProvisioned()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mRuleDeactivatedProvisioned:Z

    return v0
.end method

.method public isValidityProvisioned()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ConditionCapabilities;->mValidityProvisioned:Z

    return v0
.end method
