.class public Lcom/mediatek/simservs/client/policy/Actions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:actions"

.field static final TAG_ALLOW:Ljava/lang/String; = "allow"

.field static final TAG_FORWARD_TO:Ljava/lang/String; = "forward-to"


# instance fields
.field public mAllow:Z

.field private mAppendAllow:Z

.field public mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

.field public mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 39
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-direct {v0, p1, p2, p3}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 53
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Actions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v0, :cond_9

    .line 213
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->getValue()I

    move-result v0

    return v0

    .line 215
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 58
    const-string v0, "cp:actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 14
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 64
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "allow"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 65
    .local v2, "actionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "true"

    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const/4 v7, 0x0

    if-lez v3, :cond_28

    .line 66
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 67
    .local v1, "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "allowed":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 69
    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 70
    .end local v1    # "allowElement":Lorg/w3c/dom/Element;
    .end local v3    # "allowed":Ljava/lang/String;
    goto :goto_63

    .line 71
    :cond_28
    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 72
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_45

    .line 73
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 74
    .restart local v1    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "allowed":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 76
    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 77
    .end local v1    # "allowElement":Lorg/w3c/dom/Element;
    .end local v3    # "allowed":Ljava/lang/String;
    goto :goto_63

    .line 78
    :cond_45
    const-string v1, "ss:allow"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 79
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_63

    .line 80
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 81
    .restart local v1    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3    # "allowed":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 83
    iput-boolean v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 88
    .end local v1    # "allowElement":Lorg/w3c/dom/Element;
    .end local v3    # "allowed":Ljava/lang/String;
    :cond_63
    :goto_63
    const-string v1, "forward-to"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "cp:actions"

    if-lez v3, :cond_7d

    .line 90
    new-instance v1, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto :goto_aa

    .line 93
    :cond_7d
    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_93

    .line 95
    new-instance v1, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto :goto_aa

    .line 98
    :cond_93
    const-string v1, "ss:forward-to"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 99
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_aa

    .line 100
    new-instance v1, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 106
    :cond_aa
    :goto_aa
    const-string v1, "NoReplyTimer"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "Actions"

    if-lez v3, :cond_dc

    .line 108
    const-string v1, "Got NoReplyTimer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 110
    .local v1, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 112
    .local v10, "noReplyTimer":I
    new-instance v11, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    const-string v7, "NoReplyTimer"

    move-object v4, v11

    move-object v5, p0

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    .line 114
    .end local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v3    # "val":Ljava/lang/String;
    .end local v10    # "noReplyTimer":I
    goto :goto_139

    .line 115
    :cond_dc
    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 116
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_10a

    .line 117
    const-string v1, "Got NoReplyTimer with xcap namespace"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 119
    .restart local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "val":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 121
    .restart local v10    # "noReplyTimer":I
    new-instance v11, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    const-string v7, "NoReplyTimer"

    move-object v4, v11

    move-object v5, p0

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    .line 123
    .end local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v3    # "val":Ljava/lang/String;
    .end local v10    # "noReplyTimer":I
    goto :goto_139

    .line 124
    :cond_10a
    const-string v1, "ss:NoReplyTimer"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_139

    .line 126
    const-string v1, "Got ss:NoReplyTimer"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 128
    .restart local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 129
    .restart local v3    # "val":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 130
    .restart local v10    # "noReplyTimer":I
    new-instance v11, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    const-string v7, "NoReplyTimer"

    move-object v4, v11

    move-object v5, p0

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    .line 136
    .end local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    .end local v3    # "val":Ljava/lang/String;
    .end local v10    # "noReplyTimer":I
    :cond_139
    :goto_139
    return-void
.end method

.method public isAllow()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    return v0
.end method

.method public setAllow(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    .line 178
    return-void
.end method

.method public setFowardTo(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "notifyCaller"    # Z

    .line 191
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-nez v0, :cond_11

    .line 192
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mParentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 194
    :cond_11
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setTarget(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setNotifyCaller(Z)V

    .line 196
    return-void
.end method

.method public setNoReplyTimer(I)V
    .registers 9
    .param p1, "value"    # I

    .line 203
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v0, :cond_8

    .line 204
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->setValue(I)V

    goto :goto_1b

    .line 205
    :cond_8
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    .line 206
    new-instance v0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    const-string v4, "NoReplyTimer"

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    .line 209
    :cond_1b
    :goto_1b
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 145
    const-string v0, "cp:actions"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 147
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-eqz v1, :cond_12

    .line 148
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 149
    .local v1, "forwardToElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 150
    .end local v1    # "forwardToElement":Lorg/w3c/dom/Element;
    goto :goto_4b

    .line 151
    :cond_12
    iget-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAppendAllow:Z

    if-eqz v1, :cond_4b

    .line 152
    const-string v1, "xcap.ns.ss"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "useXcapNs":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 155
    const-string v4, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v5, "ss:allow"

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 157
    .local v4, "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v5, :cond_33

    move-object v2, v3

    :cond_33
    invoke-interface {v4, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 158
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 159
    .end local v4    # "allowElement":Lorg/w3c/dom/Element;
    goto :goto_4b

    .line 160
    :cond_3a
    const-string v4, "allow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 161
    .restart local v4    # "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v5, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v5, :cond_45

    move-object v2, v3

    :cond_45
    invoke-interface {v4, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 162
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 167
    .end local v1    # "useXcapNs":Ljava/lang/String;
    .end local v4    # "allowElement":Lorg/w3c/dom/Element;
    :cond_4b
    :goto_4b
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mNoReplyTimer:Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;

    if-eqz v1, :cond_56

    .line 168
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 169
    .local v1, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 172
    .end local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_56
    return-object v0
.end method
