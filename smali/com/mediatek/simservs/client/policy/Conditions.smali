.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field static final TAG_TIME:Ljava/lang/String; = "time"


# instance fields
.field public mComprehendAnonymous:Z

.field public mComprehendBusy:Z

.field public mComprehendCommunicationDiverted:Z

.field public mComprehendInternational:Z

.field public mComprehendInternationalexHc:Z

.field public mComprehendNoAnswer:Z

.field public mComprehendNotReachable:Z

.field public mComprehendNotRegistered:Z

.field public mComprehendPresenceStatus:Z

.field public mComprehendRoaming:Z

.field public mComprehendRuleDeactivated:Z

.field public mComprehendTime:Ljava/lang/String;

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 6
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 77
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 78
    return-void
.end method


# virtual methods
.method public addAnonymous()V
    .registers 2

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 577
    return-void
.end method

.method public addBusy()V
    .registers 2

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 497
    return-void
.end method

.method public addCommunicationDiverted()V
    .registers 2

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 561
    return-void
.end method

.method public addInternational()V
    .registers 2

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 545
    return-void
.end method

.method public addInternationalExHc()V
    .registers 2

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 553
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .registers 3
    .param p1, "media"    # Ljava/lang/String;

    .line 706
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_b

    .line 707
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 709
    :cond_b
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public addNoAnswer()V
    .registers 2

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 505
    return-void
.end method

.method public addNotReachable()V
    .registers 2

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 513
    return-void
.end method

.method public addNotRegistered()V
    .registers 2

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 521
    return-void
.end method

.method public addPresenceStatus()V
    .registers 2

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 569
    return-void
.end method

.method public addRoaming()V
    .registers 2

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 529
    return-void
.end method

.method public addRuleDeactivated()V
    .registers 2

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 537
    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "time"    # Ljava/lang/String;

    .line 688
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public clearConditions()V
    .registers 3

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 722
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 723
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 724
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 725
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 726
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 727
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 728
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 729
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 730
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v1, :cond_1e

    .line 731
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 734
    :cond_1e
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 735
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public comprehendAnonymous()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    return v0
.end method

.method public comprehendBusy()Z
    .registers 2

    .line 589
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .registers 2

    .line 661
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .registers 2

    .line 643
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .registers 2

    .line 652
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .registers 2

    .line 598
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .registers 2

    .line 607
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .registers 2

    .line 616
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .registers 2

    .line 670
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .registers 2

    .line 625
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .registers 2

    .line 634
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    return v0
.end method

.method public comprehendTime()Ljava/lang/String;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 82
    const-string v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 11
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 87
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 88
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "ss:"

    .line 90
    .local v1, "conditionsPrefix":Ljava/lang/String;
    const-string v2, "busy"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 91
    .local v3, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const-string v5, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const/4 v6, 0x1

    if-lez v4, :cond_17

    .line 92
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto :goto_3f

    .line 94
    :cond_17
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 95
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_24

    .line 96
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto :goto_3f

    .line 98
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 99
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3f

    .line 100
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 105
    :cond_3f
    :goto_3f
    const-string v2, "no-answer"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 106
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_4e

    .line 107
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto :goto_76

    .line 109
    :cond_4e
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_5b

    .line 111
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto :goto_76

    .line 113
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 114
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_76

    .line 115
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 120
    :cond_76
    :goto_76
    const-string v2, "not-reachable"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 121
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_85

    .line 122
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto :goto_ad

    .line 124
    :cond_85
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 125
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_92

    .line 126
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto :goto_ad

    .line 128
    :cond_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 130
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_ad

    .line 131
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 136
    :cond_ad
    :goto_ad
    const-string v2, "not-registered"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 137
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_bc

    .line 138
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto :goto_e4

    .line 140
    :cond_bc
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 141
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_c9

    .line 142
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto :goto_e4

    .line 144
    :cond_c9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 146
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_e4

    .line 147
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 152
    :cond_e4
    :goto_e4
    const-string v2, "roaming"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 153
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_f3

    .line 154
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto :goto_11b

    .line 156
    :cond_f3
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 157
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_100

    .line 158
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto :goto_11b

    .line 160
    :cond_100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 161
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_11b

    .line 162
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 168
    :cond_11b
    :goto_11b
    const-string v2, "rule-deactivated"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 169
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_12a

    .line 170
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto :goto_152

    .line 172
    :cond_12a
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 174
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_137

    .line 175
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto :goto_152

    .line 177
    :cond_137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 179
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_152

    .line 180
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 186
    :cond_152
    :goto_152
    const-string v2, "international"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 187
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_161

    .line 188
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto :goto_189

    .line 190
    :cond_161
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_16e

    .line 192
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto :goto_189

    .line 194
    :cond_16e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 196
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_189

    .line 197
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 203
    :cond_189
    :goto_189
    const-string v2, "international-exHC"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 204
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_198

    .line 205
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto :goto_1c0

    .line 207
    :cond_198
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 209
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1a5

    .line 210
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto :goto_1c0

    .line 212
    :cond_1a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 214
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1c0

    .line 215
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 220
    :cond_1c0
    :goto_1c0
    const-string v2, "communication-diverted"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 221
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1cf

    .line 222
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto :goto_1f7

    .line 224
    :cond_1cf
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 226
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_1dc

    .line 227
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto :goto_1f7

    .line 229
    :cond_1dc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 231
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1f7

    .line 232
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 237
    :cond_1f7
    :goto_1f7
    const-string v2, "presence-status"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 238
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_206

    .line 239
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto :goto_22e

    .line 241
    :cond_206
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 242
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_213

    .line 243
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto :goto_22e

    .line 245
    :cond_213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 247
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_22e

    .line 248
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 253
    :cond_22e
    :goto_22e
    const-string v2, "media"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 254
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 255
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_25b

    .line 256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_242
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_25a

    .line 257
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 258
    .local v4, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    add-int/lit8 v2, v2, 0x1

    goto :goto_242

    .end local v2    # "i":I
    :cond_25a
    goto :goto_2b1

    .line 261
    :cond_25b
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 262
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_27f

    .line 263
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_266
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_27e

    .line 264
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 265
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    add-int/lit8 v2, v2, 0x1

    goto :goto_266

    .end local v2    # "i":I
    :cond_27e
    goto :goto_2b1

    .line 268
    :cond_27f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 269
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2b1

    .line 270
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_299
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_2b1

    .line 271
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 272
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v7, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    add-int/lit8 v2, v2, 0x1

    goto :goto_299

    .line 278
    .end local v2    # "i":I
    :cond_2b1
    :goto_2b1
    const-string v2, "anonymous"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 279
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2c0

    .line 280
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_2e8

    .line 282
    :cond_2c0
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 283
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2cd

    .line 284
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_2e8

    .line 286
    :cond_2cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 287
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2e8

    .line 288
    iput-boolean v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 293
    :cond_2e8
    :goto_2e8
    const-string v2, "time"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 294
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v6, 0x0

    if-lez v4, :cond_302

    .line 295
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 296
    .local v2, "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 297
    .end local v2    # "timeElement":Lorg/w3c/dom/Element;
    goto :goto_33e

    .line 298
    :cond_302
    invoke-interface {v0, v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 299
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_319

    .line 300
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 301
    .restart local v2    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 302
    .end local v2    # "timeElement":Lorg/w3c/dom/Element;
    goto :goto_33e

    .line 303
    :cond_319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 304
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_33e

    .line 305
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 306
    .restart local v2    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 311
    .end local v2    # "timeElement":Lorg/w3c/dom/Element;
    :cond_33e
    :goto_33e
    return-void
.end method

.method public removeRuleDeactivated()V
    .registers 2

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 581
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 320
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cp:conditions"

    if-eqz v1, :cond_105

    .line 323
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 325
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    if-eqz v2, :cond_27

    .line 326
    const-string v2, "ss:busy"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 328
    .local v2, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 331
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_27
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 332
    const-string v2, "ss:no-answer"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 334
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 337
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_36
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 338
    const-string v2, "ss:not-reachable"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 340
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 343
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_45
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 344
    const-string v2, "ss:not-registered"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 346
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 349
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_54
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 350
    const-string v2, "ss:roaming"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 352
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 355
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_63
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 356
    const-string v2, "ss:rule-deactivated"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 358
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 361
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_72
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 362
    const-string v2, "ss:international"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 364
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 367
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_81
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 368
    const-string v2, "ss:international-exHC"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 370
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 373
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_90
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 374
    const-string v2, "ss:communication-diverted"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 376
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 379
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_9f
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 380
    const-string v2, "ss:presence-status"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 382
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 385
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_ae
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v2, :cond_d7

    .line 386
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d7

    .line 387
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 388
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 389
    const-string v4, "ss:media"

    invoke-interface {p1, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 391
    .local v4, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 392
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 393
    .end local v4    # "ruleElement":Lorg/w3c/dom/Element;
    goto :goto_be

    .line 397
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d7
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 398
    const-string v2, "ss:anonymous"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 400
    .local v2, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 403
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_e6
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_104

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_104

    .line 404
    const-string v2, "ss:time"

    invoke-interface {p1, v3, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 406
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 407
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 410
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_104
    return-object v1

    .line 412
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_105
    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 414
    .restart local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    if-eqz v2, :cond_118

    .line 415
    const-string v2, "busy"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 416
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 419
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_118
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 420
    const-string v2, "no-answer"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 421
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 424
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_127
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 425
    const-string v2, "not-reachable"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 426
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_136
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 430
    const-string v2, "not-registered"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 431
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 434
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_145
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v2

    if-eqz v2, :cond_154

    .line 435
    const-string v2, "roaming"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 436
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 439
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_154
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-eqz v2, :cond_163

    .line 440
    const-string v2, "rule-deactivated"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 441
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 444
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_163
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v2

    if-eqz v2, :cond_172

    .line 445
    const-string v2, "international"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 446
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 449
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_172
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v2

    if-eqz v2, :cond_181

    .line 450
    const-string v2, "international-exHC"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 451
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 454
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_181
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v2

    if-eqz v2, :cond_191

    .line 455
    nop

    .line 456
    const-string v2, "communication-diverted"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 457
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 460
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_191
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 461
    const-string v2, "presence-status"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 462
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 465
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1a0
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v2, :cond_1c9

    .line 466
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c9

    .line 467
    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 468
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1b0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 469
    const-string v3, "media"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 470
    .local v3, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 471
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 472
    .end local v3    # "ruleElement":Lorg/w3c/dom/Element;
    goto :goto_1b0

    .line 476
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1c9
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 477
    const-string v2, "anonymous"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 478
    .local v2, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1d8
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f6

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 482
    const-string v2, "time"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 483
    .restart local v2    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 484
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    .end local v2    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1f6
    return-object v1
.end method
