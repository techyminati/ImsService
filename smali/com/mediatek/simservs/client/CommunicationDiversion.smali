.class public Lcom/mediatek/simservs/client/CommunicationDiversion;
.super Lcom/mediatek/simservs/client/SimservType;
.source "CommunicationDiversion.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/RuleType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
    }
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "communication-diversion"

.field private static final NO_REPLY_TIMER_DEFAULT_VAULE:I = -0x2


# instance fields
.field mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

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

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public createNewRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 5

    .line 284
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    const-string v3, "communication-diversion"

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 285
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_18

    .line 286
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 288
    :cond_18
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 289
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 291
    :cond_23
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public getNoReplyTimer()I
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getValue()I

    move-result v0

    return v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 51
    const-string v0, "communication-diversion"

    return-object v0
.end method

.method public getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 20
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 61
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v0, "NoReplyTimer"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 62
    .local v11, "noReplyTimerNode":Lorg/w3c/dom/NodeList;
    const/4 v7, -0x2

    .line 63
    .local v7, "noReplyTimer":I
    const/4 v8, 0x0

    .line 64
    .local v8, "val":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const-string v12, "CommunicationDiversion"

    const/4 v13, 0x0

    if-lez v1, :cond_78

    .line 65
    const-string v0, "Got NoReplyTimer"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, "prefix":Ljava/lang/String;
    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "namespaceUri":Ljava/lang/String;
    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lorg/w3c/dom/Element;

    .line 70
    .local v16, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v17

    .line 72
    .end local v8    # "val":Ljava/lang/String;
    .local v17, "val":Ljava/lang/String;
    :try_start_3a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_42} :catch_44

    move v7, v0

    .line 75
    goto :goto_49

    .line 73
    :catch_44
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v7

    .line 77
    .end local v7    # "noReplyTimer":I
    .local v0, "noReplyTimer":I
    :goto_49
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    const-string v4, "communication-diversion"

    move-object v1, v8

    move-object/from16 v2, p0

    move v6, v0

    move-object v7, v14

    move-object v13, v8

    move-object v8, v15

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v13, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 79
    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_68

    .line 80
    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 83
    :cond_68
    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 84
    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 86
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v15    # "namespaceUri":Ljava/lang/String;
    .end local v16    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_73
    move v7, v0

    move-object/from16 v8, v17

    goto/16 :goto_182

    .line 87
    .end local v0    # "noReplyTimer":I
    .end local v17    # "val":Ljava/lang/String;
    .restart local v7    # "noReplyTimer":I
    .restart local v8    # "val":Ljava/lang/String;
    :cond_78
    const-string v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-interface {v10, v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 89
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_ea

    .line 90
    const-string v0, "Got NoReplyTimer with xcap namespace"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "prefix":Ljava/lang/String;
    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "namespaceUri":Ljava/lang/String;
    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/w3c/dom/Element;

    .line 95
    .local v15, "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 97
    .end local v8    # "val":Ljava/lang/String;
    .local v16, "val":Ljava/lang/String;
    :try_start_a9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b1} :catch_b3

    move v7, v0

    .line 100
    goto :goto_b8

    .line 98
    :catch_b3
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v7

    .line 102
    .end local v7    # "noReplyTimer":I
    .local v0, "noReplyTimer":I
    :goto_b8
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    const-string v4, "communication-diversion"

    move-object v1, v8

    move-object/from16 v2, p0

    move v6, v0

    move-object v7, v13

    move/from16 v17, v0

    move-object v0, v8

    .end local v0    # "noReplyTimer":I
    .local v17, "noReplyTimer":I
    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 104
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_d9

    .line 105
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 108
    :cond_d9
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_e4

    .line 109
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 111
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "namespaceUri":Ljava/lang/String;
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_e4
    move-object/from16 v8, v16

    move/from16 v7, v17

    goto/16 :goto_182

    .line 112
    .end local v16    # "val":Ljava/lang/String;
    .end local v17    # "noReplyTimer":I
    .restart local v7    # "noReplyTimer":I
    .restart local v8    # "val":Ljava/lang/String;
    :cond_ea
    const-string v0, "ss:NoReplyTimer"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 113
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_15b

    .line 114
    const-string v0, "Got ss:NoReplyTimer"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    .line 116
    .restart local v13    # "prefix":Ljava/lang/String;
    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 117
    .restart local v14    # "namespaceUri":Ljava/lang/String;
    invoke-interface {v11, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/w3c/dom/Element;

    .line 119
    .restart local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    invoke-interface {v15}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v16

    .line 121
    .end local v8    # "val":Ljava/lang/String;
    .restart local v16    # "val":Ljava/lang/String;
    :try_start_11b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_123
    .catch Ljava/lang/NumberFormatException; {:try_start_11b .. :try_end_123} :catch_125

    move v7, v0

    .line 124
    goto :goto_12a

    .line 122
    :catch_125
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v7

    .line 126
    .end local v7    # "noReplyTimer":I
    .local v0, "noReplyTimer":I
    :goto_12a
    new-instance v8, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    const-string v4, "communication-diversion"

    move-object v1, v8

    move-object/from16 v2, p0

    move v6, v0

    move-object v7, v13

    move/from16 v17, v0

    move-object v0, v8

    .end local v0    # "noReplyTimer":I
    .restart local v17    # "noReplyTimer":I
    move-object v8, v14

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 128
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_14b

    .line 129
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 132
    :cond_14b
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_156

    .line 133
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 135
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "namespaceUri":Ljava/lang/String;
    .end local v15    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_156
    move-object/from16 v8, v16

    move/from16 v7, v17

    goto :goto_182

    .line 136
    .end local v16    # "val":Ljava/lang/String;
    .end local v17    # "noReplyTimer":I
    .restart local v7    # "noReplyTimer":I
    .restart local v8    # "val":Ljava/lang/String;
    :cond_15b
    new-instance v0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    const/4 v6, -0x1

    const-string v4, "communication-diversion"

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    .line 138
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_177

    .line 139
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 142
    :cond_177
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_182

    .line 143
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 149
    :cond_182
    :goto_182
    const-string v0, "ruleset"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 150
    .local v1, "ruleSetNode":Lorg/w3c/dom/NodeList;
    iget-object v2, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mPrefix:Ljava/lang/String;

    const-string v3, "communication-diversion"

    if-eqz v2, :cond_1a4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1a4
    move-object v2, v3

    .line 151
    .local v2, "tmpNodeName":Ljava/lang/String;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1da

    .line 152
    const-string v0, "Got ruleset"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 154
    .local v0, "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v3, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 155
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1cd

    .line 156
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 159
    :cond_1cd
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_1d8

    .line 160
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 162
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_1d8
    goto/16 :goto_26f

    .line 163
    :cond_1da
    const-string v3, "urn:ietf:params:xml:ns:common-policy"

    invoke-interface {v10, v3, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 164
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_214

    .line 165
    const-string v0, "Got ruleset with commmon policy namespace"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 167
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v3, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 169
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_208

    .line 170
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 173
    :cond_208
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_213

    .line 174
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 176
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_213
    goto :goto_26f

    .line 177
    :cond_214
    const-string v0, "cp:ruleset"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_24e

    .line 179
    const-string v0, "Got cp:ruleset"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 181
    .restart local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    new-instance v3, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v5, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    iput-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 183
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_242

    .line 184
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 187
    :cond_242
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v3, :cond_24d

    .line 188
    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 190
    .end local v0    # "nruleSetElement":Lorg/w3c/dom/Element;
    :cond_24d
    goto :goto_26f

    .line 191
    :cond_24e
    new-instance v0, Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v4, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v2, v4}, Lcom/mediatek/simservs/client/policy/RuleSet;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    .line 192
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_264

    .line 193
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 196
    :cond_264
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_26f

    .line 197
    iget-object v0, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v3, v9, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 202
    :cond_26f
    :goto_26f
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

    .line 342
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveNode(ZLcom/mediatek/simservs/client/policy/RuleSet;)V

    .line 343
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save: mEtag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommunicationDiversion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 348
    :cond_2f
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

    .line 323
    if-eqz p1, :cond_57

    .line 324
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "ruleXml":Ljava/lang/String;
    const-string v1, "CommunicationDiversion"

    if-nez v0, :cond_21

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRule: null xml string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 329
    :cond_21
    iget-boolean v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mHasXcapNS:Z

    invoke-virtual {p1, v0, v2}, Lcom/mediatek/simservs/client/policy/Rule;->setContent(Ljava/lang/String;Z)V

    .line 330
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 331
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getEtag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRule: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 336
    .end local v0    # "ruleXml":Ljava/lang/String;
    :cond_56
    goto :goto_5e

    .line 337
    :cond_57
    const-string v0, "saveRule"

    const-string v1, "rule is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_5e
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

    .line 302
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 303
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 304
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

    .line 305
    .local v2, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, v2, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 306
    invoke-virtual {p0, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 307
    goto :goto_2d

    .line 309
    .end local v2    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_2c
    goto :goto_14

    .line 310
    .end local v0    # "rules":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_2d
    :goto_2d
    goto :goto_35

    .line 311
    :cond_2e
    const-string v0, "saveRule"

    const-string v1, "ruleId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
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

    .line 263
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "ruleXml":Ljava/lang/String;
    const-string v1, "CommunicationDiversion"

    if-nez v0, :cond_10

    .line 265
    const-string v2, "saveRuleSet: null xml string"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 268
    :cond_10
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->setContent(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 270
    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getEtag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveRuleSet: mEtag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setEtag(Ljava/lang/String;)V

    .line 275
    :cond_49
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 5
    .param p1, "network"    # Landroid/net/Network;

    .line 210
    invoke-super {p0, p1}, Lcom/mediatek/simservs/client/SimservType;->setNetwork(Landroid/net/Network;)V

    .line 211
    if-eqz p1, :cond_45

    .line 212
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    const-string v1, "SimservType"

    if-eqz v0, :cond_26

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mNoReplyTimer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setNetwork(Landroid/net/Network;)V

    .line 216
    :cond_26
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    if-eqz v0, :cond_45

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid to mRuleSet:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->setNetwork(Landroid/net/Network;)V

    .line 221
    :cond_45
    return-void
.end method

.method public setNoReplyTimer(IZ)V
    .registers 6
    .param p1, "timerValue"    # I
    .param p2, "isSentToNW"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setValue(I)V

    .line 235
    if-eqz p2, :cond_41

    .line 236
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->toXmlString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "noReplyTimerXml":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1, v0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->setContent(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 239
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mNoReplyTimer:Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getEtag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoReplyTimer: mEtag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommunicationDiversion"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mRuleSet:Lcom/mediatek/simservs/client/policy/RuleSet;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->setEtag(Ljava/lang/String;)V

    .line 244
    .end local v0    # "noReplyTimerXml":Ljava/lang/String;
    :cond_41
    return-void
.end method
