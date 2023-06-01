.class public Lcom/mediatek/simservs/client/policy/ForwardTo;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ForwardTo.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "forward-to"

.field private static final SDBG:Z

.field public static final TAG:Ljava/lang/String; = "ForwardTo"

.field static final TAG_NOTIFY_CALLER:Ljava/lang/String; = "notify-caller"

.field static final TAG_NOTIFY_SERVED_USER:Ljava/lang/String; = "notify-served-user"

.field static final TAG_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:Ljava/lang/String; = "notify-served-user-on-outbound-call"

.field static final TAG_REVEAL_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-identity-to-caller"

.field static final TAG_REVEAL_IDENTITY_TO_TARGET:Ljava/lang/String; = "reveal-identity-to-target"

.field static final TAG_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:Ljava/lang/String; = "reveal-served-user-identity-to-caller"

.field static final TAG_TARGET:Ljava/lang/String; = "target"


# instance fields
.field public mIsValidTargetNumber:Z

.field public mNotifyCaller:Z

.field public mNotifyServedUser:Z

.field public mNotifyServedUserOnOutboundCall:Z

.field public mRevealIdentityToCaller:Z

.field public mRevealIdentityToTarget:Z

.field public mRevealServedUserIdentityToCaller:Z

.field public mTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/mediatek/simservs/client/policy/ForwardTo;->SDBG:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 41
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 7
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 41
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    .line 70
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/ForwardTo;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 71
    return-void
.end method

.method private isValidTargetNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    const-string v1, "ForwardTo"

    if-eqz p1, :cond_76

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_76

    .line 82
    :cond_e
    const-string v2, "sip:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "isValidTargetNumber = "

    if-nez v2, :cond_57

    .line 83
    const-string v2, "sips:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "tel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 84
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "^[0-9]+$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_57

    .line 88
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/mediatek/simservs/client/policy/ForwardTo;->SDBG:Z

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", result = false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v0

    .line 85
    :cond_57
    :goto_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/mediatek/simservs/client/policy/ForwardTo;->SDBG:Z

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result = true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_76
    :goto_76
    const-string v2, "Number is empty, we should put CF number to server"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "forward-to"

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 96
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "target"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 97
    .local v2, "forwardToNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const/4 v5, 0x0

    if-lez v3, :cond_25

    .line 98
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 99
    .local v1, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 100
    invoke-direct {p0, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isValidTargetNumber(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    .line 101
    .end local v1    # "targetElement":Lorg/w3c/dom/Element;
    goto :goto_60

    .line 102
    :cond_25
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_42

    .line 104
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 105
    .restart local v1    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 106
    invoke-direct {p0, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isValidTargetNumber(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    .line 107
    .end local v1    # "targetElement":Lorg/w3c/dom/Element;
    goto :goto_60

    .line 108
    :cond_42
    const-string v1, "ss:target"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_60

    .line 111
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 112
    .restart local v1    # "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 113
    invoke-direct {p0, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;->isValidTargetNumber(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    .line 118
    .end local v1    # "targetElement":Lorg/w3c/dom/Element;
    :cond_60
    :goto_60
    const-string v1, "notify-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v6, "true"

    if-lez v3, :cond_7f

    .line 120
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 121
    .local v1, "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "notifyCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 123
    .end local v1    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "notifyCaller":Ljava/lang/String;
    goto :goto_b6

    .line 124
    :cond_7f
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_9a

    .line 126
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 127
    .restart local v1    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 129
    .end local v1    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "notifyCaller":Ljava/lang/String;
    goto :goto_b6

    .line 130
    :cond_9a
    const-string v1, "ss:notify-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_b6

    .line 133
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 134
    .restart local v1    # "notifyCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "notifyCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 140
    .end local v1    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "notifyCaller":Ljava/lang/String;
    :cond_b6
    :goto_b6
    const-string v1, "reveal-identity-to-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 141
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_d3

    .line 142
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 143
    .local v1, "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "revealCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 145
    .end local v1    # "revealCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealCaller":Ljava/lang/String;
    goto :goto_10a

    .line 146
    :cond_d3
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 148
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_ee

    .line 149
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 150
    .restart local v1    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "revealCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 152
    .end local v1    # "revealCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealCaller":Ljava/lang/String;
    goto :goto_10a

    .line 153
    :cond_ee
    const-string v1, "ss:reveal-identity-to-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 155
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_10a

    .line 156
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 157
    .restart local v1    # "revealCallerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3    # "revealCaller":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 163
    .end local v1    # "revealCallerElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealCaller":Ljava/lang/String;
    :cond_10a
    :goto_10a
    const-string v1, "reveal-identity-to-target"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_127

    .line 165
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 166
    .local v1, "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "revealTarget":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 168
    .end local v1    # "revealTargetElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealTarget":Ljava/lang/String;
    goto :goto_15e

    .line 169
    :cond_127
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_142

    .line 172
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 173
    .restart local v1    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "revealTarget":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 175
    .end local v1    # "revealTargetElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealTarget":Ljava/lang/String;
    goto :goto_15e

    .line 176
    :cond_142
    const-string v1, "ss:reveal-identity-to-target"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 178
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_15e

    .line 179
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 180
    .restart local v1    # "revealTargetElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3    # "revealTarget":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 186
    .end local v1    # "revealTargetElement":Lorg/w3c/dom/Element;
    .end local v3    # "revealTarget":Ljava/lang/String;
    :cond_15e
    :goto_15e
    const-string v1, "reveal-served-user-identity-to-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_17b

    .line 188
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 189
    .local v1, "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 191
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_1b2

    .line 192
    :cond_17b
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_196

    .line 195
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 196
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 198
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_1b2

    .line 199
    :cond_196
    const-string v1, "ss:reveal-served-user-identity-to-caller"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 201
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1b2

    .line 202
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 203
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 209
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1b2
    :goto_1b2
    const-string v1, "notify-served-user"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1cf

    .line 211
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 212
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 213
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 214
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_206

    .line 215
    :cond_1cf
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1ea

    .line 218
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 219
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 220
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 221
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_206

    .line 222
    :cond_1ea
    const-string v1, "ss:notify-served-user"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 224
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_206

    .line 225
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 226
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 227
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 232
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    :cond_206
    :goto_206
    const-string v1, "notify-served-user-on-outbound-call"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 233
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_223

    .line 234
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 235
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 237
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_25a

    .line 238
    :cond_223
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 240
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_23e

    .line 241
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 242
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 243
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 244
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_25a

    .line 245
    :cond_23e
    const-string v1, "ss:notify-served-user-on-outbound-call"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_25a

    .line 248
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 249
    .restart local v1    # "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "str":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 254
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "str":Ljava/lang/String;
    :cond_25a
    :goto_25a
    return-void
.end method

.method public isNotifyCaller()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    return v0
.end method

.method public isNotifyServedUse()Z
    .registers 2

    .line 416
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    return v0
.end method

.method public isNotifyServedUserOnOutboundCall()Z
    .registers 2

    .line 420
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    return v0
.end method

.method public isRevealIdentityToCaller()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    return v0
.end method

.method public isRevealIdentityToTarget()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    return v0
.end method

.method public isRevealServedUserIdentityToCaller()Z
    .registers 2

    .line 412
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    return v0
.end method

.method public setNotifyCaller(Z)V
    .registers 2
    .param p1, "notifyCaller"    # Z

    .line 376
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    .line 377
    return-void
.end method

.method public setNotifyServedUser(Z)V
    .registers 2
    .param p1, "notifyToServedUser"    # Z

    .line 388
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    .line 389
    return-void
.end method

.method public setNotifyServedUserOnOutboundCall(Z)V
    .registers 2
    .param p1, "notifyToServedUser"    # Z

    .line 392
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    .line 393
    return-void
.end method

.method public setRevealIdentityToCaller(Z)V
    .registers 2
    .param p1, "revealIdToCaller"    # Z

    .line 380
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    .line 381
    return-void
.end method

.method public setRevealIdentityToTarget(Z)V
    .registers 2
    .param p1, "revealIdToTarget"    # Z

    .line 396
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    .line 397
    return-void
.end method

.method public setRevealServedUserIdentityToCaller(Z)V
    .registers 2
    .param p1, "revealIdToCaller"    # Z

    .line 384
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    .line 385
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 15
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 264
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "xcap.completeforwardto"

    if-eqz v3, :cond_ac

    .line 267
    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v5, "ss:forward-to"

    invoke-interface {p1, v3, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 270
    .local v5, "forwardElement":Lorg/w3c/dom/Element;
    const-string v6, "ss:target"

    invoke-interface {p1, v3, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 272
    .local v6, "allowElement":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 273
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 275
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "completeForwardTo":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 279
    const-string v7, "ss:notify-caller"

    invoke-interface {p1, v3, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 281
    .local v7, "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v8, :cond_3e

    move-object v8, v2

    goto :goto_3f

    :cond_3e
    move-object v8, v1

    :goto_3f
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 282
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 284
    nop

    .line 285
    const-string v8, "ss:reveal-identity-to-caller"

    invoke-interface {p1, v3, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 287
    .local v8, "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    nop

    .line 288
    iget-boolean v9, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    if-eqz v9, :cond_53

    move-object v9, v2

    goto :goto_54

    :cond_53
    move-object v9, v1

    .line 287
    :goto_54
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 289
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 291
    nop

    .line 292
    const-string v9, "ss:reveal-served-user-identity-to-caller"

    invoke-interface {p1, v3, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 294
    .local v9, "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    nop

    .line 295
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    if-eqz v10, :cond_68

    move-object v10, v2

    goto :goto_69

    :cond_68
    move-object v10, v1

    .line 294
    :goto_69
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 296
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 298
    nop

    .line 299
    const-string v10, "ss:notify-served-user"

    invoke-interface {p1, v3, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 301
    .local v10, "notifyServedUserElement":Lorg/w3c/dom/Element;
    iget-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    if-eqz v11, :cond_7c

    move-object v11, v2

    goto :goto_7d

    :cond_7c
    move-object v11, v1

    :goto_7d
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 302
    invoke-interface {v5, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 304
    nop

    .line 305
    const-string v11, "ss:notify-served-user-on-outbound-call"

    invoke-interface {p1, v3, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 307
    .local v11, "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    nop

    .line 308
    iget-boolean v12, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    if-eqz v12, :cond_91

    move-object v12, v2

    goto :goto_92

    :cond_91
    move-object v12, v1

    .line 307
    :goto_92
    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 309
    invoke-interface {v5, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 311
    nop

    .line 312
    const-string v12, "ss:reveal-identity-to-target"

    invoke-interface {p1, v3, v12}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 314
    .local v3, "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    nop

    .line 315
    iget-boolean v12, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    if-eqz v12, :cond_a5

    move-object v1, v2

    .line 314
    :cond_a5
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 316
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 319
    .end local v3    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    .end local v7    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v8    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v9    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v10    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v11    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    :cond_ab
    return-object v5

    .line 321
    .end local v4    # "completeForwardTo":Ljava/lang/String;
    .end local v5    # "forwardElement":Lorg/w3c/dom/Element;
    .end local v6    # "allowElement":Lorg/w3c/dom/Element;
    :cond_ac
    const-string v3, "forward-to"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 323
    .local v3, "forwardElement":Lorg/w3c/dom/Element;
    const-string v5, "target"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 324
    .local v5, "allowElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mTarget:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 325
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 327
    invoke-static {v4, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .restart local v4    # "completeForwardTo":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    .line 331
    const-string v6, "notify-caller"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 332
    .local v6, "notifyCallerElement":Lorg/w3c/dom/Element;
    iget-boolean v7, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyCaller:Z

    if-eqz v7, :cond_d6

    move-object v7, v2

    goto :goto_d7

    :cond_d6
    move-object v7, v1

    :goto_d7
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 333
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 335
    nop

    .line 336
    const-string v7, "reveal-identity-to-caller"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 337
    .local v7, "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    nop

    .line 338
    iget-boolean v8, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToCaller:Z

    if-eqz v8, :cond_eb

    move-object v8, v2

    goto :goto_ec

    :cond_eb
    move-object v8, v1

    .line 337
    :goto_ec
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 339
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 341
    nop

    .line 342
    const-string v8, "reveal-served-user-identity-to-caller"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 343
    .local v8, "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    nop

    .line 344
    iget-boolean v9, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealServedUserIdentityToCaller:Z

    if-eqz v9, :cond_100

    move-object v9, v2

    goto :goto_101

    :cond_100
    move-object v9, v1

    .line 343
    :goto_101
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 345
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 347
    nop

    .line 348
    const-string v9, "notify-served-user"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 349
    .local v9, "notifyServedUserElement":Lorg/w3c/dom/Element;
    iget-boolean v10, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUser:Z

    if-eqz v10, :cond_114

    move-object v10, v2

    goto :goto_115

    :cond_114
    move-object v10, v1

    :goto_115
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 350
    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    nop

    .line 353
    const-string v10, "notify-served-user-on-outbound-call"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 354
    .local v10, "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    nop

    .line 355
    iget-boolean v11, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mNotifyServedUserOnOutboundCall:Z

    if-eqz v11, :cond_129

    move-object v11, v2

    goto :goto_12a

    :cond_129
    move-object v11, v1

    .line 354
    :goto_12a
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 356
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 358
    nop

    .line 359
    const-string v11, "reveal-identity-to-target"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 360
    .local v11, "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    nop

    .line 361
    iget-boolean v12, p0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mRevealIdentityToTarget:Z

    if-eqz v12, :cond_13d

    move-object v1, v2

    .line 360
    :cond_13d
    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 362
    invoke-interface {v3, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 365
    .end local v6    # "notifyCallerElement":Lorg/w3c/dom/Element;
    .end local v7    # "revealIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v8    # "revealServedUserIdentityToCallerElement":Lorg/w3c/dom/Element;
    .end local v9    # "notifyServedUserElement":Lorg/w3c/dom/Element;
    .end local v10    # "notifyServedUserOnOutboundCallElement":Lorg/w3c/dom/Element;
    .end local v11    # "revealIdentityToTargetElement":Lorg/w3c/dom/Element;
    :cond_143
    return-object v3
.end method
