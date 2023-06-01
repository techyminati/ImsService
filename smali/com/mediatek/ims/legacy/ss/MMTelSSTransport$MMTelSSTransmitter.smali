.class Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
.super Landroid/os/Handler;
.source "MMTelSSTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMTelSSTransmitter"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 593
    iput-object p1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 594
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 598
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->dataLength:[B

    .line 595
    return-void
.end method

.method private modifyCFRuleForSeperateMedia(Ljava/util/List;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;)I
    .registers 29
    .param p2, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "reason"    # I
    .param p4, "action"    # I
    .param p5, "serviceClass"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "time"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1823
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCFRuleForSeperateMedia() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    move/from16 v13, p4

    invoke-virtual {v9, v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    invoke-virtual {v9, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-static/range {p6 .. p6}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-virtual/range {p2 .. p2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v8

    .line 1829
    .local v8, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1830
    .local v7, "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1831
    .local v0, "findNotMatch":Z
    const/4 v2, 0x0

    .line 1832
    .local v2, "r":I
    const/4 v3, 0x0

    move v6, v0

    move/from16 v16, v2

    .end local v0    # "findNotMatch":Z
    .end local v2    # "r":I
    .local v3, "i":I
    .local v6, "findNotMatch":Z
    .local v16, "r":I
    :goto_6c
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a2

    .line 1833
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1834
    .local v0, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFType(Lcom/mediatek/simservs/client/policy/Conditions;)I

    move-result v2

    if-ne v2, v11, :cond_9f

    .line 1835
    invoke-virtual {v9, v0, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I

    move-result v2

    .line 1836
    .local v2, "isMatchMedia":I
    if-eqz v2, :cond_90

    .line 1837
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 1839
    :cond_90
    const/4 v6, 0x1

    .line 1843
    :goto_91
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_97

    .line 1844
    or-int/lit8 v16, v16, 0x1

    .line 1846
    :cond_97
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_9f

    .line 1847
    or-int/lit8 v4, v16, 0x2

    move/from16 v16, v4

    .line 1832
    .end local v0    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v2    # "isMatchMedia":I
    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 1852
    .end local v3    # "i":I
    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyRuleIdx size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", findNotMatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_121

    .line 1856
    if-eqz v6, :cond_119

    .line 1857
    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_f2

    .line 1858
    const/16 v4, 0x200

    const-string v17, "_VIDEO"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v18, v6

    .end local v6    # "findNotMatch":Z
    .local v18, "findNotMatch":Z
    move/from16 v6, p7

    move-object/from16 v19, v7

    .end local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v19, "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, p8

    move-object v9, v8

    .end local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v9, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v17, v19

    goto/16 :goto_15f

    .line 1860
    .end local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v18    # "findNotMatch":Z
    .end local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "findNotMatch":Z
    .restart local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_f2
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v9, v8

    .end local v6    # "findNotMatch":Z
    .end local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v18    # "findNotMatch":Z
    .restart local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_116

    .line 1861
    const/4 v4, 0x1

    const-string v8, "_AUDIO"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v17, v19

    goto :goto_15f

    .line 1860
    :cond_116
    move-object/from16 v17, v19

    goto :goto_15f

    .line 1856
    .end local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v18    # "findNotMatch":Z
    .end local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "findNotMatch":Z
    .restart local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_119
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v9, v8

    .end local v6    # "findNotMatch":Z
    .end local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v18    # "findNotMatch":Z
    .restart local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v17, v19

    goto :goto_15f

    .line 1867
    .end local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v18    # "findNotMatch":Z
    .end local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "findNotMatch":Z
    .restart local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_121
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v9, v8

    .end local v6    # "findNotMatch":Z
    .end local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v9    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v18    # "findNotMatch":Z
    .restart local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_128
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_15d

    .line 1868
    move-object/from16 v7, v19

    .end local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v17, v7

    .end local v7    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyMatchedCFRule(Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1867
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v17

    goto :goto_128

    .end local v17    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_15d
    move-object/from16 v17, v19

    .line 1873
    .end local v8    # "i":I
    .end local v19    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "modifyRuleIdx":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_15f
    return v16
.end method


# virtual methods
.method public actionCFToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "action"    # I

    .line 1542
    if-nez p1, :cond_5

    .line 1543
    const-string v0, "Disable"

    return-object v0

    .line 1544
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1545
    const-string v0, "Enable"

    return-object v0

    .line 1546
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 1547
    const-string v0, "UNUSED"

    return-object v0

    .line 1548
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 1549
    const-string v0, "Registration"

    return-object v0

    .line 1550
    :cond_17
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    .line 1551
    const-string v0, "Erasure"

    return-object v0

    .line 1553
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cacheIdxToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "idx"    # I

    .line 1223
    packed-switch p1, :pswitch_data_32

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1239
    :pswitch_19
    const-string v0, "TIR"

    return-object v0

    .line 1237
    :pswitch_1c
    const-string v0, "TIP"

    return-object v0

    .line 1235
    :pswitch_1f
    const-string v0, "OIR"

    return-object v0

    .line 1233
    :pswitch_22
    const-string v0, "OIP"

    return-object v0

    .line 1231
    :pswitch_25
    const-string v0, "CW"

    return-object v0

    .line 1229
    :pswitch_28
    const-string v0, "ICB"

    return-object v0

    .line 1227
    :pswitch_2b
    const-string v0, "OCB"

    return-object v0

    .line 1225
    :pswitch_2e
    const-string v0, "CF"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method public cbTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "cbType"    # I

    .line 1031
    packed-switch p1, :pswitch_data_16

    .line 1043
    const-string v0, "ERR"

    return-object v0

    .line 1041
    :pswitch_6
    const-string v0, "CB_ALL"

    return-object v0

    .line 1039
    :pswitch_9
    const-string v0, "CB_MT"

    return-object v0

    .line 1037
    :pswitch_c
    const-string v0, "CB_MO"

    return-object v0

    .line 1035
    :pswitch_f
    const-string v0, "ICB"

    return-object v0

    .line 1033
    :pswitch_12
    const-string v0, "OCB"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public clearCache(I)V
    .registers 5
    .param p1, "idx"    # I

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cacheIdxToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 1338
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$700(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[I

    move-result-object v0

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1339
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$800(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[J

    move-result-object v0

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 1340
    return-void
.end method

.method public convertCFInfo(Z[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)Ljava/lang/Object;
    .registers 8
    .param p1, "isGetTimeSlot"    # Z
    .param p2, "infos"    # [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 1203
    const/4 v0, 0x0

    if-nez p2, :cond_5

    .line 1204
    new-array p2, v0, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 1206
    :cond_5
    if-eqz p1, :cond_8

    .line 1207
    return-object p2

    .line 1209
    :cond_8
    array-length v1, p2

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1210
    .local v1, "result":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, p2

    if-ge v2, v3, :cond_45

    .line 1211
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 1212
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1213
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1214
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1215
    aget-object v3, v1, v2

    iput v0, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1216
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget-object v4, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1217
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1219
    .end local v2    # "i":I
    :cond_45
    return-object v1
.end method

.method public convertCFNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 2186
    const-string v0, "sips:"

    const-string v1, "MMTelSS"

    const-string v2, "sip:"

    const-string v3, "tel:"

    if-eqz p1, :cond_df

    .line 2187
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 2188
    .local v4, "isContainPlus":Z
    const-string v5, "phone-context"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2189
    .local v5, "isContainContext":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2190
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v6, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v6, 0x1

    .line 2191
    .local v6, "isURIFormat":Z
    :goto_2c
    const/4 v7, 0x0

    .line 2193
    .local v7, "isPhoneContextNeed":Z
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v8, v8, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {p2, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->getXui(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2194
    .local v8, "domain":Ljava/lang/String;
    const-string v9, "@"

    if-nez v4, :cond_74

    if-nez v5, :cond_74

    .line 2195
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 2196
    .local v10, "offset":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_49

    .line 2197
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2198
    const/4 v7, 0x1

    .line 2200
    :cond_49
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/SuppSrvConfig;->getPhoneContext()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_60

    .line 2201
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/SuppSrvConfig;->getPhoneContext()Ljava/lang/String;

    move-result-object v8

    .line 2202
    const/4 v7, 0x1

    .line 2204
    :cond_60
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "domain:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .end local v10    # "offset":I
    :cond_74
    if-eqz v7, :cond_ce

    .line 2208
    const-string v10, ";phone-context="

    if-nez v6, :cond_bb

    .line 2209
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/mediatek/ims/SuppSrvConfig;->isFwdNumUseSipUri()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 2210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";user=phone"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_df

    .line 2213
    :cond_a5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_df

    .line 2216
    :cond_bb
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_df

    .line 2219
    :cond_ce
    if-nez v6, :cond_df

    .line 2220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2225
    .end local v4    # "isContainPlus":Z
    .end local v5    # "isContainContext":Z
    .end local v6    # "isURIFormat":Z
    .end local v7    # "isPhoneContextNeed":Z
    .end local v8    # "domain":Ljava/lang/String;
    :cond_df
    :goto_df
    const-string v4, "persist.vendor.radio.xcap.cfn"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2226
    .local v4, "XcapCFNum":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f9

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 2227
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 2228
    :cond_f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCF():get call forwarding num from EM setting:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const-string v0, "persist.vendor.radio.ss.mode"

    const-string v2, "Prefer XCAP"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2231
    .local v0, "ss_mode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCF():ss_mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2233
    move-object p1, v4

    .line 2236
    .end local v0    # "ss_mode":Ljava/lang/String;
    :cond_130
    return-object p1
.end method

.method public convertServiceClass(I)I
    .registers 4
    .param p1, "serviceClass"    # I

    .line 2240
    move v0, p1

    .line 2242
    .local v0, "r":I
    const/16 v1, 0x210

    if-ne p1, v1, :cond_7

    .line 2244
    const/16 v0, 0x200

    .line 2246
    :cond_7
    return v0
.end method

.method public convertToLocalTime(Ljava/lang/String;)[J
    .registers 10
    .param p1, "timeSlotString"    # Ljava/lang/String;

    .line 2802
    const/4 v0, 0x0

    .line 2803
    .local v0, "timeSlot":[J
    if-eqz p1, :cond_38

    .line 2804
    const-string v1, ","

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2805
    .local v1, "timeArray":[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v2, :cond_38

    .line 2806
    new-array v0, v2, [J

    .line 2807
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_38

    .line 2808
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2809
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2811
    :try_start_22
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 2812
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    aput-wide v6, v0, v3
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_22 .. :try_end_2e} :catch_32

    .line 2816
    .end local v5    # "date":Ljava/util/Date;
    nop

    .line 2807
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2813
    .restart local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_32
    move-exception v2

    .line 2814
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 2815
    const/4 v5, 0x0

    return-object v5

    .line 2820
    .end local v1    # "timeArray":[Ljava/lang/String;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "i":I
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_38
    return-object v0
.end method

.method public convertToSeverTime([J)Ljava/lang/String;
    .registers 8
    .param p1, "timeSlot"    # [J

    .line 2824
    const/4 v0, 0x0

    .line 2825
    .local v0, "timeSlotString":Ljava/lang/String;
    if-eqz p1, :cond_46

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    goto :goto_46

    .line 2828
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_45

    .line 2829
    new-instance v2, Ljava/util/Date;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2830
    .local v2, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2831
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+8"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2832
    if-nez v1, :cond_2a

    .line 2833
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 2835
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2828
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2838
    .end local v1    # "i":I
    :cond_45
    return-object v0

    .line 2826
    :cond_46
    :goto_46
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertUriToNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;

    .line 2153
    move-object v0, p1

    .line 2154
    .local v0, "r":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, ";"

    const-string v3, ":"

    if-eqz p1, :cond_43

    const-string v4, "sip:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "sips:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2155
    :cond_18
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2156
    .local v2, "offset":I
    if-ne v2, v1, :cond_22

    .line 2157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2159
    :cond_22
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2160
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2161
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2163
    .end local v2    # "offset":I
    :cond_42
    goto :goto_61

    :cond_43
    if-eqz p1, :cond_42

    const-string v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 2164
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2165
    .restart local v2    # "offset":I
    if-ne v2, v1, :cond_57

    .line 2166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2168
    :cond_57
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2170
    .end local v2    # "offset":I
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertUriToNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->SENLOG:Z
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1100()Z

    move-result v2

    if-nez v2, :cond_73

    move-object v2, v0

    goto :goto_75

    :cond_73
    const-string v2, "[hidden]"

    :goto_75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MMTelSS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return-object v0
.end method

.method public createCBRule(ILcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;
    .registers 10
    .param p1, "modifiedRuleService"    # I
    .param p2, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "lockState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCBRule()  modifiedRuleService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2446
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifiedServiceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    const/4 v1, 0x1

    if-ne p5, v1, :cond_24

    const-string v2, "Enable"

    goto :goto_26

    :cond_24
    const-string v2, "Disable"

    :goto_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2445
    const-string v2, "MMTelSS"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2452
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_4f

    .line 2453
    invoke-virtual {p0, p2, p3, v1, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCBRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73

    .line 2455
    :cond_4f
    and-int/lit16 v1, p4, 0x200

    if-eqz v1, :cond_5d

    .line 2456
    const/16 v1, 0x200

    invoke-virtual {p0, p2, p3, v1, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCBRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_73

    .line 2458
    :cond_5d
    if-nez p4, :cond_73

    .line 2462
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceNeedToCreate(I)[I

    move-result-object v1

    .line 2463
    .local v1, "serviceNeedCreate":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    array-length v3, v1

    if-ge v2, v3, :cond_73

    .line 2464
    aget v3, v1, v2

    invoke-virtual {p0, p2, p3, v3, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCBRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2463
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 2470
    .end local v1    # "serviceNeedCreate":[I
    .end local v2    # "i":I
    :cond_73
    :goto_73
    return-object v0
.end method

.method public createCBRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;
    .registers 10
    .param p1, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "lockState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCBRuleForService() facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    const/4 v1, 0x1

    if-ne p4, v1, :cond_18

    const-string v1, "Enable"

    goto :goto_1a

    :cond_18
    const-string v1, "Disable"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2420
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2418
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {p1, p2}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v1

    .line 2423
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2424
    .local v2, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2427
    .local v3, "act":Lcom/mediatek/simservs/client/policy/Actions;
    const-string v4, "OI"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2428
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternational()V

    goto :goto_66

    .line 2429
    :cond_4f
    const-string v4, "OX"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2430
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addInternationalExHc()V

    goto :goto_66

    .line 2431
    :cond_5b
    const-string v4, "IR"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2432
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRoaming()V

    .line 2435
    :cond_66
    :goto_66
    invoke-virtual {p0, v2, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->setMedia(Lcom/mediatek/simservs/client/policy/Conditions;I)V

    .line 2437
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    .line 2439
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2440
    return-object v0
.end method

.method public createCFRule(ILcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 29
    .param p1, "modifiedRuleService"    # I
    .param p2, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "reason"    # I
    .param p4, "action"    # I
    .param p5, "serviceClass"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "time"    # I
    .param p8, "timeSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2044
    move-object/from16 v9, p0

    move/from16 v10, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCFRule() modifiedRuleService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifiedServiceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    move/from16 v11, p3

    invoke-virtual {v9, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    move/from16 v12, p4

    invoke-virtual {v9, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual {v9, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-static/range {p6 .. p6}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2044
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 2053
    .local v15, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_8a

    .line 2054
    const/4 v4, 0x1

    const-string v8, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_10c

    .line 2056
    :cond_8a
    and-int/lit16 v0, v10, 0x200

    const/4 v8, 0x2

    if-eqz v0, :cond_bc

    .line 2057
    const-string v0, ""

    .line 2058
    .local v0, "ruleIdPostfix":Ljava/lang/String;
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v1

    if-ne v1, v8, :cond_a0

    .line 2059
    const-string v0, "_VIDEO"

    move-object/from16 v16, v0

    goto :goto_a2

    .line 2058
    :cond_a0
    move-object/from16 v16, v0

    .line 2061
    .end local v0    # "ruleIdPostfix":Ljava/lang/String;
    .local v16, "ruleIdPostfix":Ljava/lang/String;
    :goto_a2
    const/16 v4, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v16    # "ruleIdPostfix":Ljava/lang/String;
    goto :goto_10b

    .line 2063
    :cond_bc
    if-nez v10, :cond_10b

    .line 2067
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceNeedToCreate(I)[I

    move-result-object v7

    .line 2068
    .local v7, "serviceNeedCreate":[I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_c4
    array-length v0, v7

    if-ge v6, v0, :cond_106

    .line 2069
    const-string v0, ""

    .line 2070
    .restart local v0    # "ruleIdPostfix":Ljava/lang/String;
    aget v1, v7, v6

    const/16 v2, 0x200

    if-ne v1, v2, :cond_de

    .line 2071
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v1

    if-ne v1, v8, :cond_de

    .line 2072
    const-string v0, "_VIDEO"

    move-object/from16 v16, v0

    goto :goto_e0

    .line 2074
    :cond_de
    move-object/from16 v16, v0

    .end local v0    # "ruleIdPostfix":Ljava/lang/String;
    .restart local v16    # "ruleIdPostfix":Ljava/lang/String;
    :goto_e0
    aget v4, v7, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    move/from16 v6, p7

    move-object/from16 v18, v7

    .end local v7    # "serviceNeedCreate":[I
    .local v18, "serviceNeedCreate":[I
    move-object/from16 v7, p8

    move/from16 v19, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2068
    .end local v16    # "ruleIdPostfix":Ljava/lang/String;
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v7, v18

    move/from16 v8, v19

    .end local v17    # "i":I
    .restart local v6    # "i":I
    goto :goto_c4

    .end local v18    # "serviceNeedCreate":[I
    .restart local v7    # "serviceNeedCreate":[I
    :cond_106
    move/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "serviceNeedCreate":[I
    .restart local v17    # "i":I
    .restart local v18    # "serviceNeedCreate":[I
    goto :goto_10c

    .line 2063
    .end local v17    # "i":I
    .end local v18    # "serviceNeedCreate":[I
    :cond_10b
    :goto_10b
    nop

    .line 2079
    :goto_10c
    return-object v15
.end method

.method public createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p2, "reason"    # I
    .param p3, "action"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "timeSlot"    # Ljava/lang/String;
    .param p8, "ruleIdPostfix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCFRuleForService() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1930
    invoke-static {p5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1927
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->createNewRule(Ljava/lang/String;)Lcom/mediatek/simservs/client/policy/Rule;

    move-result-object v1

    .line 1934
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 1935
    .local v2, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->createActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 1937
    .local v3, "act":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {p0, v3, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->setForwardTo(Lcom/mediatek/simservs/client/policy/Actions;Ljava/lang/String;)V

    .line 1939
    packed-switch p2, :pswitch_data_b0

    :pswitch_78
    goto :goto_99

    .line 1956
    :pswitch_79
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotRegistered()V

    goto :goto_99

    .line 1953
    :pswitch_7d
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNotReachable()V

    .line 1954
    goto :goto_99

    .line 1946
    :pswitch_81
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addNoAnswer()V

    .line 1948
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/SuppSrvConfig;->isNoReplyTimeInsideCFAction()Z

    move-result v4

    if-eqz v4, :cond_99

    if-lez p6, :cond_99

    .line 1949
    invoke-virtual {v3, p6}, Lcom/mediatek/simservs/client/policy/Actions;->setNoReplyTimer(I)V

    goto :goto_99

    .line 1943
    :pswitch_94
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addBusy()V

    .line 1944
    goto :goto_99

    .line 1941
    :pswitch_98
    nop

    .line 1960
    :cond_99
    :goto_99
    invoke-virtual {p0, v2, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->setMedia(Lcom/mediatek/simservs/client/policy/Conditions;I)V

    .line 1962
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportTimeSlot()Z

    move-result v4

    if-eqz v4, :cond_ab

    if-eqz p7, :cond_ab

    .line 1963
    invoke-virtual {v2, p7}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 1966
    :cond_ab
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    return-object v0

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_98
        :pswitch_94
        :pswitch_81
        :pswitch_7d
        :pswitch_78
        :pswitch_78
        :pswitch_79
    .end packed-switch
.end method

.method public getCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;II)I
    .registers 22
    .param p1, "cb"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "phoneId"    # I

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCB() facility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cb="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 963
    const-string v7, "MMTelSS"

    invoke-static {v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v4, 0x0

    .line 968
    .local v4, "result":I
    const/4 v8, 0x0

    .line 969
    .local v8, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v9, 0x0

    .line 970
    .local v9, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v10

    .line 971
    .local v10, "cbType":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_52

    .line 972
    move-object v11, v1

    check-cast v11, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v8

    .line 973
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v9

    goto :goto_81

    .line 974
    :cond_52
    const/4 v11, 0x2

    if-ne v10, v11, :cond_61

    .line 975
    move-object v11, v1

    check-cast v11, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    invoke-virtual {v11}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v8

    .line 976
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v9

    goto :goto_81

    .line 978
    :cond_61
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCB() not support facility="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", cbType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-virtual {v0, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cbTypeToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 978
    invoke-static {v7, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :goto_81
    if-eqz v9, :cond_102

    .line 982
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_87
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_102

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/policy/Rule;

    .line 983
    .local v12, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v13

    .line 984
    .local v13, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v14

    .line 989
    .local v14, "act":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {v0, v10, v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBFacility(ILcom/mediatek/simservs/client/policy/Conditions;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_fd

    .line 990
    invoke-virtual {v0, v12, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I

    move-result v15

    if-eqz v15, :cond_fd

    .line 993
    const/4 v15, 0x0

    .line 994
    .local v15, "enable":Z
    if-eqz v14, :cond_be

    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/Actions;->isAllow()Z

    move-result v16

    if-nez v16, :cond_be

    if-eqz v13, :cond_bc

    .line 996
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v16

    if-nez v16, :cond_be

    .line 997
    :cond_bc
    or-int/2addr v4, v3

    .line 998
    const/4 v15, 0x1

    .line 1000
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCB() found rule: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", facility="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", status="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    if-eqz v15, :cond_e9

    const-string v6, "Enable"

    goto :goto_eb

    :cond_e9
    const-string v6, "Disable"

    :goto_eb
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", result="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-static {v7, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v12    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v13    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v14    # "act":Lcom/mediatek/simservs/client/policy/Actions;
    .end local v15    # "enable":Z
    :cond_fd
    move-object/from16 v1, p1

    move/from16 v6, p4

    goto :goto_87

    .line 1008
    :cond_102
    return v4
.end method

.method public getCBFacility(ILcom/mediatek/simservs/client/policy/Conditions;)Ljava/lang/String;
    .registers 7
    .param p1, "cbType"    # I
    .param p2, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;

    .line 930
    const/4 v0, 0x0

    .line 931
    .local v0, "r":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    .line 932
    if-nez p2, :cond_9

    .line 933
    const-string v0, "AO"

    goto :goto_34

    .line 934
    :cond_9
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 935
    const-string v0, "OI"

    goto :goto_34

    .line 936
    :cond_12
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 937
    const-string v0, "OX"

    goto :goto_34

    .line 939
    :cond_1b
    const-string v0, "AO"

    goto :goto_34

    .line 941
    :cond_1e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    .line 942
    if-nez p2, :cond_26

    .line 943
    const-string v0, "AI"

    goto :goto_34

    .line 944
    :cond_26
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 945
    const-string v0, "IR"

    goto :goto_34

    .line 947
    :cond_2f
    const-string v0, "AI"

    goto :goto_34

    .line 950
    :cond_32
    const-string v0, "ERR"

    .line 952
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCBFacility() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cbTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    if-nez p2, :cond_52

    const-string v2, ", cond=null"

    goto :goto_7f

    .line 957
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", OCB: international="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",internationalExHc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | ICB roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {p2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    const-string v2, "MMTelSS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-object v0
.end method

.method public getCBType(Ljava/lang/String;)I
    .registers 3
    .param p1, "facility"    # Ljava/lang/String;

    .line 1012
    const-string v0, "AO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1013
    const-string v0, "OI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1014
    const-string v0, "OX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4c

    .line 1016
    :cond_19
    const-string v0, "AI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1017
    const-string v0, "IR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_4a

    .line 1019
    :cond_2a
    const-string v0, "AG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1020
    const/4 v0, 0x3

    return v0

    .line 1021
    :cond_34
    const-string v0, "AC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1022
    const/4 v0, 0x4

    return v0

    .line 1023
    :cond_3e
    const-string v0, "AB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1024
    const/4 v0, 0x5

    return v0

    .line 1026
    :cond_48
    const/4 v0, 0x0

    return v0

    .line 1018
    :cond_4a
    :goto_4a
    const/4 v0, 0x2

    return v0

    .line 1015
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    return v0
.end method

.method public getCFInfo(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;
    .registers 22
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/CommunicationDiversion;",
            "III)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/MtkCallForwardInfo;",
            ">;"
        }
    .end annotation

    .line 1115
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCFInfo() reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    const-string v6, "MMTelSS"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v3, 0x0

    .line 1119
    .local v3, "found":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v8

    .line 1121
    .local v8, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    invoke-virtual {v8}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v9

    .line 1122
    .local v9, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/4 v10, 0x0

    .line 1123
    .local v10, "timeSlot":[J
    if-eqz v9, :cond_120

    .line 1124
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_120

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/simservs/client/policy/Rule;

    .line 1129
    .local v13, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFType(Lcom/mediatek/simservs/client/policy/Conditions;)I

    move-result v14

    if-ne v14, v1, :cond_11c

    .line 1130
    invoke-virtual {v0, v13, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I

    move-result v14

    if-eqz v14, :cond_11c

    .line 1132
    const/4 v3, 0x1

    .line 1135
    const/4 v14, 0x0

    .line 1136
    .local v14, "enable":I
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v15

    if-nez v15, :cond_78

    .line 1137
    const/4 v14, 0x1

    .line 1140
    :cond_78
    const/4 v15, 0x0

    .line 1141
    .local v15, "number":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v16

    if-eqz v16, :cond_94

    .line 1142
    nop

    .line 1143
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/ForwardTo;->getTarget()Ljava/lang/String;

    move-result-object v11

    .line 1142
    invoke-virtual {v0, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertUriToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1146
    :cond_94
    const/4 v11, 0x1

    if-ne v14, v11, :cond_a3

    .line 1147
    invoke-virtual {v13}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertToLocalTime(Ljava/lang/String;)[J

    move-result-object v10

    .line 1149
    :cond_a3
    new-instance v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v11}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 1150
    .local v11, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    iput v14, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 1151
    iput v1, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 1152
    iput v2, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 1153
    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "found":Z
    .local v16, "found":Z
    iput v3, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 1154
    iput-object v15, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 1155
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v3

    iput v3, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 1156
    iput-object v10, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 1157
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCFInfo() found rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const/4 v4, 0x1

    if-ne v14, v4, :cond_f0

    const-string v4, "Enable"

    goto :goto_f2

    :cond_f0
    const-string v4, "Disable"

    :goto_f2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static {v15}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1158
    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v16

    .line 1166
    .end local v11    # "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v13    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v14    # "enable":I
    .end local v15    # "number":Ljava/lang/String;
    .end local v16    # "found":Z
    .restart local v3    # "found":Z
    :cond_11c
    move/from16 v4, p2

    goto/16 :goto_4f

    .line 1169
    :cond_120
    if-nez v3, :cond_160

    .line 1170
    new-instance v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v4}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    .line 1171
    .local v4, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v11, 0x0

    iput v11, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 1172
    iput v1, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 1173
    iput v2, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 1174
    iput v11, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 1175
    const/4 v11, 0x0

    iput-object v11, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v12

    iput v12, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 1177
    iput-object v11, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 1178
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCFInfo() not found rule, reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1179
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    .end local v4    # "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_160
    return-object v7
.end method

.method public getCFInfoList(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;
    .registers 7
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/CommunicationDiversion;",
            "III)",
            "Ljava/util/List<",
            "Lcom/mediatek/internal/telephony/MtkCallForwardInfo;",
            ">;"
        }
    .end annotation

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCFInfoList() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    if-nez p4, :cond_4b

    .line 1194
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfo(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1195
    const/16 v1, 0x200

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfo(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_52

    .line 1197
    :cond_4b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfo(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1199
    :goto_52
    return-object v0
.end method

.method public getCFType(Lcom/mediatek/simservs/client/policy/Conditions;)I
    .registers 5
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCFType() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    if-nez p1, :cond_f

    const-string v1, "cond=null"

    goto :goto_48

    .line 1634
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Busy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",NoAnswer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",NotReachable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",NotRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1634
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/4 v0, 0x0

    if-nez p1, :cond_58

    .line 1636
    return v0

    .line 1638
    :cond_58
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1639
    const/4 v0, 0x1

    return v0

    .line 1640
    :cond_60
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1641
    const/4 v0, 0x2

    return v0

    .line 1642
    :cond_68
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1643
    const/4 v0, 0x3

    return v0

    .line 1644
    :cond_70
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1645
    const/4 v0, 0x6

    return v0

    .line 1647
    :cond_78
    return v0
.end method

.method public getCache(II)Lcom/mediatek/simservs/client/SimservType;
    .registers 14
    .param p1, "idx"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1275
    const/4 v0, 0x1

    .line 1276
    .local v0, "usingCache":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1277
    .local v1, "curTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCache(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cacheIdxToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cachePhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1279
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$700(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[I

    move-result-object v4

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", lastQuery="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1281
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J
    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$800(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[J

    move-result-object v5

    aget-wide v5, v5, p1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mCacheSimserv="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1282
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1277
    const-string v6, "MMTelSS"

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getCacheValidTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1286
    .local v3, "cacheValidTime":Ljava/lang/Long;
    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$700(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[I

    move-result-object v7

    aget v7, v7, p1

    if-ne p2, v7, :cond_91

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v7

    aget-object v7, v7, p1

    if-eqz v7, :cond_91

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1287
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$800(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[J

    move-result-object v7

    aget-wide v7, v7, p1

    sub-long v7, v1, v7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_18a

    .line 1288
    :cond_91
    const/4 v0, 0x0

    .line 1289
    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_198

    goto/16 :goto_152

    .line 1319
    :pswitch_98
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1320
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    move-result-object v7

    aput-object v7, v8, p1

    goto/16 :goto_152

    .line 1315
    :pswitch_b0
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1316
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getTerminatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1317
    goto/16 :goto_152

    .line 1311
    :pswitch_c8
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1312
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentationRestriction(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1313
    goto :goto_152

    .line 1307
    :pswitch_df
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1308
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getOriginatingIdentityPresentation(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1309
    goto :goto_152

    .line 1303
    :pswitch_f6
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1304
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationWaiting(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationWaiting;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1305
    goto :goto_152

    .line 1299
    :pswitch_10d
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1300
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getIncomingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1301
    goto :goto_152

    .line 1295
    :pswitch_124
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1296
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getOutgoingCommunicationBarring(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1297
    goto :goto_152

    .line 1291
    :pswitch_13b
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    .line 1292
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSimservs:Lcom/mediatek/simservs/client/SimServs;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$900()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/mediatek/simservs/client/SimServs;->getCommunicationDiversion(ZLandroid/net/Network;)Lcom/mediatek/simservs/client/CommunicationDiversion;

    move-result-object v7

    aput-object v7, v8, p1

    .line 1293
    nop

    .line 1323
    :goto_152
    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCachePhoneId:[I
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$700(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[I

    move-result-object v7

    aput p2, v7, p1

    .line 1324
    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mLastQueried:[J
    invoke-static {v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$800(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[J

    move-result-object v7

    aput-wide v1, v7, p1

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCache(): new Cache phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1327
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1325
    invoke-static {v6, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_18a
    if-eqz v0, :cond_18f

    .line 1330
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->updateNetwork(I)V

    .line 1332
    :cond_18f
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v4

    aget-object v4, v4, p1

    return-object v4

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_124
        :pswitch_10d
        :pswitch_f6
        :pswitch_df
        :pswitch_c8
        :pswitch_b0
        :pswitch_98
    .end packed-switch
.end method

.method public getMediaType(I)Ljava/lang/String;
    .registers 3
    .param p1, "serviceClass"    # I

    .line 606
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    .line 607
    const-string v0, "audio"

    return-object v0

    .line 608
    :cond_7
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_e

    .line 609
    const-string v0, "video"

    return-object v0

    .line 611
    :cond_e
    const-string v0, ""

    return-object v0
.end method

.method public getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;
    .registers 28
    .param p1, "cb"    # Lcom/mediatek/simservs/client/SimservType;
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "lockState"    # I
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/SimservType;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2522
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRuleForSetCB() facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    invoke-virtual {v6, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2526
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/4 v0, 0x0

    .line 2527
    .local v0, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v1, v13, :cond_55

    .line 2528
    move-object/from16 v1, p1

    check-cast v1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v0

    move-object v14, v0

    goto :goto_66

    .line 2529
    :cond_55
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v12, :cond_65

    .line 2530
    move-object/from16 v1, p1

    check-cast v1, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v0

    move-object v14, v0

    goto :goto_66

    .line 2529
    :cond_65
    move-object v14, v0

    .line 2532
    .end local v0    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .local v14, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    :goto_66
    const/4 v0, 0x0

    .line 2533
    .local v0, "foundRule":Z
    const/4 v1, 0x0

    .line 2534
    .local v1, "modifiedRuleService":I
    if-nez v14, :cond_6c

    const/4 v2, 0x0

    goto :goto_70

    :cond_6c
    invoke-virtual {v14}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    :goto_70
    move-object v15, v2

    .line 2535
    .local v15, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-eqz v15, :cond_c7

    .line 2536
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v1

    .end local v1    # "modifiedRuleService":I
    .local v17, "modifiedRuleService":I
    :goto_79
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2537
    .local v18, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v5

    .line 2538
    .local v5, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v19

    .line 2542
    .local v19, "act":Lcom/mediatek/simservs/client/policy/Actions;
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBFacility(ILcom/mediatek/simservs/client/policy/Conditions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 2543
    const/16 v20, 0x1

    .line 2544
    .end local v0    # "foundRule":Z
    .local v20, "foundRule":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 2545
    .local v4, "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v18

    move-object/from16 v3, p2

    move-object v12, v4

    .end local v4    # "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v12, "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move/from16 v4, p3

    move-object/from16 v21, v5

    .end local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .local v21, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyCBRule(Ljava/util/List;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;II)I

    move-result v0

    or-int v17, v17, v0

    .line 2547
    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move/from16 v0, v20

    goto :goto_c1

    .line 2542
    .end local v12    # "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v20    # "foundRule":Z
    .end local v21    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .restart local v0    # "foundRule":Z
    .restart local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    :cond_bf
    move-object/from16 v21, v5

    .line 2549
    .end local v5    # "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    .end local v18    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .end local v19    # "act":Lcom/mediatek/simservs/client/policy/Actions;
    :goto_c1
    const/4 v12, 0x2

    goto :goto_79

    .line 2536
    :cond_c3
    move v12, v0

    move/from16 v5, v17

    goto :goto_c9

    .line 2535
    .end local v17    # "modifiedRuleService":I
    .restart local v1    # "modifiedRuleService":I
    :cond_c7
    move v12, v0

    move v5, v1

    .line 2553
    .end local v0    # "foundRule":Z
    .end local v1    # "modifiedRuleService":I
    .local v5, "modifiedRuleService":I
    .local v12, "foundRule":Z
    :goto_c9
    if-ne v9, v13, :cond_ee

    .line 2556
    if-eqz v12, :cond_da

    if-eqz v5, :cond_da

    if-nez v8, :cond_d7

    if-eq v5, v13, :cond_da

    const/4 v0, 0x2

    if-ne v5, v0, :cond_d7

    goto :goto_da

    :cond_d7
    move/from16 v17, v5

    goto :goto_f0

    .line 2560
    :cond_da
    :goto_da
    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v14

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v17, v5

    .end local v5    # "modifiedRuleService":I
    .restart local v17    # "modifiedRuleService":I
    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCBRule(ILcom/mediatek/simservs/client/policy/RuleSet;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f0

    .line 2553
    .end local v17    # "modifiedRuleService":I
    .restart local v5    # "modifiedRuleService":I
    :cond_ee
    move/from16 v17, v5

    .line 2564
    .end local v5    # "modifiedRuleService":I
    .restart local v17    # "modifiedRuleService":I
    :goto_f0
    return-object v11
.end method

.method public getRuleForSetCF(Lcom/mediatek/simservs/client/CommunicationDiversion;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 30
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "reason"    # I
    .param p3, "action"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "timeSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/CommunicationDiversion;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2084
    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRuleForSetCF() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-virtual {v10, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    invoke-virtual {v10, v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    invoke-static/range {p5 .. p5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2084
    const-string v9, "MMTelSS"

    invoke-static {v9, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2090
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v16

    .line 2091
    .local v16, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/16 v17, 0x0

    .line 2092
    .local v17, "foundRule":Z
    const/16 v18, 0x0

    .line 2093
    .local v18, "modifiedRuleService":I
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v7

    .line 2094
    .local v7, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/4 v6, 0x2

    if-eqz v7, :cond_13b

    .line 2095
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v0

    if-ne v0, v6, :cond_ab

    .line 2096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 2097
    .local v9, "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v14, v6

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v19, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move/from16 v7, p6

    move-object v14, v8

    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyCFRuleForSeperateMedia(Ljava/util/List;Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    or-int v18, v18, v0

    .line 2099
    invoke-interface {v14, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2100
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a5

    .line 2101
    const/16 v17, 0x1

    .line 2103
    .end local v9    # "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_a5
    move/from16 v9, v18

    move-object/from16 v20, v19

    goto/16 :goto_140

    .line 2104
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v19    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_ab
    move-object/from16 v19, v7

    move-object v14, v8

    .end local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v19    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_b0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_134

    .line 2105
    move-object/from16 v7, v19

    .end local v19    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2109
    .local v19, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFType(Lcom/mediatek/simservs/client/policy/Conditions;)I

    move-result v0

    if-ne v0, v11, :cond_124

    .line 2110
    const/16 v17, 0x1

    .line 2111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 2112
    .local v6, "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v10, v6

    .end local v6    # "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v10, "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move/from16 v6, p4

    move-object/from16 v20, v7

    .end local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v20, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v7, p5

    move/from16 v21, v8

    .end local v8    # "i":I
    .local v21, "i":I
    move/from16 v8, p6

    move-object v11, v9

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyCFRule(Ljava/util/List;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    or-int v18, v18, v0

    .line 2114
    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/simservs/client/policy/ForwardTo;->mIsValidTargetNumber:Z

    if-nez v0, :cond_120

    .line 2115
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportPutNonUriNumber()Z

    move-result v0

    if-nez v0, :cond_120

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRuleForSetCF() skip rule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    goto :goto_129

    .line 2119
    :cond_120
    invoke-interface {v14, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_129

    .line 2109
    .end local v10    # "modifiedRuleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v21    # "i":I
    .restart local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v8    # "i":I
    :cond_124
    move-object/from16 v20, v7

    move/from16 v21, v8

    move-object v11, v9

    .line 2104
    .end local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "i":I
    .end local v19    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    .restart local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v21    # "i":I
    :goto_129
    add-int/lit8 v8, v21, 0x1

    move-object/from16 v10, p0

    move-object v9, v11

    move-object/from16 v19, v20

    move/from16 v11, p2

    .end local v21    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_b0

    .end local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v19, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_134
    move/from16 v21, v8

    move-object/from16 v20, v19

    .end local v8    # "i":I
    .end local v19    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v21    # "i":I
    move/from16 v9, v18

    goto :goto_140

    .line 2094
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v21    # "i":I
    .restart local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_13b
    move-object/from16 v20, v7

    move-object v14, v8

    .end local v7    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v20    # "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move/from16 v9, v18

    .line 2126
    .end local v18    # "modifiedRuleService":I
    .local v9, "modifiedRuleService":I
    :goto_140
    const/4 v0, 0x1

    if-eq v12, v0, :cond_146

    const/4 v1, 0x3

    if-ne v12, v1, :cond_169

    .line 2130
    :cond_146
    if-eqz v17, :cond_151

    if-eqz v9, :cond_151

    if-nez v13, :cond_169

    if-eq v9, v0, :cond_151

    const/4 v0, 0x2

    if-ne v9, v0, :cond_169

    .line 2134
    :cond_151
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRule(ILcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2138
    :cond_169
    return-object v14
.end method

.method public getRuleId(I)Ljava/lang/String;
    .registers 4
    .param p1, "reason"    # I

    .line 1908
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getRuleId()Ljava/util/Map;

    move-result-object v0

    .line 1909
    .local v0, "idMap":Ljava/util/Map;
    packed-switch p1, :pswitch_data_3c

    .line 1921
    :pswitch_b
    const-string v1, "None"

    return-object v1

    .line 1919
    :pswitch_e
    const-string v1, "CFNL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1917
    :pswitch_17
    const-string v1, "CFNRc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1915
    :pswitch_20
    const-string v1, "CFNRy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1913
    :pswitch_29
    const-string v1, "CFB"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1911
    :pswitch_32
    const-string v1, "CFU"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_29
        :pswitch_20
        :pswitch_17
        :pswitch_b
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public handleGetCB(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 20
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 1048
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1049
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1050
    .local v4, "reqNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1051
    .local v5, "serialNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1052
    .local v6, "facility":Ljava/lang/String;
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1053
    .local v0, "serviceClass":I
    iget-object v7, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1055
    .local v7, "phoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read from parcel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", facility="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", serviceClass="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", phoneId="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "MMTelSS"

    invoke-static {v12, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v8, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v8, v8, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_140

    iget-object v8, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1061
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v8, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v8

    if-nez v8, :cond_6e

    goto/16 :goto_140

    .line 1066
    :cond_6e
    const/4 v8, 0x0

    .line 1067
    .local v8, "exceptionReport":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertServiceClass(I)I

    move-result v13

    .line 1068
    .end local v0    # "serviceClass":I
    .local v13, "serviceClass":I
    const/4 v0, 0x1

    new-array v14, v0, [I

    aput v3, v14, v3

    .line 1069
    .local v14, "response":[I
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v15

    .line 1070
    .local v15, "cbType":I
    const/4 v3, 0x2

    if-ne v15, v0, :cond_82

    move/from16 v16, v0

    goto :goto_89

    .line 1071
    :cond_82
    if-ne v15, v3, :cond_87

    move/from16 v16, v3

    goto :goto_89

    :cond_87
    const/16 v16, 0x8

    :goto_89
    move/from16 v17, v16

    .line 1073
    .local v17, "cacheIdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleGetCB() "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cbType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v1, v15}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cbTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v1, v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    if-nez v13, :cond_f4

    .line 1081
    const/4 v0, 0x0

    :try_start_c8
    aget v3, v14, v0
    :try_end_ca
    .catch Ljava/net/UnknownHostException; {:try_start_c8 .. :try_end_ca} :catch_f0
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_c8 .. :try_end_ca} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_ca} :catch_e8

    move/from16 v9, v17

    .end local v17    # "cacheIdx":I
    .local v9, "cacheIdx":I
    :try_start_cc
    invoke-virtual {v1, v9, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v6, v11, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;II)I

    move-result v10

    or-int/2addr v3, v10

    aput v3, v14, v0

    .line 1083
    aget v3, v14, v0

    invoke-virtual {v1, v9, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v1, v10, v6, v11, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;II)I

    move-result v10

    or-int/2addr v3, v10

    aput v3, v14, v0

    goto :goto_11a

    .line 1094
    .end local v9    # "cacheIdx":I
    .restart local v17    # "cacheIdx":I
    :catch_e8
    move-exception v0

    move/from16 v9, v17

    .end local v17    # "cacheIdx":I
    .restart local v9    # "cacheIdx":I
    goto :goto_106

    .line 1091
    .end local v9    # "cacheIdx":I
    .restart local v17    # "cacheIdx":I
    :catch_ec
    move-exception v0

    move/from16 v9, v17

    .end local v17    # "cacheIdx":I
    .restart local v9    # "cacheIdx":I
    goto :goto_110

    .line 1089
    .end local v9    # "cacheIdx":I
    .restart local v17    # "cacheIdx":I
    :catch_f0
    move-exception v0

    move/from16 v9, v17

    .end local v17    # "cacheIdx":I
    .restart local v9    # "cacheIdx":I
    goto :goto_119

    .line 1086
    .end local v9    # "cacheIdx":I
    .restart local v17    # "cacheIdx":I
    :cond_f4
    move/from16 v9, v17

    .end local v17    # "cacheIdx":I
    .restart local v9    # "cacheIdx":I
    const/4 v0, 0x0

    aget v3, v14, v0

    invoke-virtual {v1, v9, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v10

    invoke-virtual {v1, v10, v6, v13, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;II)I

    move-result v10

    or-int/2addr v3, v10

    aput v3, v14, v0
    :try_end_104
    .catch Ljava/net/UnknownHostException; {:try_start_cc .. :try_end_104} :catch_118
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_cc .. :try_end_104} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_104} :catch_105

    goto :goto_11a

    .line 1094
    :catch_105
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    :goto_106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1096
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v8

    goto :goto_11b

    .line 1091
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_10f
    move-exception v0

    .line 1092
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :goto_110
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1093
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v8

    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_11a

    .line 1089
    :catch_118
    move-exception v0

    .line 1090
    .local v0, "unknownHostException":Ljava/net/UnknownHostException;
    :goto_119
    move-object v8, v0

    .line 1097
    .end local v0    # "unknownHostException":Ljava/net/UnknownHostException;
    :goto_11a
    nop

    .line 1099
    :goto_11b
    if-eqz v8, :cond_120

    .line 1100
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 1103
    :cond_120
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_12e

    .line 1104
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v14, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1105
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1108
    :cond_12e
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 1109
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1111
    :cond_13f
    return-void

    .line 1062
    .end local v8    # "exceptionReport":Ljava/lang/Exception;
    .end local v9    # "cacheIdx":I
    .end local v13    # "serviceClass":I
    .end local v14    # "response":[I
    .end local v15    # "cbType":I
    .local v0, "serviceClass":I
    :cond_140
    :goto_140
    iget-object v3, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 1063
    return-void
.end method

.method public handleGetCF(IIIIILjava/lang/String;IZLandroid/os/Message;)V
    .registers 25
    .param p1, "reqNo"    # I
    .param p2, "serialNo"    # I
    .param p3, "action"    # I
    .param p4, "reason"    # I
    .param p5, "serviceClass"    # I
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "phoneId"    # I
    .param p8, "isGetTimeSlot"    # Z
    .param p9, "msg"    # Landroid/os/Message;

    .line 1395
    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p9

    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v0, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1396
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v0

    if-nez v0, :cond_21

    move/from16 v0, p5

    goto/16 :goto_126

    .line 1401
    :cond_21
    const/4 v7, 0x0

    .line 1402
    .local v7, "exceptionReport":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1403
    .local v8, "infos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertServiceClass(I)I

    move-result v9

    .line 1405
    .end local p5    # "serviceClass":I
    .local v9, "serviceClass":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleGetCF() "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", action="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", reason="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", serviceClass="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", number="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    invoke-static/range {p6 .. p6}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", phoneId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isGetTimeSlot="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    const-string v10, "MMTelSS"

    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v10, 0x0

    :try_start_84
    invoke-virtual {p0, v10, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 1416
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isEmptyCF(Lcom/mediatek/simservs/client/CommunicationDiversion;)Z

    move-result v11

    if-eqz v11, :cond_98

    .line 1417
    invoke-virtual {p0, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 1418
    new-array v11, v10, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    move-object v8, v11

    goto/16 :goto_100

    .line 1421
    :cond_98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_9d
    .catch Ljava/net/UnknownHostException; {:try_start_84 .. :try_end_9d} :catch_fe
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_84 .. :try_end_9d} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9d} :catch_eb

    .line 1422
    .local v11, "cfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    const/4 v12, 0x4

    const/4 v13, 0x5

    if-ne v3, v13, :cond_bc

    .line 1424
    const/4 v13, 0x0

    .end local p4    # "reason":I
    .local v3, "reason":I
    .local v13, "i":I
    :goto_a2
    if-ge v13, v12, :cond_bb

    .line 1425
    :try_start_a4
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1000()[I

    move-result-object v14

    aget v14, v14, v13

    move v3, v14

    .line 1426
    invoke-virtual {p0, v0, v2, v3, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfoList(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1424
    add-int/lit8 v13, v13, 0x1

    goto :goto_a2

    .line 1446
    .end local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v11    # "cfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    .end local v13    # "i":I
    :catch_b5
    move-exception v0

    goto :goto_ec

    .line 1443
    :catch_b7
    move-exception v0

    goto :goto_f6

    .line 1441
    :catch_b9
    move-exception v0

    goto :goto_ff

    .line 1424
    .restart local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v11    # "cfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    :cond_bb
    goto :goto_da

    .line 1428
    .end local v3    # "reason":I
    .restart local p4    # "reason":I
    :cond_bc
    if-ne v3, v12, :cond_d3

    .line 1430
    const/4 v12, 0x0

    .end local p4    # "reason":I
    .restart local v3    # "reason":I
    .local v12, "i":I
    :goto_bf
    if-ge v12, v13, :cond_d2

    .line 1431
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1000()[I

    move-result-object v14

    aget v14, v14, v12

    move v3, v14

    .line 1432
    invoke-virtual {p0, v0, v2, v3, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfoList(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_cf
    .catch Ljava/net/UnknownHostException; {:try_start_a4 .. :try_end_cf} :catch_b9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_a4 .. :try_end_cf} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_cf} :catch_b5

    .line 1430
    add-int/lit8 v12, v12, 0x1

    goto :goto_bf

    .end local v12    # "i":I
    :cond_d2
    goto :goto_da

    .line 1435
    .end local v3    # "reason":I
    .restart local p4    # "reason":I
    :cond_d3
    :try_start_d3
    invoke-virtual {p0, v0, v2, v3, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFInfoList(Lcom/mediatek/simservs/client/CommunicationDiversion;III)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_da
    .catch Ljava/net/UnknownHostException; {:try_start_d3 .. :try_end_da} :catch_fe
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_d3 .. :try_end_da} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_da} :catch_eb

    .line 1437
    .end local p4    # "reason":I
    .restart local v3    # "reason":I
    :goto_da
    :try_start_da
    invoke-virtual {p0, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->removeDuplicateCF(Ljava/util/ArrayList;)V

    .line 1438
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :try_end_e9
    .catch Ljava/net/UnknownHostException; {:try_start_da .. :try_end_e9} :catch_b9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_da .. :try_end_e9} :catch_b7
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e9} :catch_b5

    move-object v8, v12

    goto :goto_100

    .line 1446
    .end local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v3    # "reason":I
    .end local v11    # "cfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    .restart local p4    # "reason":I
    :catch_eb
    move-exception v0

    .line 1447
    .end local p4    # "reason":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "reason":I
    :goto_ec
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1448
    const/4 v11, 0x2

    invoke-static {v11}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    goto :goto_101

    .line 1443
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "reason":I
    .restart local p4    # "reason":I
    :catch_f5
    move-exception v0

    .line 1444
    .end local p4    # "reason":I
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v3    # "reason":I
    :goto_f6
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1445
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v7

    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_100

    .line 1441
    .end local v3    # "reason":I
    .restart local p4    # "reason":I
    :catch_fe
    move-exception v0

    .line 1442
    .end local p4    # "reason":I
    .local v0, "unknownHostException":Ljava/net/UnknownHostException;
    .restart local v3    # "reason":I
    :goto_ff
    move-object v7, v0

    .line 1449
    .end local v0    # "unknownHostException":Ljava/net/UnknownHostException;
    :goto_100
    nop

    .line 1451
    :goto_101
    if-eqz v7, :cond_106

    .line 1452
    invoke-virtual {p0, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 1455
    :cond_106
    if-eqz v6, :cond_112

    .line 1456
    invoke-virtual {p0, v5, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertCFInfo(Z[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1458
    invoke-virtual/range {p9 .. p9}, Landroid/os/Message;->sendToTarget()V

    .line 1461
    :cond_112
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 1462
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1464
    :cond_123
    return-void

    .line 1395
    .end local v3    # "reason":I
    .end local v7    # "exceptionReport":Ljava/lang/Exception;
    .end local v8    # "infos":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v9    # "serviceClass":I
    .restart local p4    # "reason":I
    .restart local p5    # "serviceClass":I
    :cond_124
    move/from16 v0, p5

    .line 1397
    :goto_126
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 1398
    return-void
.end method

.method public handleGetCF(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 21
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 1371
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1372
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1373
    .local v1, "reqNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1374
    .local v12, "serialNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1375
    .local v13, "action":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1376
    .local v14, "reason":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1377
    .local v15, "serviceClass":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1378
    .local v16, "number":Ljava/lang/String;
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1379
    .local v11, "phoneId":I
    iget-object v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 1381
    .local v10, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read from parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move v3, v1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    move v9, v11

    move-object/from16 v18, v10

    .end local v10    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    move/from16 v10, v17

    move/from16 v17, v11

    .end local v11    # "phoneId":I
    .local v17, "phoneId":I
    move-object/from16 v11, v18

    invoke-virtual/range {v2 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(IIIIILjava/lang/String;IZLandroid/os/Message;)V

    .line 1390
    return-void
.end method

.method public handleGetCFInTimeSlot(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 20
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2748
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2749
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2750
    .local v1, "reqNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2751
    .local v12, "serialNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2752
    .local v13, "action":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2753
    .local v14, "reason":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2754
    .local v15, "serviceClass":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2755
    .local v11, "phoneId":I
    iget-object v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 2757
    .local v10, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read from parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/4 v8, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    move v3, v1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move v9, v11

    move-object/from16 v17, v10

    .end local v10    # "msg":Landroid/os/Message;
    .local v17, "msg":Landroid/os/Message;
    move/from16 v10, v16

    move/from16 v16, v11

    .end local v11    # "phoneId":I
    .local v16, "phoneId":I
    move-object/from16 v11, v17

    invoke-virtual/range {v2 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(IIIIILjava/lang/String;IZLandroid/os/Message;)V

    .line 2766
    return-void
.end method

.method public handleGetCW(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 16
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 858
    iget-object v0, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 859
    iget-object v0, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 860
    .local v0, "reqNo":I
    iget-object v2, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 861
    .local v2, "serialNo":I
    iget-object v3, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 862
    .local v3, "serviceClass":I
    iget-object v4, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 864
    .local v4, "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read from parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "MMTelSS"

    invoke-static {v8, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v5, v5, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_13f

    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 869
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v5, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v5

    if-nez v5, :cond_5c

    goto/16 :goto_13f

    .line 874
    :cond_5c
    const/4 v5, 0x0

    .line 875
    .local v5, "exceptionReport":Ljava/lang/Exception;
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 876
    .local v10, "response":[I
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertServiceClass(I)I

    move-result v3

    .line 878
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleGetCW() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-static {v8, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v6, 0x3

    const/4 v7, 0x1

    :try_start_8e
    invoke-virtual {p0, v6, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v11

    check-cast v11, Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 884
    .local v11, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    invoke-virtual {v11}, Lcom/mediatek/simservs/client/CommunicationWaiting;->isActive()Z

    move-result v12

    if-eqz v12, :cond_9c

    move v12, v7

    goto :goto_9d

    :cond_9c
    move v12, v1

    :goto_9d
    aput v12, v10, v1

    .line 885
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleGetCW(): isActive = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v13, v10, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/net/UnknownHostException; {:try_start_8e .. :try_end_b5} :catch_c9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_8e .. :try_end_b5} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_b5} :catch_b7

    .line 894
    nop

    .end local v11    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto :goto_cc

    .line 891
    :catch_b7
    move-exception v11

    .line 892
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 893
    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    goto :goto_cc

    .line 888
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_c0
    move-exception v9

    .line 889
    .local v9, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual {v9}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 890
    invoke-virtual {p0, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v5

    .end local v9    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_cb

    .line 886
    :catch_c9
    move-exception v9

    .line 887
    .local v9, "unknownHostException":Ljava/net/UnknownHostException;
    move-object v5, v9

    .line 894
    .end local v9    # "unknownHostException":Ljava/net/UnknownHostException;
    :goto_cb
    nop

    .line 896
    :goto_cc
    if-eqz v5, :cond_d1

    .line 897
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 900
    :cond_d1
    aget v1, v10, v1

    if-ne v1, v7, :cond_10a

    .line 901
    const/16 v1, 0x200

    if-nez v3, :cond_e4

    .line 902
    aget v6, v10, v7

    or-int/2addr v6, v7

    aput v6, v10, v7

    .line 903
    aget v6, v10, v7

    or-int/2addr v1, v6

    aput v1, v10, v7

    goto :goto_f0

    .line 905
    :cond_e4
    aget v6, v10, v7

    or-int/2addr v6, v3

    aput v6, v10, v7

    .line 906
    if-ne v3, v1, :cond_f0

    .line 907
    aget v1, v10, v7

    or-int/2addr v1, v7

    aput v1, v10, v7

    .line 910
    :cond_f0
    :goto_f0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCW(): service="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v10, v7

    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_10a
    if-eqz v5, :cond_11f

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP156:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 916
    const-string v1, "handleGetCW() OP156 not support, just CSFB"

    invoke-static {v8, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    move-object v5, v1

    .line 919
    :cond_11f
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_12d

    .line 920
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v10, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 921
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 924
    :cond_12d
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_13e

    .line 925
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 927
    :cond_13e
    return-void

    .line 870
    .end local v5    # "exceptionReport":Ljava/lang/Exception;
    .end local v10    # "response":[I
    :cond_13f
    :goto_13f
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 871
    return-void
.end method

.method public handleGetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V
    .registers 21
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .param p2, "identity"    # I

    .line 661
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 662
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 663
    .local v5, "reqNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 664
    .local v6, "serialNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 666
    .local v7, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read from parcel: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", identity="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", phoneId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    const-string v10, "MMTelSS"

    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v0, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 671
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v0, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_1f7

    .line 676
    :cond_60
    const/4 v11, 0x0

    .line 677
    .local v11, "exceptionReport":Ljava/lang/Exception;
    const/4 v12, 0x2

    new-array v13, v12, [I

    .line 679
    .local v13, "response":[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleGetIdentity() "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v0, ", enable="

    const/4 v9, 0x1

    if-nez v3, :cond_dc

    .line 685
    :try_start_91
    aput v4, v13, v4

    .line 686
    nop

    .line 688
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v15

    .line 687
    invoke-virtual {v1, v15, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v15

    check-cast v15, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    .line 689
    .local v15, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    invoke-virtual {v15}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->isActive()Z

    move-result v16

    if-eqz v16, :cond_a5

    goto :goto_a6

    :cond_a5
    move v9, v4

    :goto_a6
    aput v9, v13, v4

    .line 690
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v13, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    nop

    .end local v15    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    goto/16 :goto_1ce

    .line 736
    :catch_d3
    move-exception v0

    goto/16 :goto_1b9

    .line 733
    :catch_d6
    move-exception v0

    goto/16 :goto_1c2

    .line 730
    :catch_d9
    move-exception v0

    goto/16 :goto_1ca

    .line 693
    :cond_dc
    const/4 v15, 0x3

    if-ne v3, v9, :cond_12e

    .line 694
    aput v4, v13, v4

    .line 695
    aput v12, v13, v9

    .line 696
    nop

    .line 698
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v0

    .line 697
    invoke-virtual {v1, v0, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 699
    .local v0, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isDefaultPresentationRestricted()Z

    move-result v16

    move/from16 v17, v16

    .line 700
    .local v17, "restricted":Z
    move/from16 v12, v17

    .end local v17    # "restricted":Z
    .local v12, "restricted":Z
    if-eqz v12, :cond_fd

    .line 701
    aput v9, v13, v4

    .line 702
    aput v15, v13, v9

    goto :goto_103

    .line 704
    :cond_fd
    const/4 v15, 0x2

    aput v15, v13, v4

    .line 705
    const/4 v4, 0x4

    aput v4, v13, v9

    .line 707
    :goto_103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", restricted="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-static {v10, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    nop

    .end local v0    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v12    # "restricted":Z
    goto/16 :goto_1ce

    :cond_12e
    const/4 v12, 0x2

    if-ne v3, v12, :cond_177

    .line 711
    aput v4, v13, v4

    .line 712
    aput v4, v13, v9

    .line 713
    nop

    .line 715
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v12

    .line 714
    invoke-virtual {v1, v12, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    .line 716
    .local v12, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->isActive()Z

    move-result v15

    if-eqz v15, :cond_148

    move v15, v9

    goto :goto_149

    :cond_148
    move v15, v4

    :goto_149
    aput v15, v13, v9

    aput v15, v13, v4

    .line 717
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v13, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    nop

    .end local v12    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    goto :goto_1ce

    :cond_177
    if-ne v3, v15, :cond_1ce

    .line 721
    aput v4, v13, v4

    .line 722
    nop

    .line 724
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v12

    .line 723
    invoke-virtual {v1, v12, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v12

    check-cast v12, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    .line 725
    .local v12, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    invoke-virtual {v12}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isActive()Z

    move-result v15

    if-eqz v15, :cond_18d

    goto :goto_18e

    :cond_18d
    move v9, v4

    :goto_18e
    aput v9, v13, v4

    .line 726
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v13, v4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v10, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b8
    .catch Ljava/net/UnknownHostException; {:try_start_91 .. :try_end_1b8} :catch_d9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_91 .. :try_end_1b8} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_1b8} :catch_d3

    goto :goto_1ce

    .line 737
    .end local v12    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .local v0, "e":Ljava/lang/Exception;
    :goto_1b9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v11

    goto :goto_1ce

    .line 734
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :goto_1c2
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 735
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v11

    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    goto :goto_1ce

    .line 731
    .local v0, "unknownHostException":Ljava/net/UnknownHostException;
    :goto_1ca
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 732
    move-object v11, v0

    .line 741
    .end local v0    # "unknownHostException":Ljava/net/UnknownHostException;
    :cond_1ce
    :goto_1ce
    if-eqz v11, :cond_1d7

    .line 742
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 745
    :cond_1d7
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_1e5

    .line 746
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, v13, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 747
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 750
    :cond_1e5
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_1f6

    .line 751
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 753
    :cond_1f6
    return-void

    .line 672
    .end local v11    # "exceptionReport":Ljava/lang/Exception;
    .end local v13    # "response":[I
    :cond_1f7
    :goto_1f7
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 673
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 2845
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2846
    .local v0, "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    const/4 v1, 0x0

    .line 2848
    .local v1, "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_258

    goto/16 :goto_257

    .line 2985
    :pswitch_c
    iget-object v2, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v2, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2986
    :try_start_11
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v3, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 2988
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v3, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_93

    .line 2989
    :try_start_20
    iget-object v4, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v4, v4, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2990
    .local v4, "count":I
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WAKE_LOCK_TIMEOUT  mReqPending="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v7, v7, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mRequestList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    if-ge v5, v4, :cond_84

    .line 2995
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v6, v6, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-object v0, v6

    .line 2996
    const-string v6, "MMTelSS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    .line 2997
    invoke-static {v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2996
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 3000
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_20 .. :try_end_85} :catchall_8d

    .line 3002
    :try_start_85
    iget-object v3, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v3, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_93

    goto :goto_90

    .line 3000
    :catchall_8d
    move-exception v4

    :try_start_8e
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_8f
    throw v4

    .line 3004
    .restart local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_90
    :goto_90
    monitor-exit v2

    .line 3005
    goto/16 :goto_257

    .line 3004
    :catchall_93
    move-exception v3

    monitor-exit v2
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_93

    throw v3

    .line 2855
    :pswitch_96
    const/4 v2, 0x0

    .line 2856
    .local v2, "alreadySubtracted":Z
    const/4 v3, -0x1

    .line 2857
    .local v3, "reqNo":I
    const/4 v4, -0x1

    .line 2859
    .local v4, "serialNo":I
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage(): EVENT_SEND:mRequestMessagesPending = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v7, v7, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mRequestsList.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v7, v7, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 2861
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2859
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    :try_start_c6
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v8, v8, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_cb
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_cb} :catch_18d
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_18a

    .line 2864
    :try_start_cb
    iget-object v9, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2865
    monitor-exit v8
    :try_end_d3
    .catchall {:try_start_cb .. :try_end_d3} :catchall_187

    .line 2867
    :try_start_d3
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v9, v8, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    sub-int/2addr v9, v7

    iput v9, v8, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2868
    const/4 v2, 0x1

    .line 2875
    iget-object v8, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v9, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    invoke-static {v8, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2879
    const-string v8, "MMTelSS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive MMTelSS Request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    invoke-static {v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    iget v8, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    packed-switch v8, :pswitch_data_260

    .line 2933
    const-string v8, "MMTelSS"

    goto :goto_158

    .line 2929
    :pswitch_108
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCFInTimeSlot(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2930
    goto/16 :goto_1d2

    .line 2926
    :pswitch_10d
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCFInTimeSlot(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2927
    goto/16 :goto_1d2

    .line 2904
    :pswitch_112
    invoke-virtual {p0, v0, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2905
    goto/16 :goto_1d2

    .line 2898
    :pswitch_117
    invoke-virtual {p0, v0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2899
    goto/16 :goto_1d2

    .line 2886
    :pswitch_11c
    invoke-virtual {p0, v0, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2887
    goto/16 :goto_1d2

    .line 2910
    :pswitch_121
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCW(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2911
    goto/16 :goto_1d2

    .line 2907
    :pswitch_126
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCW(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2908
    goto/16 :goto_1d2

    .line 2922
    :pswitch_12b
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCF(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2923
    goto/16 :goto_1d2

    .line 2919
    :pswitch_130
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2920
    goto/16 :goto_1d2

    .line 2916
    :pswitch_135
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetCB(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2917
    goto/16 :goto_1d2

    .line 2913
    :pswitch_13a
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCB(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V

    .line 2914
    goto/16 :goto_1d2

    .line 2901
    :pswitch_13f
    invoke-virtual {p0, v0, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2902
    goto/16 :goto_1d2

    .line 2895
    :pswitch_144
    invoke-virtual {p0, v0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2896
    goto/16 :goto_1d2

    .line 2883
    :pswitch_149
    invoke-virtual {p0, v0, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2884
    goto/16 :goto_1d2

    .line 2889
    :pswitch_14e
    invoke-virtual {p0, v0, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleGetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2890
    goto/16 :goto_1d2

    .line 2892
    :pswitch_153
    invoke-virtual {p0, v0, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V

    .line 2893
    goto/16 :goto_1d2

    .line 2933
    :goto_158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid MMTelSS Request:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unrecognized MMTelSS Request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mRequest:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local v2    # "alreadySubtracted":Z
    .end local v3    # "reqNo":I
    .end local v4    # "serialNo":I
    .end local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .end local p1    # "msg":Landroid/os/Message;
    throw v8
    :try_end_187
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_187} :catch_18d
    .catchall {:try_start_d3 .. :try_end_187} :catchall_18a

    .line 2865
    .restart local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v2    # "alreadySubtracted":Z
    .restart local v3    # "reqNo":I
    .restart local v4    # "serialNo":I
    .restart local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_187
    move-exception v9

    :try_start_188
    monitor-exit v8
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    .end local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .end local v2    # "alreadySubtracted":Z
    .end local v3    # "reqNo":I
    .end local v4    # "serialNo":I
    .end local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_189
    throw v9
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_189 .. :try_end_18a} :catch_18d
    .catchall {:try_start_189 .. :try_end_18a} :catchall_18a

    .line 2956
    .restart local v0    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v1    # "req":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .restart local v2    # "alreadySubtracted":Z
    .restart local v3    # "reqNo":I
    .restart local v4    # "serialNo":I
    .restart local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_18a
    move-exception v5

    goto/16 :goto_251

    .line 2940
    :catch_18d
    move-exception v8

    .line 2941
    .local v8, "exc":Ljava/lang/RuntimeException;
    :try_start_18e
    const-string v9, "MMTelSS"

    const-string v10, "Uncaught exception "

    invoke-static {v9, v10, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2942
    iget-object v9, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v10, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mSerial:I

    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->findAndRemoveRequestFromList(I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    invoke-static {v9, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    move-result-object v9

    move-object v1, v9

    .line 2945
    const-string v9, "MMTelSS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage(): RuntimeException:mRequestMessagesPending = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v11, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mRequestsList.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v11, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 2947
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2945
    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    if-nez v1, :cond_1cc

    if-nez v2, :cond_1d2

    .line 2949
    :cond_1cc
    invoke-virtual {v0, v6, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->onError(ILjava/lang/Object;)V

    .line 2950
    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->release()V
    :try_end_1d2
    .catchall {:try_start_18e .. :try_end_1d2} :catchall_18a

    .line 2956
    .end local v8    # "exc":Ljava/lang/RuntimeException;
    :cond_1d2
    :goto_1d2
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V

    .line 2957
    nop

    .line 2960
    if-nez v2, :cond_20b

    .line 2961
    const-string v6, "MMTelSS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage(): !alreadySubtracted:mRequestMessagesPending = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v9, v9, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mRequestsList.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v9, v9, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 2963
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2961
    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v8, v6, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    sub-int/2addr v8, v7

    iput v8, v6, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    .line 2969
    :cond_20b
    iget-object v6, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    if-eqz v6, :cond_216

    .line 2970
    iget-object v6, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 2971
    iput-object v5, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    .line 2974
    :cond_216
    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v5, v5, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    if-nez v5, :cond_226

    iget-object v5, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v5, v5, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_257

    .line 2975
    :cond_226
    const-string v5, "MMTelSS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage(): ERROR wakeLock:mRequestMessagesPending = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget v7, v7, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestMessagesPending:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mRequestsList.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v7, v7, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mRequestsList:Ljava/util/ArrayList;

    .line 2977
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2975
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_257

    .line 2956
    :goto_251
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->releaseWakeLockIfDone()V
    invoke-static {v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)V

    .line 2957
    throw v5

    .line 3009
    .end local v2    # "alreadySubtracted":Z
    .end local v3    # "reqNo":I
    .end local v4    # "serialNo":I
    :cond_257
    :goto_257
    return-void

    :pswitch_data_258
    .packed-switch 0x1
        :pswitch_96
        :pswitch_c
    .end packed-switch

    :pswitch_data_260
    .packed-switch 0x1
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
        :pswitch_135
        :pswitch_130
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_11c
        :pswitch_117
        :pswitch_112
        :pswitch_10d
        :pswitch_108
    .end packed-switch
.end method

.method public handleSetCB(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 29
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2584
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2585
    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2586
    .local v13, "reqNo":I
    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2587
    .local v14, "serialNo":I
    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2588
    .local v7, "facility":Ljava/lang/String;
    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2589
    .local v15, "lockState":I
    iget-object v0, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2590
    .local v0, "serviceClass":I
    iget-object v1, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2592
    .local v9, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read from parcel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", facility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lockState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phoneId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "MMTelSS"

    invoke-static {v8, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v1, v10, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v1, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c5

    iget-object v1, v10, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 2599
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v1, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v1

    if-nez v1, :cond_80

    move/from16 v25, v9

    move/from16 v23, v13

    goto/16 :goto_3c9

    .line 2604
    :cond_80
    const/16 v16, 0x0

    .line 2605
    .local v16, "exceptionReport":Ljava/lang/Exception;
    invoke-virtual {v10, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertServiceClass(I)I

    move-result v6

    .line 2606
    .end local v0    # "serviceClass":I
    .local v6, "serviceClass":I
    invoke-virtual {v10, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCBType(Ljava/lang/String;)I

    move-result v1

    .line 2608
    .local v1, "cbType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSetCB() "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cbType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->cbTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-virtual {v10, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2608
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    if-eqz v15, :cond_f6

    if-eq v1, v0, :cond_d8

    if-eq v1, v5, :cond_d8

    if-eq v1, v12, :cond_d8

    goto :goto_f6

    .line 2617
    :cond_d8
    :try_start_d8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v7    # "facility":Ljava/lang/String;
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .end local v14    # "serialNo":I
    .end local v15    # "lockState":I
    .end local v16    # "exceptionReport":Ljava/lang/Exception;
    .end local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .end local p1    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    throw v0
    :try_end_de
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_d8 .. :try_end_de} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_de} :catch_de

    .line 2722
    .restart local v1    # "cbType":I
    .restart local v6    # "serviceClass":I
    .restart local v7    # "facility":Ljava/lang/String;
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    .restart local v14    # "serialNo":I
    .restart local v15    # "lockState":I
    .restart local v16    # "exceptionReport":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;
    .restart local p1    # "rr":Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    :catch_de
    move-exception v0

    move v12, v1

    move v1, v4

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    goto/16 :goto_36b

    .line 2719
    :catch_ea
    move-exception v0

    move v12, v1

    move v1, v4

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    goto/16 :goto_37f

    .line 2620
    :cond_f6
    :goto_f6
    const/4 v3, 0x0

    .line 2621
    .local v3, "ocb":Lcom/mediatek/simservs/client/SimservType;
    const/16 v17, 0x0

    .line 2622
    .local v17, "icb":Lcom/mediatek/simservs/client/SimservType;
    const/16 v18, 0x0

    .line 2623
    .local v18, "isEmptyOcbRules":Z
    const/16 v19, 0x0

    .line 2625
    .local v19, "isEmptyIcbRules":Z
    if-eq v1, v0, :cond_109

    if-eq v1, v5, :cond_109

    if-ne v1, v2, :cond_104

    goto :goto_109

    :cond_104
    move/from16 v20, v18

    move-object/from16 v18, v3

    goto :goto_117

    .line 2626
    :cond_109
    :goto_109
    :try_start_109
    invoke-virtual {v10, v2, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v20

    move-object/from16 v3, v20

    .line 2627
    invoke-virtual {v10, v2, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isEmptyCB(ILcom/mediatek/simservs/client/SimservType;)Z

    move-result v20

    move/from16 v18, v20

    move-object/from16 v18, v3

    .line 2629
    .end local v3    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .local v18, "ocb":Lcom/mediatek/simservs/client/SimservType;
    .local v20, "isEmptyOcbRules":Z
    :goto_117
    if-eq v1, v0, :cond_11d

    if-eq v1, v12, :cond_11d

    if-ne v1, v4, :cond_129

    .line 2630
    :cond_11d
    invoke-virtual {v10, v4, v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v3

    .line 2631
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .local v3, "icb":Lcom/mediatek/simservs/client/SimservType;
    invoke-virtual {v10, v4, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isEmptyCB(ILcom/mediatek/simservs/client/SimservType;)Z

    move-result v17

    move/from16 v19, v17

    move-object/from16 v17, v3

    .line 2635
    .end local v3    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    :cond_129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2636
    .local v3, "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_133
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_109 .. :try_end_133} :catch_375
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_133} :catch_361

    move-object/from16 v22, v21

    .line 2637
    .local v22, "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-ne v1, v0, :cond_1d6

    .line 2639
    const/16 v21, 0x0

    move/from16 v12, v21

    .local v12, "i":I
    :goto_13b
    if-ge v12, v0, :cond_1c6

    .line 2640
    :try_start_13d
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CB_FACILITY:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1200()[Ljava/lang/String;

    move-result-object v23

    aget-object v23, v23, v12
    :try_end_143
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_13d .. :try_end_143} :catch_1ba
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_143} :catch_1ae

    move-object v0, v3

    .end local v3    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v0, "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v3, v23

    .line 2641
    .end local v7    # "facility":Ljava/lang/String;
    .local v3, "facility":Ljava/lang/String;
    if-ge v12, v5, :cond_174

    .line 2642
    move v7, v1

    .end local v1    # "cbType":I
    .local v7, "cbType":I
    move-object/from16 v1, p0

    move/from16 v23, v13

    move v13, v2

    .end local v13    # "reqNo":I
    .local v23, "reqNo":I
    move-object/from16 v2, v18

    move v4, v6

    move v13, v5

    move v5, v15

    move/from16 v24, v6

    .end local v6    # "serviceClass":I
    .local v24, "serviceClass":I
    move v6, v9

    :try_start_156
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_15d
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_156 .. :try_end_15d} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15d} :catch_164

    move v2, v7

    move-object v1, v8

    move/from16 v25, v9

    move-object/from16 v8, v22

    goto :goto_18f

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v12    # "i":I
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    .end local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :catch_164
    move-exception v0

    move v12, v7

    move/from16 v25, v9

    const/4 v1, 0x2

    move-object v7, v3

    goto/16 :goto_36b

    .line 2719
    :catch_16c
    move-exception v0

    move v12, v7

    move/from16 v25, v9

    const/4 v1, 0x2

    move-object v7, v3

    goto/16 :goto_37f

    .line 2645
    .end local v7    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v1    # "cbType":I
    .restart local v6    # "serviceClass":I
    .restart local v12    # "i":I
    .restart local v13    # "reqNo":I
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v19    # "isEmptyIcbRules":Z
    .restart local v20    # "isEmptyOcbRules":Z
    .restart local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_174
    move v7, v1

    move/from16 v24, v6

    move/from16 v23, v13

    move v13, v5

    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v13    # "reqNo":I
    .restart local v7    # "cbType":I
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    move-object/from16 v4, p0

    move-object/from16 v5, v17

    move-object v6, v3

    move v2, v7

    .end local v7    # "cbType":I
    .local v2, "cbType":I
    move/from16 v7, v24

    move-object v1, v8

    move v8, v15

    move/from16 v25, v9

    .end local v9    # "phoneId":I
    .local v25, "phoneId":I
    :try_start_186
    invoke-virtual/range {v4 .. v9}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v4

    move-object/from16 v8, v22

    .end local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v8, "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_18f
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_186 .. :try_end_18f} :catch_1a8
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_18f} :catch_1a2

    .line 2639
    :goto_18f
    add-int/lit8 v12, v12, 0x1

    move-object v7, v3

    move-object/from16 v22, v8

    move v5, v13

    move/from16 v13, v23

    move/from16 v6, v24

    move/from16 v9, v25

    const/4 v4, 0x2

    move-object v3, v0

    move-object v8, v1

    move v1, v2

    const/4 v0, 0x5

    const/4 v2, 0x1

    goto :goto_13b

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v12    # "i":I
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    :catch_1a2
    move-exception v0

    move v12, v2

    move-object v7, v3

    const/4 v1, 0x2

    goto/16 :goto_36b

    .line 2719
    :catch_1a8
    move-exception v0

    move v12, v2

    move-object v7, v3

    const/4 v1, 0x2

    goto/16 :goto_37f

    .line 2722
    .end local v2    # "cbType":I
    .end local v3    # "facility":Ljava/lang/String;
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .restart local v1    # "cbType":I
    .restart local v6    # "serviceClass":I
    .local v7, "facility":Ljava/lang/String;
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    :catch_1ae
    move-exception v0

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    move v12, v1

    move v1, v4

    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .restart local v2    # "cbType":I
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    goto/16 :goto_36b

    .line 2719
    .end local v2    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .restart local v1    # "cbType":I
    .restart local v6    # "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    :catch_1ba
    move-exception v0

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    move v12, v1

    move v1, v4

    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .restart local v2    # "cbType":I
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    goto/16 :goto_37f

    .line 2639
    .end local v2    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .restart local v1    # "cbType":I
    .local v3, "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v6    # "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v12    # "i":I
    .restart local v13    # "reqNo":I
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v19    # "isEmptyIcbRules":Z
    .restart local v20    # "isEmptyOcbRules":Z
    .restart local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1c6
    move v2, v1

    move-object v0, v3

    move/from16 v24, v6

    move-object v1, v8

    move/from16 v25, v9

    move/from16 v23, v13

    move-object/from16 v8, v22

    move v13, v5

    .end local v1    # "cbType":I
    .end local v3    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .end local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v2    # "cbType":I
    .restart local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    move-object v9, v1

    move v12, v2

    .end local v12    # "i":I
    goto/16 :goto_27d

    .line 2649
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v2    # "cbType":I
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .restart local v1    # "cbType":I
    .restart local v3    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v6    # "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    .restart local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_1d6
    move v2, v1

    move-object v0, v3

    move/from16 v24, v6

    move-object v1, v8

    move/from16 v25, v9

    move/from16 v23, v13

    move-object/from16 v8, v22

    move v13, v5

    .end local v1    # "cbType":I
    .end local v3    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .end local v22    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v2    # "cbType":I
    .restart local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    if-ne v2, v13, :cond_21b

    .line 2651
    const/4 v3, 0x0

    move-object/from16 v26, v7

    move v7, v3

    move-object/from16 v3, v26

    .local v3, "facility":Ljava/lang/String;
    .local v7, "i":I
    :goto_1ea
    if-ge v7, v13, :cond_216

    .line 2652
    :try_start_1ec
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CB_FACILITY:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1200()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7
    :try_end_1f2
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1ec .. :try_end_1f2} :catch_210
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1f2} :catch_20a

    move-object v3, v4

    .line 2653
    move-object v9, v1

    move-object/from16 v1, p0

    move v12, v2

    .end local v2    # "cbType":I
    .local v12, "cbType":I
    move-object/from16 v2, v18

    move/from16 v4, v24

    move v5, v15

    move/from16 v6, v25

    :try_start_1fe
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2651
    add-int/lit8 v7, v7, 0x1

    move-object v1, v9

    move v2, v12

    goto :goto_1ea

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "i":I
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v12    # "cbType":I
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    .restart local v2    # "cbType":I
    :catch_20a
    move-exception v0

    move v12, v2

    move-object v7, v3

    const/4 v1, 0x2

    .end local v2    # "cbType":I
    .restart local v12    # "cbType":I
    goto/16 :goto_36b

    .line 2719
    .end local v12    # "cbType":I
    .restart local v2    # "cbType":I
    :catch_210
    move-exception v0

    move v12, v2

    move-object v7, v3

    const/4 v1, 0x2

    .end local v2    # "cbType":I
    .restart local v12    # "cbType":I
    goto/16 :goto_37f

    .line 2651
    .end local v12    # "cbType":I
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v2    # "cbType":I
    .restart local v7    # "i":I
    .restart local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v19    # "isEmptyIcbRules":Z
    .restart local v20    # "isEmptyOcbRules":Z
    :cond_216
    move-object v9, v1

    move v12, v2

    .end local v2    # "cbType":I
    .restart local v12    # "cbType":I
    move-object v7, v3

    .end local v7    # "i":I
    goto/16 :goto_27d

    .line 2656
    .end local v3    # "facility":Ljava/lang/String;
    .end local v12    # "cbType":I
    .restart local v2    # "cbType":I
    .local v7, "facility":Ljava/lang/String;
    :cond_21b
    move-object v9, v1

    move v12, v2

    .end local v2    # "cbType":I
    .restart local v12    # "cbType":I
    const/4 v1, 0x4

    if-ne v12, v1, :cond_24c

    .line 2658
    const/4 v1, 0x3

    move-object v3, v7

    move v7, v1

    .restart local v3    # "facility":Ljava/lang/String;
    .local v7, "i":I
    :goto_223
    const/4 v1, 0x5

    if-ge v7, v1, :cond_24a

    .line 2659
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CB_FACILITY:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1200()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    move-object v3, v1

    .line 2660
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move/from16 v4, v24

    move v5, v15

    move/from16 v6, v25

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_23d
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_1fe .. :try_end_23d} :catch_245
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_23d} :catch_240

    .line 2658
    add-int/lit8 v7, v7, 0x1

    goto :goto_223

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v7    # "i":I
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    :catch_240
    move-exception v0

    move-object v7, v3

    const/4 v1, 0x2

    goto/16 :goto_36b

    .line 2719
    :catch_245
    move-exception v0

    move-object v7, v3

    const/4 v1, 0x2

    goto/16 :goto_37f

    .line 2658
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v7    # "i":I
    .restart local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v19    # "isEmptyIcbRules":Z
    .restart local v20    # "isEmptyOcbRules":Z
    :cond_24a
    move-object v7, v3

    .end local v7    # "i":I
    goto :goto_27d

    .line 2663
    .end local v3    # "facility":Ljava/lang/String;
    .local v7, "facility":Ljava/lang/String;
    :cond_24c
    const/4 v1, 0x1

    if-ne v12, v1, :cond_269

    .line 2664
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v7

    move/from16 v4, v24

    move v5, v15

    move/from16 v6, v25

    :try_start_259
    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_27d

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    :catch_261
    move-exception v0

    const/4 v1, 0x2

    goto/16 :goto_36b

    .line 2719
    :catch_265
    move-exception v0

    const/4 v1, 0x2

    goto/16 :goto_37f

    .line 2666
    .restart local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .restart local v19    # "isEmptyIcbRules":Z
    .restart local v20    # "isEmptyOcbRules":Z
    :cond_269
    const/4 v6, 0x2

    if-ne v12, v6, :cond_27d

    .line 2667
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v7

    move/from16 v4, v24

    move v5, v15

    move/from16 v6, v25

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCB(Lcom/mediatek/simservs/client/SimservType;Ljava/lang/String;III)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2671
    :cond_27d
    :goto_27d
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isSaveWholeNode()Z

    move-result v1

    if-eqz v1, :cond_2e6

    .line 2672
    const/4 v1, 0x5

    if-eq v12, v1, :cond_28f

    if-eq v12, v13, :cond_28f

    const/4 v1, 0x1

    if-ne v12, v1, :cond_2b4

    :cond_28f
    if-eqz v18, :cond_2b4

    .line 2675
    move-object/from16 v1, v18

    check-cast v1, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    invoke-virtual {v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v1

    .line 2676
    .local v1, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    .line 2678
    .local v2, "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isAllRulesDeativated(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2ac

    .line 2679
    move-object/from16 v3, v18

    check-cast v3, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->save(Z)V

    goto :goto_2b4

    .line 2681
    :cond_2ac
    move-object/from16 v3, v18

    check-cast v3, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->save(Z)V
    :try_end_2b4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_259 .. :try_end_2b4} :catch_265
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_2b4} :catch_261

    .line 2685
    .end local v1    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v2    # "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :cond_2b4
    :goto_2b4
    const/4 v1, 0x5

    if-eq v12, v1, :cond_2be

    const/4 v1, 0x4

    if-eq v12, v1, :cond_2be

    const/4 v1, 0x2

    if-ne v12, v1, :cond_386

    goto :goto_2bf

    :cond_2be
    const/4 v1, 0x2

    :goto_2bf
    if-eqz v17, :cond_386

    .line 2688
    :try_start_2c1
    move-object/from16 v2, v17

    check-cast v2, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v2

    .line 2689
    .local v2, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    .line 2691
    .local v3, "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {v10, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isAllRulesDeativated(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2dc

    .line 2692
    move-object/from16 v4, v17

    check-cast v4, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->save(Z)V

    goto :goto_2e4

    .line 2694
    :cond_2dc
    move-object/from16 v4, v17

    check-cast v4, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->save(Z)V
    :try_end_2e4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2c1 .. :try_end_2e4} :catch_35f
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2e4} :catch_35d

    .line 2696
    .end local v2    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v3    # "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_2e4
    goto/16 :goto_386

    .line 2701
    :cond_2e6
    const/4 v1, 0x2

    const-string v2, "handleSetCB(): rule="

    if-eqz v20, :cond_2f3

    .line 2702
    :try_start_2eb
    move-object/from16 v3, v18

    check-cast v3, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    invoke-virtual {v3}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRuleSet()V

    goto :goto_323

    .line 2704
    :cond_2f3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_323

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2705
    .local v4, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    move-object/from16 v5, v18

    check-cast v5, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v6, v4, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->saveRule(Ljava/lang/String;)V

    .line 2707
    .end local v4    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    goto :goto_2f7

    .line 2710
    :cond_323
    :goto_323
    if-eqz v19, :cond_32d

    .line 2711
    move-object/from16 v2, v17

    check-cast v2, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRuleSet()V

    goto :goto_386

    .line 2713
    :cond_32d
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_331
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_386

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2714
    .restart local v4    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    move-object/from16 v5, v17

    check-cast v5, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v6, v4, Lcom/mediatek/simservs/client/policy/Rule;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->saveRule(Ljava/lang/String;)V
    :try_end_35c
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_2eb .. :try_end_35c} :catch_35f
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_35c} :catch_35d

    .line 2716
    .end local v4    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    goto :goto_331

    .line 2722
    .end local v0    # "resultOcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "resultIcbList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v17    # "icb":Lcom/mediatek/simservs/client/SimservType;
    .end local v18    # "ocb":Lcom/mediatek/simservs/client/SimservType;
    .end local v19    # "isEmptyIcbRules":Z
    .end local v20    # "isEmptyOcbRules":Z
    :catch_35d
    move-exception v0

    goto :goto_36b

    .line 2719
    :catch_35f
    move-exception v0

    goto :goto_37f

    .line 2722
    .end local v12    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .local v1, "cbType":I
    .restart local v6    # "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    :catch_361
    move-exception v0

    move v12, v1

    move v1, v4

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    .line 2723
    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v12    # "cbType":I
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    :goto_36b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2724
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_388

    .line 2719
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .restart local v1    # "cbType":I
    .restart local v6    # "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    :catch_375
    move-exception v0

    move v12, v1

    move v1, v4

    move/from16 v24, v6

    move/from16 v25, v9

    move/from16 v23, v13

    move v13, v5

    .line 2720
    .end local v1    # "cbType":I
    .end local v6    # "serviceClass":I
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v12    # "cbType":I
    .restart local v23    # "reqNo":I
    .restart local v24    # "serviceClass":I
    .restart local v25    # "phoneId":I
    :goto_37f
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2721
    invoke-virtual {v10, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v16

    .line 2725
    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_386
    :goto_386
    move-object/from16 v0, v16

    .line 2727
    .end local v16    # "exceptionReport":Ljava/lang/Exception;
    .local v0, "exceptionReport":Ljava/lang/Exception;
    :goto_388
    const/4 v2, 0x1

    if-eq v12, v2, :cond_3a0

    if-ne v12, v13, :cond_38e

    goto :goto_3a0

    .line 2729
    :cond_38e
    if-eq v12, v1, :cond_39c

    const/4 v2, 0x4

    if-ne v12, v2, :cond_394

    goto :goto_39c

    .line 2732
    :cond_394
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 2733
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    goto :goto_3a4

    .line 2730
    :cond_39c
    :goto_39c
    invoke-virtual {v10, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    goto :goto_3a4

    .line 2728
    :cond_3a0
    :goto_3a0
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 2736
    :goto_3a4
    iget-object v1, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_3b3

    .line 2737
    iget-object v1, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2738
    iget-object v1, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2741
    :cond_3b3
    iget-object v1, v10, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_3c4

    .line 2742
    iget-object v1, v10, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2744
    :cond_3c4
    return-void

    .line 2598
    .end local v12    # "cbType":I
    .end local v23    # "reqNo":I
    .end local v24    # "serviceClass":I
    .end local v25    # "phoneId":I
    .local v0, "serviceClass":I
    .restart local v9    # "phoneId":I
    .restart local v13    # "reqNo":I
    :cond_3c5
    move/from16 v25, v9

    move/from16 v23, v13

    .line 2600
    .end local v9    # "phoneId":I
    .end local v13    # "reqNo":I
    .restart local v23    # "reqNo":I
    .restart local v25    # "phoneId":I
    :goto_3c9
    iget-object v1, v11, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v10, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 2601
    return-void
.end method

.method public handleSetCF(IIIILjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    .registers 33
    .param p1, "reqNo"    # I
    .param p2, "action"    # I
    .param p3, "reason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "timeSlot"    # Ljava/lang/String;
    .param p8, "phoneId"    # I
    .param p9, "msg"    # Landroid/os/Message;

    .line 2284
    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    iget-object v0, v9, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v0, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v12, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31e

    iget-object v0, v9, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 2285
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v0, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v0

    if-nez v0, :cond_24

    move/from16 v1, p4

    move-object/from16 v0, p5

    move-object v3, v9

    move-object v2, v13

    goto/16 :goto_324

    .line 2290
    :cond_24
    const/4 v14, 0x0

    .line 2291
    .local v14, "exceptionReport":Ljava/lang/Exception;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertCFNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2292
    .end local p5    # "number":Ljava/lang/String;
    .local v15, "number":Ljava/lang/String;
    move/from16 v1, p4

    invoke-virtual {v9, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertServiceClass(I)I

    move-result v8

    .line 2294
    .end local p4    # "serviceClass":I
    .local v8, "serviceClass":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetCF() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    move/from16 v7, p2

    invoke-virtual {v9, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    invoke-virtual {v9, v10}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    invoke-virtual {v9, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2298
    invoke-static {v15}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2294
    const-string v5, "MMTelSS"

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const/4 v4, 0x2

    const/4 v3, 0x0

    :try_start_99
    invoke-virtual {v9, v3, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    check-cast v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 2306
    .local v0, "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    invoke-virtual {v9, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isEmptyCF(Lcom/mediatek/simservs/client/CommunicationDiversion;)Z

    move-result v1

    move/from16 v16, v1

    .line 2309
    .local v16, "isEmptyRules":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_aa
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_99 .. :try_end_aa} :catch_2ef
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_aa} :catch_2df

    move-object v2, v1

    .line 2310
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    const/16 v17, -0x1

    .line 2311
    .local v17, "newReason":I
    const/16 v18, 0x1

    .line 2313
    .local v18, "needAdd":Z
    const/4 v1, 0x5

    if-ne v10, v1, :cond_169

    .line 2315
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "i":I
    :goto_b6
    const/4 v1, 0x4

    if-ge v12, v1, :cond_160

    .line 2316
    :try_start_b9
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1000()[I

    move-result-object v20

    aget v20, v20, v12

    move/from16 p5, v20

    .line 2317
    .end local v17    # "newReason":I
    .local p5, "newReason":I
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/ims/SuppSrvConfig;->isNotSupportCFNotRegistered()Z

    move-result v17
    :try_end_c9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_b9 .. :try_end_c9} :catch_156
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c9} :catch_14c

    if-eqz v17, :cond_d6

    move-object/from16 v20, v14

    const/4 v1, 0x6

    move/from16 v14, p5

    .end local p5    # "newReason":I
    .local v14, "newReason":I
    .local v20, "exceptionReport":Ljava/lang/Exception;
    if-eq v14, v1, :cond_d3

    goto :goto_db

    :cond_d3
    move/from16 v17, v3

    goto :goto_dd

    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .local v14, "exceptionReport":Ljava/lang/Exception;
    .restart local p5    # "newReason":I
    :cond_d6
    move-object/from16 v20, v14

    const/4 v1, 0x6

    move/from16 v14, p5

    .end local p5    # "newReason":I
    .local v14, "newReason":I
    .restart local v20    # "exceptionReport":Ljava/lang/Exception;
    :goto_db
    const/16 v17, 0x1

    :goto_dd
    move/from16 p4, v17

    .line 2319
    .end local v18    # "needAdd":Z
    .local p4, "needAdd":Z
    :try_start_df
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e4
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_df .. :try_end_e4} :catch_144
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e4} :catch_13c

    :try_start_e4
    const-string v3, "reason == 4, needAdd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    .end local p4    # "needAdd":Z
    .local v3, "needAdd":Z
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_e4 .. :try_end_f5} :catch_137
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f5} :catch_132

    .line 2320
    if-eqz v3, :cond_114

    .line 2321
    const/4 v13, 0x4

    move-object/from16 v1, p0

    move-object v13, v2

    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .local v13, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object v2, v0

    move/from16 v17, v3

    const/4 v9, 0x0

    .end local v3    # "needAdd":Z
    .local v17, "needAdd":Z
    move v3, v14

    move v9, v4

    move/from16 v4, p2

    move-object v9, v5

    move v5, v8

    move-object v6, v15

    move/from16 v7, p6

    move/from16 v22, v8

    .end local v8    # "serviceClass":I
    .local v22, "serviceClass":I
    move-object/from16 v8, p7

    :try_start_10c
    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCF(Lcom/mediatek/simservs/client/CommunicationDiversion;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11a

    .line 2320
    .end local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v17    # "needAdd":Z
    .end local v22    # "serviceClass":I
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v3    # "needAdd":Z
    .restart local v8    # "serviceClass":I
    :cond_114
    move-object v13, v2

    move/from16 v17, v3

    move-object v9, v5

    move/from16 v22, v8

    .line 2315
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v3    # "needAdd":Z
    .end local v8    # "serviceClass":I
    .restart local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v17    # "needAdd":Z
    .restart local v22    # "serviceClass":I
    :goto_11a
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p2

    move-object/from16 v6, p7

    move-object v5, v9

    move-object v2, v13

    move/from16 v18, v17

    move/from16 v8, v22

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v9, p0

    move-object/from16 v13, p9

    move/from16 v17, v14

    move-object/from16 v14, v20

    goto :goto_b6

    .line 2399
    .end local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v12    # "i":I
    .end local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v14    # "newReason":I
    .end local v16    # "isEmptyRules":Z
    .end local v17    # "needAdd":Z
    .end local v22    # "serviceClass":I
    .restart local v8    # "serviceClass":I
    :catch_132
    move-exception v0

    move/from16 v22, v8

    const/4 v5, 0x0

    goto :goto_140

    .line 2396
    :catch_137
    move-exception v0

    move/from16 v22, v8

    const/4 v5, 0x0

    goto :goto_148

    .line 2399
    :catch_13c
    move-exception v0

    move/from16 v22, v8

    move v5, v3

    :goto_140
    move-object/from16 v3, p0

    .end local v8    # "serviceClass":I
    .restart local v22    # "serviceClass":I
    goto/16 :goto_2e6

    .line 2396
    .end local v22    # "serviceClass":I
    .restart local v8    # "serviceClass":I
    :catch_144
    move-exception v0

    move/from16 v22, v8

    move v5, v3

    :goto_148
    move-object/from16 v3, p0

    .end local v8    # "serviceClass":I
    .restart local v22    # "serviceClass":I
    goto/16 :goto_2f6

    .line 2399
    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .end local v22    # "serviceClass":I
    .restart local v8    # "serviceClass":I
    .local v14, "exceptionReport":Ljava/lang/Exception;
    :catch_14c
    move-exception v0

    move/from16 v22, v8

    move-object/from16 v20, v14

    move v5, v3

    move-object/from16 v3, p0

    goto/16 :goto_2e6

    .line 2396
    :catch_156
    move-exception v0

    move/from16 v22, v8

    move-object/from16 v20, v14

    move v5, v3

    move-object/from16 v3, p0

    goto/16 :goto_2f6

    .line 2315
    .restart local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v12    # "i":I
    .restart local v16    # "isEmptyRules":Z
    .local v17, "newReason":I
    .restart local v18    # "needAdd":Z
    :cond_160
    move-object v13, v2

    move-object v9, v5

    move/from16 v22, v8

    move-object/from16 v20, v14

    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "serviceClass":I
    .end local v14    # "exceptionReport":Ljava/lang/Exception;
    .restart local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v22    # "serviceClass":I
    const/4 v14, 0x5

    .end local v12    # "i":I
    goto/16 :goto_20a

    .line 2325
    .end local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .end local v22    # "serviceClass":I
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v8    # "serviceClass":I
    .restart local v14    # "exceptionReport":Ljava/lang/Exception;
    :cond_169
    move-object v13, v2

    move-object v9, v5

    move/from16 v22, v8

    move-object/from16 v20, v14

    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v8    # "serviceClass":I
    .end local v14    # "exceptionReport":Ljava/lang/Exception;
    .restart local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v22    # "serviceClass":I
    const/4 v1, 0x4

    if-ne v10, v1, :cond_1d0

    .line 2327
    const/4 v1, 0x0

    move v12, v1

    .restart local v12    # "i":I
    :goto_174
    const/4 v14, 0x5

    if-ge v12, v14, :cond_1cf

    .line 2328
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1000()[I

    move-result-object v1

    aget v1, v1, v12

    move v8, v1

    .line 2329
    .end local v17    # "newReason":I
    .local v8, "newReason":I
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isNotSupportCFNotRegistered()Z

    move-result v1

    if-eqz v1, :cond_18e

    const/4 v7, 0x6

    if-eq v8, v7, :cond_18c

    goto :goto_18f

    :cond_18c
    const/4 v3, 0x0

    goto :goto_190

    :cond_18e
    const/4 v7, 0x6

    :goto_18f
    const/4 v3, 0x1

    :goto_190
    move v6, v3

    .line 2331
    .end local v18    # "needAdd":Z
    .local v6, "needAdd":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason == 5, needAdd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    if-eqz v6, :cond_1c2

    .line 2333
    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v8

    move/from16 v4, p2

    move/from16 v5, v22

    move/from16 v17, v6

    .end local v6    # "needAdd":Z
    .local v17, "needAdd":Z
    move-object v6, v15

    move/from16 v18, v7

    move/from16 v7, p6

    move/from16 v21, v8

    .end local v8    # "newReason":I
    .local v21, "newReason":I
    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCF(Lcom/mediatek/simservs/client/CommunicationDiversion;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c8

    .line 2332
    .end local v17    # "needAdd":Z
    .end local v21    # "newReason":I
    .restart local v6    # "needAdd":Z
    .restart local v8    # "newReason":I
    :cond_1c2
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v21, v8

    .line 2327
    .end local v6    # "needAdd":Z
    .end local v8    # "newReason":I
    .restart local v17    # "needAdd":Z
    .restart local v21    # "newReason":I
    :goto_1c8
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v17

    move/from16 v17, v21

    goto :goto_174

    .end local v12    # "i":I
    .end local v21    # "newReason":I
    .local v17, "newReason":I
    .restart local v18    # "needAdd":Z
    :cond_1cf
    goto :goto_20a

    .line 2338
    :cond_1d0
    const/4 v14, 0x5

    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, v22

    move-object v6, v15

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCF(Lcom/mediatek/simservs/client/CommunicationDiversion;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2340
    const/4 v1, 0x3

    if-ne v10, v1, :cond_20a

    .line 2341
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isSetCFNRcWithCFNL()Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 2342
    const/16 v17, 0x6

    .line 2343
    move-object/from16 v1, p0

    move-object v2, v0

    move/from16 v3, v17

    move/from16 v4, p2

    move/from16 v5, v22

    move-object v6, v15

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getRuleForSetCF(Lcom/mediatek/simservs/client/CommunicationDiversion;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2348
    :cond_20a
    :goto_20a
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportPutCfRoot()Z

    move-result v1

    if-eqz v1, :cond_24a

    .line 2349
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isSaveWholeNode()Z

    move-result v1

    if-nez v1, :cond_226

    if-eq v10, v14, :cond_226

    const/4 v1, 0x4

    if-ne v10, v1, :cond_224

    goto :goto_226

    :cond_224
    const/4 v3, 0x0

    goto :goto_24b

    .line 2353
    :cond_226
    :goto_226
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v1

    .line 2354
    .local v1, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2
    :try_end_22e
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_10c .. :try_end_22e} :catch_2da
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_22e} :catch_2d5

    .line 2356
    .local v2, "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    if-lez v11, :cond_240

    if-eq v10, v14, :cond_23b

    const/4 v3, 0x4

    if-eq v10, v3, :cond_23b

    const/4 v3, 0x2

    if-ne v10, v3, :cond_239

    goto :goto_23b

    :cond_239
    const/4 v3, 0x0

    goto :goto_241

    .line 2360
    :cond_23b
    :goto_23b
    const/4 v3, 0x0

    :try_start_23c
    invoke-virtual {v0, v11, v3}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(IZ)V

    goto :goto_241

    .line 2356
    :cond_240
    const/4 v3, 0x0

    .line 2372
    :goto_241
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->save(Z)V

    .line 2374
    .end local v1    # "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    .end local v2    # "fulllist":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move v5, v3

    move-object/from16 v3, p0

    goto/16 :goto_2cc

    .line 2348
    :cond_24a
    const/4 v3, 0x0

    .line 2378
    :goto_24b
    if-eqz v16, :cond_255

    .line 2379
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRuleSet()V

    move v5, v3

    move-object/from16 v3, p0

    goto/16 :goto_2cc

    .line 2381
    :cond_255
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_259
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2382
    .local v2, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCF(): rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {v0, v2}, Lcom/mediatek/simservs/client/CommunicationDiversion;->saveRule(Lcom/mediatek/simservs/client/policy/Rule;)V

    .line 2385
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v4
    :try_end_288
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_23c .. :try_end_288} :catch_2d2
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_288} :catch_2cf

    move v5, v3

    move-object/from16 v3, p0

    :try_start_28b
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCFType(Lcom/mediatek/simservs/client/policy/Conditions;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2c2

    if-lez v11, :cond_2c2

    .line 2387
    invoke-virtual {v0}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getNoReplyTimer()I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_2c0

    .line 2388
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/SuppSrvConfig;->isNoReplyTimeInsideCFAction()Z

    move-result v4

    if-nez v4, :cond_2be

    .line 2389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set outside no-reply timer = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    const/4 v4, 0x1

    invoke-virtual {v0, v11, v4}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNoReplyTimer(IZ)V
    :try_end_2bd
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_28b .. :try_end_2bd} :catch_2c7
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_2bd} :catch_2c5

    goto :goto_2c3

    .line 2388
    :cond_2be
    const/4 v4, 0x1

    goto :goto_2c3

    .line 2387
    :cond_2c0
    const/4 v4, 0x1

    goto :goto_2c3

    .line 2385
    :cond_2c2
    const/4 v4, 0x1

    .line 2392
    .end local v2    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :goto_2c3
    move v3, v5

    goto :goto_259

    .line 2399
    .end local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v16    # "isEmptyRules":Z
    .end local v17    # "newReason":I
    .end local v18    # "needAdd":Z
    :catch_2c5
    move-exception v0

    goto :goto_2e6

    .line 2396
    :catch_2c7
    move-exception v0

    goto :goto_2f6

    .line 2381
    .restart local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .restart local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .restart local v16    # "isEmptyRules":Z
    .restart local v17    # "newReason":I
    .restart local v18    # "needAdd":Z
    :cond_2c9
    move v5, v3

    move-object/from16 v3, p0

    .line 2402
    .end local v0    # "cd":Lcom/mediatek/simservs/client/CommunicationDiversion;
    .end local v13    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    .end local v16    # "isEmptyRules":Z
    .end local v17    # "newReason":I
    .end local v18    # "needAdd":Z
    :goto_2cc
    move-object/from16 v14, v20

    goto :goto_2fe

    .line 2399
    :catch_2cf
    move-exception v0

    move v5, v3

    goto :goto_2d7

    .line 2396
    :catch_2d2
    move-exception v0

    move v5, v3

    goto :goto_2dc

    .line 2399
    :catch_2d5
    move-exception v0

    const/4 v5, 0x0

    :goto_2d7
    move-object/from16 v3, p0

    goto :goto_2e6

    .line 2396
    :catch_2da
    move-exception v0

    const/4 v5, 0x0

    :goto_2dc
    move-object/from16 v3, p0

    goto :goto_2f6

    .line 2399
    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .end local v22    # "serviceClass":I
    .local v8, "serviceClass":I
    .restart local v14    # "exceptionReport":Ljava/lang/Exception;
    :catch_2df
    move-exception v0

    move v5, v3

    move/from16 v22, v8

    move-object v3, v9

    move-object/from16 v20, v14

    .line 2400
    .end local v8    # "serviceClass":I
    .end local v14    # "exceptionReport":Ljava/lang/Exception;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v22    # "serviceClass":I
    :goto_2e6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2401
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v14

    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v14    # "exceptionReport":Ljava/lang/Exception;
    goto :goto_2fe

    .line 2396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v22    # "serviceClass":I
    .restart local v8    # "serviceClass":I
    :catch_2ef
    move-exception v0

    move v5, v3

    move/from16 v22, v8

    move-object v3, v9

    move-object/from16 v20, v14

    .line 2397
    .end local v8    # "serviceClass":I
    .end local v14    # "exceptionReport":Ljava/lang/Exception;
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v22    # "serviceClass":I
    :goto_2f6
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 2398
    invoke-virtual {v3, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v14

    .line 2402
    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .end local v20    # "exceptionReport":Ljava/lang/Exception;
    .restart local v14    # "exceptionReport":Ljava/lang/Exception;
    nop

    .line 2404
    :goto_2fe
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 2406
    move-object/from16 v2, p9

    if-eqz v2, :cond_30c

    .line 2407
    const/4 v0, 0x0

    invoke-static {v2, v0, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2408
    invoke-virtual/range {p9 .. p9}, Landroid/os/Message;->sendToTarget()V

    .line 2411
    :cond_30c
    iget-object v0, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_31d

    .line 2412
    iget-object v0, v3, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 2414
    :cond_31d
    return-void

    .line 2284
    .end local v14    # "exceptionReport":Ljava/lang/Exception;
    .end local v15    # "number":Ljava/lang/String;
    .end local v22    # "serviceClass":I
    .local p4, "serviceClass":I
    .local p5, "number":Ljava/lang/String;
    :cond_31e
    move/from16 v1, p4

    move-object/from16 v0, p5

    move-object v3, v9

    move-object v2, v13

    .line 2286
    :goto_324
    invoke-virtual {v3, v2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 2287
    return-void
.end method

.method public handleSetCF(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 22
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2258
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2259
    iget-object v1, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2260
    .local v1, "reqNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2261
    .local v12, "serialNo":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2262
    .local v13, "action":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2263
    .local v14, "reason":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2264
    .local v15, "serviceClass":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2265
    .local v16, "number":Ljava/lang/String;
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2266
    .local v11, "time":I
    iget-object v2, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2267
    .local v10, "phoneId":I
    iget-object v9, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 2269
    .local v9, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read from parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2269
    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move v3, v1

    move v4, v13

    move v5, v14

    move v6, v15

    move-object/from16 v7, v16

    move v8, v11

    move-object/from16 v18, v9

    .end local v9    # "msg":Landroid/os/Message;
    .local v18, "msg":Landroid/os/Message;
    move-object/from16 v9, v17

    move/from16 v17, v10

    .end local v10    # "phoneId":I
    .local v17, "phoneId":I
    move/from16 v19, v11

    .end local v11    # "time":I
    .local v19, "time":I
    move-object/from16 v11, v18

    invoke-virtual/range {v2 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(IIIILjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 2279
    return-void
.end method

.method public handleSetCFInTimeSlot(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 24
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 2769
    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2770
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2771
    .local v12, "reqNo":I
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 2772
    .local v13, "serialNo":I
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2773
    .local v14, "action":I
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 2774
    .local v15, "reason":I
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2775
    .local v11, "serviceClass":I
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 2776
    .local v16, "number":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2777
    .local v10, "time":I
    const/4 v0, 0x2

    new-array v2, v0, [J

    .line 2779
    .local v2, "timeSlot":[J
    :try_start_35
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readLongArray([J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3c

    .line 2782
    move-object v0, v2

    goto :goto_3f

    .line 2780
    :catch_3c
    move-exception v0

    .line 2781
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object v0, v2

    .line 2783
    .end local v2    # "timeSlot":[J
    .local v0, "timeSlot":[J
    :goto_3f
    move-object/from16 v9, p0

    invoke-virtual {v9, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->convertToSeverTime([J)Ljava/lang/String;

    move-result-object v8

    .line 2784
    .local v8, "timeSlotString":Ljava/lang/String;
    iget-object v2, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2785
    .local v7, "phoneId":I
    iget-object v6, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    .line 2787
    .local v6, "msg":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read from parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2787
    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    move-object/from16 v2, p0

    move v3, v12

    move v4, v14

    move v5, v15

    move-object/from16 v17, v6

    .end local v6    # "msg":Landroid/os/Message;
    .local v17, "msg":Landroid/os/Message;
    move v6, v11

    move/from16 v18, v7

    .end local v7    # "phoneId":I
    .local v18, "phoneId":I
    move-object/from16 v7, v16

    move-object/from16 v19, v8

    .end local v8    # "timeSlotString":Ljava/lang/String;
    .local v19, "timeSlotString":Ljava/lang/String;
    move v8, v10

    move-object/from16 v9, v19

    move/from16 v20, v10

    .end local v10    # "time":I
    .local v20, "time":I
    move/from16 v10, v18

    move/from16 v21, v11

    .end local v11    # "serviceClass":I
    .local v21, "serviceClass":I
    move-object/from16 v11, v17

    invoke-virtual/range {v2 .. v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->handleSetCF(IIIILjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 2799
    return-void
.end method

.method public handleSetCW(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;)V
    .registers 15
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;

    .line 1467
    iget-object v0, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1468
    iget-object v0, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1469
    .local v0, "reqNo":I
    iget-object v2, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1470
    .local v2, "serialNo":I
    iget-object v3, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1471
    .local v3, "enable":I
    iget-object v4, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1472
    .local v4, "serviceClass":I
    iget-object v5, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1474
    .local v5, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read from parcel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", serviceClass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", phoneId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "MMTelSS"

    invoke-static {v10, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v6, v6, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f4

    iget-object v6, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 1480
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v6, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v6

    if-nez v6, :cond_6a

    goto/16 :goto_f4

    .line 1485
    :cond_6a
    const/4 v6, 0x0

    .line 1487
    .local v6, "exceptionReport":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSetCW() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    invoke-virtual {p0, v4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1487
    invoke-static {v10, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const/4 v7, 0x3

    :try_start_9a
    invoke-virtual {p0, v7, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v8

    check-cast v8, Lcom/mediatek/simservs/client/CommunicationWaiting;

    .line 1494
    .local v8, "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    const/4 v9, 0x1

    if-ne v3, v9, :cond_a4

    move v1, v9

    :cond_a4
    invoke-virtual {v8, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setActive(Z)V
    :try_end_a7
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_9a .. :try_end_a7} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a7} :catch_a8

    .end local v8    # "cw":Lcom/mediatek/simservs/client/CommunicationWaiting;
    goto :goto_ba

    .line 1498
    :catch_a8
    move-exception v1

    .line 1499
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1500
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v6

    goto :goto_bb

    .line 1495
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b2
    move-exception v1

    .line 1496
    .local v1, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual {v1}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 1497
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v6

    .line 1501
    .end local v1    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :goto_ba
    nop

    .line 1503
    :goto_bb
    invoke-virtual {p0, v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 1506
    if-eqz v6, :cond_d3

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP156:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v1, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1507
    const-string v1, "handleSetCW() OP156 not support, just CSFB"

    invoke-static {v10, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    move-object v6, v1

    .line 1511
    :cond_d3
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_e2

    .line 1512
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v7, 0x0

    invoke-static {v1, v7, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1513
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1516
    :cond_e2
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 1517
    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 1519
    :cond_f3
    return-void

    .line 1481
    .end local v6    # "exceptionReport":Ljava/lang/Exception;
    :cond_f4
    :goto_f4
    iget-object v1, p1, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 1482
    return-void
.end method

.method public handleSetIdentity(Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;I)V
    .registers 22
    .param p1, "rr"    # Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;
    .param p2, "identity"    # I

    .line 756
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 757
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 758
    .local v5, "reqNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 759
    .local v6, "serialNo":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 760
    .local v7, "mode":I
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 762
    .local v8, "phoneId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read from parcel: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", identity="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mode="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", phoneId="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string v12, "MMTelSS"

    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    iget-object v0, v0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSUtils;->isPreferXcap(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_226

    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    .line 768
    # invokes: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->updateNetworkInitSimServ(I)Z
    invoke-static {v0, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$300(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;I)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_226

    .line 773
    :cond_6e
    const/4 v13, 0x0

    .line 775
    .local v13, "exceptionReport":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleSetIdentity() "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v0, ", enable="

    const/4 v11, 0x1

    if-nez v3, :cond_e1

    .line 782
    nop

    .line 784
    :try_start_a3
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v15

    .line 783
    invoke-virtual {v1, v15, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v15

    check-cast v15, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    .line 785
    .local v15, "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    if-ne v7, v11, :cond_b0

    move v4, v11

    .line 786
    .local v4, "enable":Z
    :cond_b0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {v15, v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setActive(Z)V
    :try_end_d9
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_a3 .. :try_end_d9} :catch_de
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_d9} :catch_db

    .line 790
    .end local v4    # "enable":Z
    .end local v15    # "oip":Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;
    goto/16 :goto_1fc

    .line 839
    :catch_db
    move-exception v0

    goto/16 :goto_1ec

    .line 836
    :catch_de
    move-exception v0

    goto/16 :goto_1f5

    .line 790
    :cond_e1
    const-string v15, ", putWhole="

    if-ne v3, v11, :cond_147

    .line 791
    nop

    .line 793
    :try_start_e6
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v4

    .line 792
    invoke-virtual {v1, v4, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    .line 794
    .local v4, "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    if-ne v7, v11, :cond_f5

    .line 795
    move/from16 v16, v11

    goto :goto_f7

    :cond_f5
    const/16 v16, 0x0

    :goto_f7
    move/from16 v17, v16

    .line 796
    .local v17, "enable":Z
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/SuppSrvConfig;->isPutWholeCLIR()Z

    move-result v16

    move/from16 v18, v16

    .line 797
    .local v18, "putWhole":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    .end local v17    # "enable":Z
    .local v0, "enable":Z
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v18

    .end local v18    # "putWhole":Z
    .local v9, "putWhole":Z
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 797
    invoke-static {v12, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-nez v9, :cond_140

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->isContainDefaultBehaviour()Z

    move-result v10

    if-nez v10, :cond_13c

    goto :goto_140

    .line 806
    :cond_13c
    invoke-virtual {v4, v0}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto :goto_145

    .line 802
    :cond_140
    :goto_140
    sget v10, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    invoke-virtual {v4, v0, v0, v10, v11}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(ZZIZ)V

    .line 808
    .end local v0    # "enable":Z
    .end local v4    # "oir":Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;
    .end local v9    # "putWhole":Z
    :goto_145
    goto/16 :goto_1fc

    :cond_147
    const/4 v4, 0x2

    if-ne v3, v4, :cond_189

    .line 809
    nop

    .line 811
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v4

    .line 810
    invoke-virtual {v1, v4, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    .line 812
    .local v4, "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    if-ne v7, v11, :cond_15a

    move/from16 v16, v11

    goto :goto_15c

    :cond_15a
    const/16 v16, 0x0

    :goto_15c
    move/from16 v10, v16

    .line 813
    .local v10, "enable":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v12, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v4, v10}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setActive(Z)V

    .end local v4    # "tip":Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
    .end local v10    # "enable":Z
    goto/16 :goto_1fd

    .line 817
    :cond_189
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1fd

    .line 818
    nop

    .line 820
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v4

    .line 819
    invoke-virtual {v1, v4, v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->getCache(II)Lcom/mediatek/simservs/client/SimservType;

    move-result-object v4

    check-cast v4, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    .line 821
    .local v4, "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    if-ne v7, v11, :cond_19c

    .line 822
    move/from16 v16, v11

    goto :goto_19e

    :cond_19c
    const/16 v16, 0x0

    :goto_19e
    move/from16 v10, v16

    .line 823
    .restart local v10    # "enable":Z
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/ims/SuppSrvConfig;->isPutWholeCLIR()Z

    move-result v16

    move/from16 v17, v16

    .line 824
    .local v17, "putWhole":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->requestToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v17

    .end local v17    # "putWhole":Z
    .local v0, "putWhole":Z
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 824
    invoke-static {v12, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    if-nez v0, :cond_1e5

    invoke-virtual {v4}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->isContainDefaultBehaviour()Z

    move-result v9

    if-nez v9, :cond_1e1

    goto :goto_1e5

    .line 833
    :cond_1e1
    invoke-virtual {v4, v10}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(Z)V

    goto :goto_1fc

    .line 829
    :cond_1e5
    :goto_1e5
    sget v9, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->NODE_ROOT_FULL_CHILD:I

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v10, v9, v11}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setDefaultPresentationRestricted(ZZIZ)V
    :try_end_1eb
    .catch Lcom/mediatek/simservs/xcap/XcapException; {:try_start_e6 .. :try_end_1eb} :catch_de
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_1eb} :catch_db

    goto :goto_1fc

    .line 840
    .end local v4    # "tir":Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;
    .end local v10    # "enable":Z
    .local v0, "e":Ljava/lang/Exception;
    :goto_1ec
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 841
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v13

    goto :goto_1fe

    .line 837
    .local v0, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :goto_1f5
    invoke-virtual {v0}, Lcom/mediatek/simservs/xcap/XcapException;->printStackTrace()V

    .line 838
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;

    move-result-object v13

    .line 842
    .end local v0    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :goto_1fc
    goto :goto_1fe

    .line 817
    :cond_1fd
    :goto_1fd
    goto :goto_1fc

    .line 844
    :goto_1fe
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->identityToCacheId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->clearCache(I)V

    .line 846
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_214

    .line 847
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    const/4 v4, 0x0

    invoke-static {v0, v4, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 848
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 851
    :cond_214
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    if-eqz v0, :cond_225

    .line 852
    iget-object v0, v1, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mXcapMobileDataNetworkManager:Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$400(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/legacy/ss/XcapMobileDataNetworkManager;->releaseNetwork()V

    .line 854
    :cond_225
    return-void

    .line 769
    .end local v13    # "exceptionReport":Ljava/lang/Exception;
    :cond_226
    :goto_226
    iget-object v0, v2, Lcom/mediatek/ims/legacy/ss/MMTelSSRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->triggerCSFB(Landroid/os/Message;)V

    .line 770
    return-void
.end method

.method public identityToCacheId(I)I
    .registers 3
    .param p1, "identity"    # I

    .line 646
    packed-switch p1, :pswitch_data_e

    .line 656
    const/16 v0, 0x8

    return v0

    .line 654
    :pswitch_6
    const/4 v0, 0x7

    return v0

    .line 652
    :pswitch_8
    const/4 v0, 0x6

    return v0

    .line 650
    :pswitch_a
    const/4 v0, 0x5

    return v0

    .line 648
    :pswitch_c
    const/4 v0, 0x4

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method public identityToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "identity"    # I

    .line 631
    packed-switch p1, :pswitch_data_12

    .line 641
    const-string v0, "ERR"

    return-object v0

    .line 639
    :pswitch_6
    const-string v0, "COLR"

    return-object v0

    .line 637
    :pswitch_9
    const-string v0, "COLP"

    return-object v0

    .line 635
    :pswitch_c
    const-string v0, "CLIR"

    return-object v0

    .line 633
    :pswitch_f
    const-string v0, "CLIP"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public isAllRulesDeativated(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;)Z"
        }
    .end annotation

    .line 2175
    .local p1, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/simservs/client/policy/Rule;

    .line 2176
    .local v1, "rule":Lcom/mediatek/simservs/client/policy/Rule;
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2177
    const/4 v0, 0x0

    return v0

    .line 2179
    .end local v1    # "rule":Lcom/mediatek/simservs/client/policy/Rule;
    :cond_1c
    goto :goto_4

    .line 2180
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public isEmptyCB(ILcom/mediatek/simservs/client/SimservType;)Z
    .registers 8
    .param p1, "cbType"    # I
    .param p2, "cb"    # Lcom/mediatek/simservs/client/SimservType;

    .line 2568
    const/4 v0, 0x0

    .line 2569
    .local v0, "r":Z
    const/4 v1, 0x0

    .line 2570
    .local v1, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    .line 2571
    move-object v2, p2

    check-cast v2, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v1

    goto :goto_17

    .line 2572
    :cond_d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_17

    .line 2573
    move-object v2, p2

    check-cast v2, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v1

    .line 2575
    :cond_17
    :goto_17
    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    .line 2576
    .local v2, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_1f
    if-eqz v1, :cond_23

    if-nez v2, :cond_24

    .line 2577
    :cond_23
    const/4 v0, 0x1

    .line 2579
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmptyCB()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMTelSS"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    return v0
.end method

.method public isEmptyCF(Lcom/mediatek/simservs/client/CommunicationDiversion;)Z
    .registers 7
    .param p1, "cd"    # Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, "r":Z
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->getRuleSet()Lcom/mediatek/simservs/client/policy/RuleSet;

    move-result-object v1

    .line 2144
    .local v1, "ruleSet":Lcom/mediatek/simservs/client/policy/RuleSet;
    if-nez v1, :cond_9

    const/4 v2, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v1}, Lcom/mediatek/simservs/client/policy/RuleSet;->getRules()Ljava/util/List;

    move-result-object v2

    .line 2145
    .local v2, "ruleList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    :goto_d
    if-eqz v1, :cond_11

    if-nez v2, :cond_12

    .line 2146
    :cond_11
    const/4 v0, 0x1

    .line 2148
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmptyCF()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMTelSS"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return v0
.end method

.method public isMediaMatchServiceClass(Ljava/util/List;I)I
    .registers 14
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 1652
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1653
    .local v0, "r":I
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v1

    .line 1654
    .local v1, "mediaType":I
    const-string v2, ""

    .line 1655
    .local v2, "printMedia":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1656
    .local v4, "m":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1657
    .end local v4    # "m":Ljava/lang/String;
    goto :goto_f

    .line 1658
    :cond_30
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToMediaString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1660
    .local v4, "containAudio":Z
    const/16 v5, 0x200

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToMediaString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 1664
    .local v6, "containVideo":Z
    and-int/lit8 v7, p2, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-string v10, "MMTelSS"

    if-eqz v7, :cond_62

    .line 1665
    if-eqz v4, :cond_5c

    .line 1666
    if-eqz v6, :cond_5a

    .line 1668
    if-eq v1, v3, :cond_58

    if-eq v1, v9, :cond_58

    if-ne v1, v8, :cond_56

    goto :goto_58

    .line 1673
    :cond_56
    const/4 v0, 0x1

    goto :goto_97

    .line 1671
    :cond_58
    :goto_58
    const/4 v0, 0x0

    goto :goto_97

    .line 1677
    :cond_5a
    const/4 v0, 0x1

    goto :goto_97

    .line 1680
    :cond_5c
    if-eqz v6, :cond_60

    .line 1682
    const/4 v0, 0x0

    goto :goto_97

    .line 1685
    :cond_60
    const/4 v0, 0x1

    goto :goto_97

    .line 1688
    :cond_62
    and-int/lit16 v7, p2, 0x200

    if-eqz v7, :cond_86

    .line 1689
    if-eqz v6, :cond_7c

    .line 1690
    if-eqz v4, :cond_73

    .line 1692
    if-eqz v1, :cond_71

    if-ne v1, v8, :cond_6f

    goto :goto_71

    .line 1696
    :cond_6f
    const/4 v0, 0x0

    goto :goto_97

    .line 1694
    :cond_71
    :goto_71
    const/4 v0, 0x2

    goto :goto_97

    .line 1700
    :cond_73
    if-eqz v1, :cond_7a

    if-ne v1, v9, :cond_78

    goto :goto_7a

    .line 1704
    :cond_78
    const/4 v0, 0x0

    goto :goto_97

    .line 1702
    :cond_7a
    :goto_7a
    const/4 v0, 0x2

    goto :goto_97

    .line 1708
    :cond_7c
    if-eqz v4, :cond_80

    .line 1710
    const/4 v0, 0x0

    goto :goto_97

    .line 1713
    :cond_80
    if-ne v1, v3, :cond_84

    .line 1714
    const/4 v0, 0x0

    goto :goto_97

    .line 1716
    :cond_84
    const/4 v0, 0x2

    goto :goto_97

    .line 1720
    :cond_86
    if-nez p2, :cond_97

    .line 1722
    const-string v7, "isMediaMatchServiceClass: break down SERVICE_CLASS_NONE"

    invoke-static {v10, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {p0, p1, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isMediaMatchServiceClass(Ljava/util/List;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1724
    invoke-virtual {p0, p1, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isMediaMatchServiceClass(Ljava/util/List;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 1726
    :cond_97
    :goto_97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMediaMatchServiceClass()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->matchedMediaToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mediaType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->mediaTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", media="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1726
    invoke-static {v10, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    return v0
.end method

.method public isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I
    .registers 7
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "serviceClass"    # I

    .line 1734
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportMediaTag()Z

    move-result v0

    .line 1735
    .local v0, "isSupportMediaTag":Z
    const/4 v1, 0x0

    .line 1736
    .local v1, "r":I
    if-eqz v0, :cond_18

    .line 1737
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->getMedias()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isMediaMatchServiceClass(Ljava/util/List;I)I

    move-result v1

    goto :goto_27

    .line 1739
    :cond_18
    if-nez p2, :cond_1c

    .line 1740
    const/4 v1, 0x3

    goto :goto_27

    .line 1741
    :cond_1c
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_22

    .line 1742
    const/4 v1, 0x1

    goto :goto_27

    .line 1743
    :cond_22
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_27

    .line 1744
    const/4 v1, 0x2

    .line 1747
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRuleMatchServiceClass()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->matchedMediaToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isSupportMediaTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1747
    const-string v3, "MMTelSS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    return v1
.end method

.method public matchedMediaToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "matchedMedia"    # I

    .line 1601
    const-string v0, ""

    .line 1602
    .local v0, "r":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_17

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    :cond_17
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2c

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1608
    :cond_2c
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1609
    const-string v0, "no matched"

    .line 1611
    :cond_36
    return-object v0
.end method

.method public mediaTypeToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 1615
    if-nez p1, :cond_5

    .line 1616
    const-string v0, "Standard"

    return-object v0

    .line 1617
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1618
    const-string v0, "Only Audio"

    return-object v0

    .line 1619
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 1620
    const-string v0, "Seperate"

    return-object v0

    .line 1621
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 1622
    const-string v0, "Video with Audio"

    return-object v0

    .line 1624
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public modifiedServiceToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "modifiedService"    # I

    .line 1971
    const-string v0, ""

    .line 1972
    .local v0, "r":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_17

    .line 1973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1975
    :cond_17
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2c

    .line 1976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    :cond_2c
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1979
    const-string v0, "no modified"

    .line 1981
    :cond_36
    return-object v0
.end method

.method public modifyCBRule(Ljava/util/List;Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;II)I
    .registers 9
    .param p2, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "lockState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .line 2498
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCBRule() facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    const/4 v1, 0x1

    if-ne p5, v1, :cond_18

    const-string v1, "Enable"

    goto :goto_1a

    :cond_18
    const-string v1, "Disable"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2498
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, "r":I
    invoke-virtual {p0, p2, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I

    move-result v1

    .line 2505
    .local v1, "isMatchMedia":I
    if-eqz v1, :cond_40

    .line 2506
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyMatchedCBRule(Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2510
    :cond_40
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_46

    .line 2511
    or-int/lit8 v0, v0, 0x1

    .line 2513
    :cond_46
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_4c

    .line 2514
    or-int/lit8 v0, v0, 0x2

    .line 2517
    :cond_4c
    return v0
.end method

.method public modifyCFRule(Ljava/util/List;Lcom/mediatek/simservs/client/policy/RuleSet;Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)I
    .registers 29
    .param p2, "ruleSet"    # Lcom/mediatek/simservs/client/policy/RuleSet;
    .param p3, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p4, "reason"    # I
    .param p5, "action"    # I
    .param p6, "serviceClass"    # I
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # I
    .param p9, "timeSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;",
            "Lcom/mediatek/simservs/client/policy/RuleSet;",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1878
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCFRule() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p4

    invoke-virtual {v9, v12}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    move/from16 v13, p5

    invoke-virtual {v9, v13}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v9, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    invoke-static/range {p7 .. p7}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p9

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/16 v16, 0x0

    .line 1884
    .local v16, "r":I
    move-object/from16 v8, p3

    invoke-virtual {v9, v8, v11}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->isRuleMatchServiceClass(Lcom/mediatek/simservs/client/policy/Rule;I)I

    move-result v17

    .line 1887
    .local v17, "isMatchMedia":I
    if-eqz v17, :cond_7e

    .line 1888
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifyMatchedCFRule(Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a8

    .line 1890
    :cond_7e
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a8

    and-int/lit16 v0, v11, 0x200

    if-eqz v0, :cond_a8

    .line 1893
    const/16 v4, 0x200

    const-string v18, "_VIDEO"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->createCFRuleForService(Lcom/mediatek/simservs/client/policy/RuleSet;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1898
    :cond_a8
    :goto_a8
    and-int/lit8 v0, v17, 0x1

    if-eqz v0, :cond_ae

    .line 1899
    or-int/lit8 v16, v16, 0x1

    .line 1901
    :cond_ae
    and-int/lit8 v0, v17, 0x2

    if-eqz v0, :cond_b4

    .line 1902
    or-int/lit8 v16, v16, 0x2

    .line 1904
    :cond_b4
    return v16
.end method

.method public modifyMatchedCBRule(Lcom/mediatek/simservs/client/policy/Rule;Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "lockState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyMatchedCBRule() facility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2476
    const/4 v1, 0x1

    if-ne p4, v1, :cond_18

    const-string v2, "Enable"

    goto :goto_1a

    :cond_18
    const-string v2, "Disable"

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", service="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2477
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2475
    const-string v2, "MMTelSS"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 2480
    .local v2, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 2482
    .local v3, "act":Lcom/mediatek/simservs/client/policy/Actions;
    if-ne p4, v1, :cond_49

    .line 2484
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->removeRuleDeactivated()V

    .line 2485
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/mediatek/simservs/client/policy/Actions;->setAllow(Z)V

    goto :goto_4c

    .line 2489
    :cond_49
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 2492
    :goto_4c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
    return-object v0
.end method

.method public modifyMatchedCFRule(Lcom/mediatek/simservs/client/policy/Rule;IIILjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "rule"    # Lcom/mediatek/simservs/client/policy/Rule;
    .param p2, "reason"    # I
    .param p3, "action"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "time"    # I
    .param p7, "timeSlot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            "III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mediatek/simservs/client/policy/Rule;",
            ">;"
        }
    .end annotation

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyMatchedCFRule() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->reasonCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1780
    invoke-virtual {p0, p3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->actionCFToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {p0, p4}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-static {p5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1779
    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/simservs/client/policy/Rule;>;"
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getConditions()Lcom/mediatek/simservs/client/policy/Conditions;

    move-result-object v2

    .line 1786
    .local v2, "cond":Lcom/mediatek/simservs/client/policy/Conditions;
    invoke-virtual {p1}, Lcom/mediatek/simservs/client/policy/Rule;->getActions()Lcom/mediatek/simservs/client/policy/Actions;

    move-result-object v3

    .line 1788
    .local v3, "act":Lcom/mediatek/simservs/client/policy/Actions;
    const/4 v4, 0x1

    if-eq p3, v4, :cond_78

    const/4 v4, 0x3

    if-ne p3, v4, :cond_62

    goto :goto_78

    .line 1807
    :cond_62
    const/4 v1, 0x4

    if-eqz p3, :cond_67

    if-ne p3, v1, :cond_bf

    .line 1810
    :cond_67
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->addRuleDeactivated()V

    .line 1811
    if-ne p3, v1, :cond_bf

    .line 1812
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 1813
    const-string v1, ""

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->setForwardTo(Lcom/mediatek/simservs/client/policy/Actions;Ljava/lang/String;)V

    goto :goto_bf

    .line 1791
    :cond_78
    :goto_78
    invoke-virtual {v2}, Lcom/mediatek/simservs/client/policy/Conditions;->removeRuleDeactivated()V

    .line 1793
    invoke-virtual {p0, v3, p5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->setForwardTo(Lcom/mediatek/simservs/client/policy/Actions;Ljava/lang/String;)V

    .line 1795
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/ims/SuppSrvConfig;->isNoReplyTimeInsideCFAction()Z

    move-result v4

    if-eqz v4, :cond_ab

    if-lez p6, :cond_ab

    const/4 v4, 0x2

    if-ne p2, v4, :cond_ab

    .line 1797
    invoke-virtual {v3}, Lcom/mediatek/simservs/client/policy/Actions;->getNoReplyTimer()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_ab

    .line 1798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set inside no-reply timer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-virtual {v3, p6}, Lcom/mediatek/simservs/client/policy/Actions;->setNoReplyTimer(I)V

    .line 1802
    :cond_ab
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportTimeSlot()Z

    move-result v1

    if-eqz v1, :cond_bb

    if-eqz p7, :cond_bb

    .line 1803
    invoke-virtual {v2, p7}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    goto :goto_bf

    .line 1805
    :cond_bb
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addTime(Ljava/lang/String;)V

    .line 1817
    :cond_bf
    :goto_bf
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    return-object v0
.end method

.method public reasonCFToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "reason"    # I

    .line 1522
    if-nez p1, :cond_5

    .line 1523
    const-string v0, "CFU"

    return-object v0

    .line 1524
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1525
    const-string v0, "CFB"

    return-object v0

    .line 1526
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 1527
    const-string v0, "CFNRy"

    return-object v0

    .line 1528
    :cond_11
    const/4 v0, 0x3

    if-ne p1, v0, :cond_17

    .line 1529
    const-string v0, "CFNRc"

    return-object v0

    .line 1530
    :cond_17
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1d

    .line 1531
    const-string v0, "CFNL"

    return-object v0

    .line 1532
    :cond_1d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_23

    .line 1533
    const-string v0, "CF All"

    return-object v0

    .line 1534
    :cond_23
    const/4 v0, 0x5

    if-ne p1, v0, :cond_29

    .line 1535
    const-string v0, "CF All Conditional"

    return-object v0

    .line 1537
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeDuplicateCF(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/internal/telephony/MtkCallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 1343
    .local p1, "cfInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_d5

    .line 1344
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->CF_REASON:[I
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$1000()[I

    move-result-object v1

    aget v1, v1, v0

    .line 1345
    .local v1, "reason":I
    const/4 v2, 0x0

    .line 1346
    .local v2, "firstCfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1347
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 1348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 1349
    .local v4, "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const-string v5, ", number="

    const-string v6, ", service="

    const-string v7, "MMTelSS"

    if-nez v2, :cond_58

    iget v8, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    if-ne v8, v1, :cond_58

    .line 1350
    move-object v2, v4

    .line 1351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "firstCfInfo() reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 1352
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 1353
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1351
    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_cf

    .line 1354
    :cond_58
    if-eqz v2, :cond_98

    iget v8, v2, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    if-ne v8, v9, :cond_98

    iget v8, v2, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    if-ne v8, v9, :cond_98

    .line 1356
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1357
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeDuplicateCF() reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 1358
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 1359
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1357
    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1360
    :cond_98
    if-eqz v2, :cond_cf

    iget v8, v2, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    if-eq v8, v9, :cond_cf

    .line 1361
    move-object v2, v4

    .line 1362
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reassign cf info, reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 1363
    invoke-virtual {p0, v6}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 1364
    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSuppServHelper;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1362
    invoke-static {v7, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    .end local v4    # "cfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_cf
    :goto_cf
    goto/16 :goto_f

    .line 1343
    .end local v1    # "reason":I
    .end local v2    # "firstCfInfo":Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/internal/telephony/MtkCallForwardInfo;>;"
    :cond_d1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1368
    .end local v0    # "i":I
    :cond_d5
    return-void
.end method

.method public reportXcapException(Lcom/mediatek/simservs/xcap/XcapException;)Ljava/lang/Exception;
    .registers 6
    .param p1, "xcapException"    # Lcom/mediatek/simservs/xcap/XcapException;

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v1

    const-string v2, "MMTelSS"

    if-eqz v1, :cond_15

    .line 617
    const-string v1, "reportXcapException: isConnectionError()"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    move-object v0, v1

    goto :goto_45

    .line 619
    :cond_15
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/SuppSrvConfig;->isHttpErrToUnknownHostErr()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 620
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    if-eqz v1, :cond_44

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportXcapException: HttpErrCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    move-object v0, v1

    goto :goto_45

    .line 625
    :cond_44
    move-object v0, p1

    .line 627
    :goto_45
    return-object v0
.end method

.method public run()V
    .registers 1

    .line 604
    return-void
.end method

.method public serviceClassToMediaString(I)Ljava/lang/String;
    .registers 4
    .param p1, "service"    # I

    .line 1591
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 1592
    const-string v0, "audio"

    return-object v0

    .line 1593
    :cond_6
    const/16 v0, 0x200

    if-ne p1, v0, :cond_d

    .line 1594
    const-string v0, "video"

    return-object v0

    .line 1596
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serviceClassToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "service"    # I

    .line 1558
    if-nez p1, :cond_5

    .line 1559
    const-string v0, "None"

    return-object v0

    .line 1560
    :cond_5
    const/16 v0, 0x100

    if-ne p1, v0, :cond_c

    .line 1561
    const-string v0, "Line2"

    return-object v0

    .line 1562
    :cond_c
    const/16 v0, 0x200

    if-ne p1, v0, :cond_13

    .line 1563
    const-string v0, "Video"

    return-object v0

    .line 1564
    :cond_13
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 1565
    const-string v0, "Voice"

    return-object v0

    .line 1566
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 1567
    const-string v0, "Data"

    return-object v0

    .line 1568
    :cond_1f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_25

    .line 1569
    const-string v0, "Fax"

    return-object v0

    .line 1570
    :cond_25
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2c

    .line 1571
    const-string v0, "Sms"

    return-object v0

    .line 1572
    :cond_2c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_33

    .line 1573
    const-string v0, "Data sync"

    return-object v0

    .line 1574
    :cond_33
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3a

    .line 1575
    const-string v0, "Data async"

    return-object v0

    .line 1576
    :cond_3a
    const/16 v0, 0x40

    if-ne p1, v0, :cond_41

    .line 1577
    const-string v0, "Packet"

    return-object v0

    .line 1578
    :cond_41
    const/16 v0, 0x80

    if-ne p1, v0, :cond_48

    .line 1579
    const-string v0, "Pad"

    return-object v0

    .line 1580
    :cond_48
    if-ne p1, v0, :cond_4d

    .line 1581
    const-string v0, "Max"

    return-object v0

    .line 1582
    :cond_4d
    const/16 v0, 0x201

    if-ne p1, v0, :cond_54

    .line 1584
    const-string v0, "Voice&Video"

    return-object v0

    .line 1586
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serviceNeedToCreate(I)[I
    .registers 10
    .param p1, "modifiedService"    # I

    .line 1985
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1986
    .local v1, "r":[I
    const-string v2, ""

    .line 1987
    .local v2, "print_r":Ljava/lang/String;
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/SuppSrvConfig;->getMediaTagType()I

    move-result v3

    .line 1989
    .local v3, "mediaType":I
    const/16 v4, 0x200

    const/16 v5, 0x201

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v3, :cond_27

    .line 1990
    if-nez p1, :cond_1a

    .line 1991
    aput v5, v1, v7

    goto :goto_61

    .line 1993
    :cond_1a
    if-ne p1, v0, :cond_1f

    .line 1994
    aput v4, v1, v7

    goto :goto_61

    .line 1995
    :cond_1f
    if-ne p1, v6, :cond_24

    .line 1996
    aput v0, v1, v7

    goto :goto_61

    .line 1998
    :cond_24
    new-array v1, v7, [I

    goto :goto_61

    .line 2000
    :cond_27
    if-ne v3, v0, :cond_31

    .line 2001
    if-nez p1, :cond_2e

    .line 2002
    aput v0, v1, v7

    goto :goto_61

    .line 2004
    :cond_2e
    new-array v1, v7, [I

    goto :goto_61

    .line 2006
    :cond_31
    if-ne v3, v6, :cond_49

    .line 2007
    if-nez p1, :cond_3c

    .line 2008
    new-array v1, v6, [I

    .line 2009
    aput v0, v1, v7

    .line 2010
    aput v4, v1, v0

    goto :goto_61

    .line 2011
    :cond_3c
    if-ne p1, v0, :cond_41

    .line 2012
    aput v4, v1, v7

    goto :goto_61

    .line 2013
    :cond_41
    if-ne p1, v6, :cond_46

    .line 2014
    aput v0, v1, v7

    goto :goto_61

    .line 2016
    :cond_46
    new-array v1, v7, [I

    goto :goto_61

    .line 2018
    :cond_49
    const/4 v4, 0x3

    if-ne v3, v4, :cond_61

    .line 2019
    if-nez p1, :cond_55

    .line 2020
    new-array v1, v6, [I

    .line 2021
    aput v0, v1, v7

    .line 2022
    aput v5, v1, v0

    goto :goto_61

    .line 2024
    :cond_55
    if-ne p1, v0, :cond_5a

    .line 2025
    aput v5, v1, v7

    goto :goto_61

    .line 2027
    :cond_5a
    if-ne p1, v6, :cond_5f

    .line 2028
    aput v0, v1, v7

    goto :goto_61

    .line 2030
    :cond_5f
    new-array v1, v7, [I

    .line 2033
    :cond_61
    :goto_61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    array-length v4, v1

    if-ge v0, v4, :cond_82

    .line 2034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v0

    invoke-virtual {p0, v5}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2033
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 2036
    .end local v0    # "i":I
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceNeedToCreate(): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mediaType="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->mediaTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", modifiedService="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->modifiedServiceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2036
    const-string v4, "MMTelSS"

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return-object v1
.end method

.method public setForwardTo(Lcom/mediatek/simservs/client/policy/Actions;Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Lcom/mediatek/simservs/client/policy/Actions;
    .param p2, "number"    # Ljava/lang/String;

    .line 1754
    if-eqz p2, :cond_6

    .line 1755
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/mediatek/simservs/client/policy/Actions;->setFowardTo(Ljava/lang/String;Z)V

    .line 1760
    :cond_6
    return-void
.end method

.method public setMedia(Lcom/mediatek/simservs/client/policy/Conditions;I)V
    .registers 6
    .param p1, "cond"    # Lcom/mediatek/simservs/client/policy/Conditions;
    .param p2, "serviceClass"    # I

    .line 1763
    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mSSConfig:Lcom/mediatek/ims/SuppSrvConfig;
    invoke-static {}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$200()Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/SuppSrvConfig;->isSupportMediaTag()Z

    move-result v0

    .line 1764
    .local v0, "isSupportMedia":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMedia() isSupportMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {p0, p2}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1764
    const-string v2, "MMTelSS"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    if-nez v0, :cond_2d

    .line 1767
    return-void

    .line 1769
    :cond_2d
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_39

    .line 1770
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToMediaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1772
    :cond_39
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_46

    .line 1773
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->serviceClassToMediaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/simservs/client/policy/Conditions;->addMedia(Ljava/lang/String;)V

    .line 1775
    :cond_46
    return-void
.end method

.method public triggerCSFB(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerCSFB msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMTelSS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    if-eqz p1, :cond_24

    .line 2252
    const/4 v0, 0x0

    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1}, Ljava/net/UnknownHostException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2253
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2255
    :cond_24
    return-void
.end method

.method public updateNetwork(I)V
    .registers 4
    .param p1, "idx"    # I

    .line 1246
    packed-switch p1, :pswitch_data_a8

    goto/16 :goto_a7

    .line 1269
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    goto/16 :goto_a7

    .line 1266
    :pswitch_1a
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 1267
    goto/16 :goto_a7

    .line 1263
    :pswitch_2f
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentationRestriction;->setNetwork(Landroid/net/Network;)V

    .line 1264
    goto :goto_a7

    .line 1260
    :pswitch_43
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OriginatingIdentityPresentation;->setNetwork(Landroid/net/Network;)V

    .line 1261
    goto :goto_a7

    .line 1257
    :pswitch_57
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/CommunicationWaiting;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationWaiting;->setNetwork(Landroid/net/Network;)V

    .line 1258
    goto :goto_a7

    .line 1254
    :pswitch_6b
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/IncomingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1255
    goto :goto_a7

    .line 1251
    :pswitch_7f
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/OutgoingCommunicationBarring;->setNetwork(Landroid/net/Network;)V

    .line 1252
    goto :goto_a7

    .line 1248
    :pswitch_93
    iget-object v0, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mCacheSimserv:[Lcom/mediatek/simservs/client/SimservType;
    invoke-static {v0}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$600(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)[Lcom/mediatek/simservs/client/SimservType;

    move-result-object v0

    aget-object v0, v0, p1

    check-cast v0, Lcom/mediatek/simservs/client/CommunicationDiversion;

    iget-object v1, p0, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport$MMTelSSTransmitter;->this$0:Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;

    # getter for: Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->mNetwork:Landroid/net/Network;
    invoke-static {v1}, Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;->access$500(Lcom/mediatek/ims/legacy/ss/MMTelSSTransport;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/client/CommunicationDiversion;->setNetwork(Landroid/net/Network;)V

    .line 1249
    nop

    .line 1272
    :goto_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_93
        :pswitch_7f
        :pswitch_6b
        :pswitch_57
        :pswitch_43
        :pswitch_2f
        :pswitch_1a
        :pswitch_5
    .end packed-switch
.end method
