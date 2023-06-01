.class public Lcom/mediatek/simservs/client/policy/RuleSet;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "RuleSet.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:ruleset"

.field public static final NODE_NAME_WITH_NAMESPACE:Ljava/lang/String; = "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"


# instance fields
.field public mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 5
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/mediatek/simservs/client/policy/RuleSet;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 60
    return-void
.end method

.method private unfoldRules(Lcom/mediatek/simservs/client/policy/Rule;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 10
    .param p1, "aRule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "media"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v0

    const-string v1, "cp:ruleset"

    const-string v2, "/"

    if-eqz v0, :cond_50

    .line 203
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 205
    .local v0, "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_34

    .line 206
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 208
    :cond_34
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 209
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 210
    if-eqz p3, :cond_4b

    .line 211
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 214
    :cond_4b
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v0    # "ruleBusy":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_50
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 217
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 219
    .local v0, "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_80

    .line 220
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 222
    :cond_80
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 223
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 224
    if-eqz p3, :cond_97

    .line 225
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 228
    :cond_97
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v0    # "ruleNotReachable":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_9c
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 231
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 233
    .local v0, "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_cc

    .line 234
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 236
    :cond_cc
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 237
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 238
    if-eqz p3, :cond_e3

    .line 239
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 242
    :cond_e3
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v0    # "ruleInternational":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_e8
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 245
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 247
    .local v0, "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_118

    .line 248
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 250
    :cond_118
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 251
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    .line 252
    if-eqz p3, :cond_12f

    .line 253
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 256
    :cond_12f
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v0    # "ruleInternationalExHc":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_134
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 260
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 262
    .local v0, "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_164

    .line 263
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v3}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 265
    :cond_164
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 266
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 267
    if-eqz p3, :cond_17b

    .line 268
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 271
    :cond_17b
    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v0    # "ruleNoAnswer":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_180
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 274
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2, p2}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 276
    .local v0, "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1b0

    .line 277
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 279
    :cond_1b0
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->clearConditions()V

    .line 280
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 281
    if-eqz p3, :cond_1c7

    .line 282
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 285
    :cond_1c7
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v0    # "ruleRoaming":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1cc
    return-void
.end method


# virtual methods
.method public clearRules()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 320
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 322
    :cond_b
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    return-void
.end method

.method public createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 301
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 303
    :cond_b
    new-instance v0, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cp:ruleset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_35

    .line 305
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 307
    :cond_35
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 308
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 310
    :cond_3e
    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setId(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "cp:ruleset?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .registers 14
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .line 70
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    .line 71
    .local v0, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "rule"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 72
    .local v2, "domNodes":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "cp:ruleset"

    const-string v5, "/"

    const-string v6, "RuleSet"

    if-lez v3, :cond_65

    .line 74
    const-string v3, "Got rule"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_65

    .line 76
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 77
    .local v7, "element":Lorg/w3c/dom/Element;
    new-instance v8, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 79
    .local v8, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_54

    .line 80
    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 83
    :cond_54
    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v9, :cond_5d

    .line 84
    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 87
    :cond_5d
    iget-object v9, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v7    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 91
    .end local v3    # "i":I
    :cond_65
    const-string v3, "urn:ietf:params:xml:ns:common-policy"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 92
    .end local v2    # "domNodes":Lorg/w3c/dom/NodeList;
    .local v1, "domNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_bb

    .line 93
    const-string v2, "Got rule with common policy namespace"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_77
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_ba

    .line 95
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 96
    .local v3, "element":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 98
    .local v7, "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v8, :cond_a9

    .line 99
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v7, v8}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 102
    :cond_a9
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v8, :cond_b2

    .line 103
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 106
    :cond_b2
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .end local v2    # "i":I
    :cond_ba
    goto :goto_110

    .line 109
    :cond_bb
    const-string v2, "cp:rule"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_110

    .line 111
    const-string v2, "Got cp:rule"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_cd
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_110

    .line 113
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 114
    .restart local v3    # "element":Lorg/w3c/dom/Element;
    new-instance v7, Lcom/mediatek/simservs/client/policy/Rule;

    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mParentUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mIntendedId:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v3}, Lcom/mediatek/simservs/client/policy/Rule;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 116
    .restart local v7    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    if-eqz v8, :cond_ff

    .line 117
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mNetwork:Landroid/net/Network;

    invoke-virtual {v7, v8}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 120
    :cond_ff
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    if-eqz v8, :cond_108

    .line 121
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 124
    :cond_108
    iget-object v8, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "aRule":Lcom/mediatek/simservs/client/policy/Rule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 129
    .end local v2    # "i":I
    :cond_110
    :goto_110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rules size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "domElement":Lorg/w3c/dom/Element;
    .end local v1    # "domNodes":Lorg/w3c/dom/NodeList;
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 6
    .param p1, "etag"    # Ljava/lang/String;

    .line 367
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mEtag:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 370
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", set etag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuleSet"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setEtag(Ljava/lang/String;)V

    .line 372
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    goto :goto_8

    .line 373
    :cond_38
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 381
    invoke-super {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->setNetwork(Landroid/net/Network;)V

    .line 383
    if-eqz p1, :cond_3b

    .line 384
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 385
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", netid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RuleSet"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v1, p1}, Lcom/mediatek/simservs/client/policy/Rule;->setNetwork(Landroid/net/Network;)V

    .line 387
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    goto :goto_b

    .line 389
    :cond_3b
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 9

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "root":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 333
    .local v1, "xmlString":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 335
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_6
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 336
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 337
    .local v4, "document":Lorg/w3c/dom/Document;
    const-string v5, "cp:ruleset"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v0, v5

    .line 338
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 340
    iget-object v5, p0, Lcom/mediatek/simservs/client/policy/RuleSet;->mRules:Ljava/util/List;

    if-eqz v5, :cond_35

    .line 341
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 342
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 343
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/simservs/client/policy/Rule;

    .line 344
    .local v6, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v6, v4}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 345
    .local v7, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 346
    nop

    .end local v6    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v7    # "ruleElement":Lorg/w3c/dom/Element;
    goto :goto_20

    .line 348
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_35
    invoke-virtual {p0, v0}, Lcom/mediatek/simservs/client/policy/RuleSet;->domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_39} :catch_45
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_6 .. :try_end_39} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_39} :catch_3b

    move-object v1, v5

    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    goto :goto_49

    .line 354
    :catch_3b
    move-exception v3

    .line 355
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_4a

    .line 352
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :catch_40
    move-exception v3

    .line 353
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    .end local v3    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    goto :goto_49

    .line 349
    :catch_45
    move-exception v3

    .line 351
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 356
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_49
    nop

    .line 357
    :goto_4a
    return-object v1
.end method
