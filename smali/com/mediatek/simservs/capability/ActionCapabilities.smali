.class public Lcom/mediatek/simservs/capability/ActionCapabilities;
.super Lcom/mediatek/simservs/capability/ServiceCapabilities;
.source "ActionCapabilities.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "serv-cap-actions"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "serv-cap-notify-caller"

.field static final TAG_NOTIFY_SERVED_USER:Ljava/lang/String; = "serv-cap-notify-served-user"

.field static final TAG_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:Ljava/lang/String; = "serv-cap-notify-served-user-on-outbound-call"

.field static final TAG_REVEAL_IDENTITY_TO_CALLER:Ljava/lang/String; = "serv-cap-reveal-identity-to-caller"

.field static final TAG_REVEAL_IDENTITY_TO_TARGET:Ljava/lang/String; = "serv-cap-reveal-identity-to-target"

.field static final TAG_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:Ljava/lang/String; = "serv-cap-reveal-served-user-identity-to-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "serv-cap-target"


# instance fields
.field public mNotifyCallerProvisioned:Z

.field public mNotifyServedUserOnOutboundCallProvisioned:Z

.field public mNotifyServedUserProvisioned:Z

.field public mRevealIdentityToCallerProvisioned:Z

.field public mRevealIdentityToTargetProvisioned:Z

.field public mRevealServedUserIdentityToCallerProvisioned:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 28
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "nodes"    # Lorg/w3c/dom/Node;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/capability/ServiceCapabilities;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 28
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 31
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 56
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/capability/ActionCapabilities;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "serv-cap-actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 61
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 63
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "serv-cap-notify-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 64
    .local v1, "conditionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const-string v3, "true"

    const-string v4, "provisioned"

    const/4 v5, 0x0

    if-lez v2, :cond_24

    .line 65
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 66
    .local v2, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    .line 70
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_24
    const-string v2, "serv-cap-notify-served-user"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_40

    .line 72
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 73
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    .line 77
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_40
    const-string v2, "serv-cap-notify-served-user-on-outbound-call"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_5c

    .line 79
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 80
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    .line 84
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_5c
    const-string v2, "serv-cap-reveal-identity-to-caller"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_78

    .line 86
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 87
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    .line 91
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_78
    const-string v2, "serv-cap-reveal-served-user-identity-to-caller"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_94

    .line 93
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 94
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .restart local v6    # "provisioned":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    .line 98
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v6    # "provisioned":Ljava/lang/String;
    :cond_94
    const-string v2, "serv-cap-reveal-identity-to-target"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_b0

    .line 100
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 101
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "provisioned":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    .line 104
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    .end local v4    # "provisioned":Ljava/lang/String;
    :cond_b0
    return-void
.end method

.method public isNotifyCallerProvisioned()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyCallerProvisioned:Z

    return v0
.end method

.method public isNotifyServedUserOnOutboundCallProvisioned()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserOnOutboundCallProvisioned:Z

    return v0
.end method

.method public isNotifyServedUserProvisioned()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mNotifyServedUserProvisioned:Z

    return v0
.end method

.method public isRevealIdentityToCallerProvisioned()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToCallerProvisioned:Z

    return v0
.end method

.method public isRevealIdentityToTargetProvisioned()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealIdentityToTargetProvisioned:Z

    return v0
.end method

.method public isRevealServedUserIdentityToCallerProvisioned()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Lcom/mediatek/simservs/capability/ActionCapabilities;->mRevealServedUserIdentityToCallerProvisioned:Z

    return v0
.end method
