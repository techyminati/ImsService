.class public Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
.super Ljava/lang/Object;
.source "MtkSpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
    }
.end annotation


# static fields
.field private static CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final LOG_TAG_EX:Ljava/lang/String; = "MtkSpnOverride"

.field protected static final OEM_SPN_OVERRIDE_PATH:Ljava/lang/String; = "telephony/spn-conf.xml"

.field protected static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_GID1_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efgid1.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_PNN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efpnn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efspn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_IMSI_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-imsi.xml"

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;


# instance fields
.field private CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

.field protected mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->sInstSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 118
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->loadSpnOverrides()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    .line 124
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->loadVirtualSpnOverridesByEfSpn()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    .line 128
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->loadVirtualSpnOverridesByImsi()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    .line 132
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->loadVirtualSpnOverridesByEfPnn()V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    .line 136
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->loadVirtualSpnOverridesByEfGid1()V

    .line 138
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    .registers 2

    .line 108
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->sInstSync:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->sInstance:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    if-nez v1, :cond_e

    .line 110
    new-instance v1, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;-><init>()V

    sput-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->sInstance:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    .line 112
    :cond_e
    sget-object v1, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->sInstance:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    monitor-exit v0

    return-object v1

    .line 113
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;ZZ)Ljava/lang/String;
    .registers 27
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "desireLongName"    # Z
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "getCtSpn"    # Z
    .param p5, "getDefaultSpn"    # Z

    .line 557
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 559
    .local v2, "operName":Ljava/lang/String;
    const-string v3, "MtkSpnOverride"

    const-string v4, "99999"

    const-string v5, "46697"

    const-string v6, "46692"

    const-string v7, "46601"

    const-string v8, "46015"

    const-string v9, "46011"

    const-string v10, "46003"

    const-string v11, "45407"

    const-string v12, "46009"

    const-string v13, "46001"

    const-string v14, "46008"

    const-string v15, "46007"

    move-object/from16 v16, v2

    .end local v2    # "operName":Ljava/lang/String;
    .local v16, "operName":Ljava/lang/String;
    const-string v2, "46004"

    move-object/from16 v17, v3

    const-string v3, "46002"

    move-object/from16 v18, v4

    const-string v4, "46000"

    if-eqz p2, :cond_134

    .line 561
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_127

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_127

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_127

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_127

    .line 563
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_127

    .line 565
    :cond_4d
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11a

    .line 566
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    goto/16 :goto_11a

    .line 568
    :cond_61
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10d

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10d

    if-eqz p4, :cond_71

    goto/16 :goto_10d

    .line 570
    :cond_71
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 571
    const v2, 0x805002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 572
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_84
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 573
    const v2, 0x805001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 574
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_97
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 575
    const v2, 0x8050020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 576
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_aa
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 577
    const v2, 0x8050021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 578
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_bd
    const-string v2, "99998"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 579
    const v2, 0x8050022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 580
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_d2
    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 581
    const v2, 0x8050023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 585
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_e7
    if-eqz p5, :cond_f5

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 586
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 588
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_f5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find long operator name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23a

    .line 569
    :cond_10d
    :goto_10d
    const v2, 0x8050063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 567
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_11a
    :goto_11a
    const v2, 0x805001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 564
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_127
    :goto_127
    const v2, 0x805001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 592
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_134
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    if-nez p2, :cond_23a

    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22e

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22e

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22e

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22e

    .line 597
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    goto/16 :goto_22e

    .line 599
    :cond_15a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_222

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_222

    .line 600
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16e

    goto/16 :goto_222

    .line 602
    :cond_16e
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_216

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_216

    if-eqz p4, :cond_17e

    goto/16 :goto_216

    .line 604
    :cond_17e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 605
    const v2, 0x805002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 606
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_191
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 607
    const v2, 0x8050026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 608
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1a4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 609
    const v2, 0x8050027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 610
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1b7
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 611
    const v2, 0x8050028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto/16 :goto_23c

    .line 612
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1ca
    const-string v2, "99997"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    .line 613
    const v2, 0x8050029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 614
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1de
    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 615
    const v2, 0x805002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 619
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1f2
    if-eqz p5, :cond_1ff

    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 620
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 622
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_1ff
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find short operator name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23a

    .line 603
    :cond_216
    :goto_216
    const v2, 0x8050064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 601
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_222
    :goto_222
    const v2, 0x8050025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 598
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_22e
    :goto_22e
    const v2, 0x8050024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    goto :goto_23c

    .line 627
    .end local v2    # "operName":Ljava/lang/String;
    .restart local v16    # "operName":Ljava/lang/String;
    :cond_23a
    :goto_23a
    move-object/from16 v2, v16

    .end local v16    # "operName":Ljava/lang/String;
    .restart local v2    # "operName":Ljava/lang/String;
    :goto_23c
    return-object v2
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 351
    .local v0, "len":I
    const/4 v1, 0x0

    .line 353
    .local v1, "idxCompare":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mvno match imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/4 v3, 0x0

    if-nez p2, :cond_15

    const-string v4, ""

    goto :goto_23

    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_21

    invoke-virtual {p2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_21
    const-string v4, "xx"

    :goto_23
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pattern = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    const-string v4, "MtkSpnOverride"

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-lez v0, :cond_5f

    if-nez p2, :cond_3c

    goto :goto_5f

    .line 357
    :cond_3c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_43

    return v3

    .line 359
    :cond_43
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_44
    if-ge v2, v0, :cond_5d

    .line 360
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 361
    .local v4, "c":C
    const/16 v5, 0x78

    if-eq v4, v5, :cond_5a

    const/16 v5, 0x58

    if-eq v4, v5, :cond_5a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_59

    .line 362
    goto :goto_5a

    .line 364
    :cond_59
    return v3

    .line 359
    .end local v4    # "c":C
    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 367
    .end local v2    # "idx":I
    :cond_5d
    const/4 v2, 0x1

    return v2

    .line 356
    :cond_5f
    :goto_5f
    return v3
.end method

.method private isForceGetCtSpnFromRes(ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "mvnoOperName"    # Ljava/lang/String;

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "getFromResource":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 518
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    const v2, 0x8050061

    invoke-virtual {p3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "ctName":Ljava/lang/String;
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "simCarrierName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ctName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", simCarrierName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MtkSpnOverride"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eqz v2, :cond_56

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 523
    :cond_50
    const-string v4, "Get from resource."

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x1

    .line 527
    :cond_56
    const-string v4, "20404"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    const-string v4, "45403"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 528
    :cond_66
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7b

    if-eqz v2, :cond_7b

    .line 529
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 530
    const-string v4, "Special handle for roaming case!"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x1

    .line 534
    :cond_7b
    return v0
.end method

.method private static loadVirtualSpnOverridesByEfGid1()V
    .registers 10

    .line 421
    const-string v0, "Exception in virtual-spn-conf-by-efgid1 parser "

    const-string v1, "MtkSpnOverride"

    const-string v2, "loadVirtualSpnOverridesByEfGid1"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/virtual-spn-conf-by-efgid1.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v2, "spnFile":Ljava/io/File;
    :try_start_14
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_93

    .line 432
    .local v3, "spnReader":Ljava/io/FileReader;
    nop

    .line 435
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 436
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 438
    const-string v5, "virtualSpnOverridesByEfGid1"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 441
    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 443
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "name":Ljava/lang/String;
    const-string v6, "virtualSpnOverride"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 445
    nop

    .line 453
    .end local v5    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_91

    .line 448
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3a
    const-string v6, "mccmncgid1"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "mccmncgid1":Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "spn":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test mccmncgid1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v8, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_68} :catch_7e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_68} :catch_6a

    .line 452
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "mccmncgid1":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    goto :goto_26

    .line 456
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6a
    move-exception v4

    .line 457
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 454
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v4

    .line 455
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_91
    nop

    .line 459
    :goto_92
    return-void

    .line 427
    .end local v3    # "spnReader":Ljava/io/FileReader;
    :catch_93
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method private static loadVirtualSpnOverridesByEfPnn()V
    .registers 10

    .line 372
    const-string v0, "Exception in virtual-spn-conf-by-efpnn parser "

    const-string v1, "MtkSpnOverride"

    const-string v2, "loadVirtualSpnOverridesByEfPnn"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/virtual-spn-conf-by-efpnn.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v2, "spnFile":Ljava/io/File;
    :try_start_14
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_93

    .line 383
    .local v3, "spnReader":Ljava/io/FileReader;
    nop

    .line 386
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 387
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 389
    const-string v5, "virtualSpnOverridesByEfPnn"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 392
    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 394
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "name":Ljava/lang/String;
    const-string v6, "virtualSpnOverride"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 396
    nop

    .line 404
    .end local v5    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_91

    .line 399
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3a
    const-string v6, "mccmncpnn"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    .local v6, "mccmncpnn":Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "spn":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test mccmncpnn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v8, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_68} :catch_7e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_68} :catch_6a

    .line 403
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "mccmncpnn":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    goto :goto_26

    .line 407
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6a
    move-exception v4

    .line 408
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 405
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v4

    .line 406
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_91
    nop

    .line 410
    :goto_92
    return-void

    .line 378
    .end local v3    # "spnReader":Ljava/io/FileReader;
    :catch_93
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void
.end method

.method private static loadVirtualSpnOverridesByEfSpn()V
    .registers 10

    .line 217
    const-string v0, "Exception in virtual-spn-conf-by-efspn parser "

    const-string v1, "MtkSpnOverride"

    const-string v2, "loadVirtualSpnOverridesByEfSpn"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/virtual-spn-conf-by-efspn.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v2, "spnFile":Ljava/io/File;
    :try_start_14
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_93

    .line 228
    .local v3, "spnReader":Ljava/io/FileReader;
    nop

    .line 231
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 232
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 234
    const-string v5, "virtualSpnOverridesByEfSpn"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 237
    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 239
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "name":Ljava/lang/String;
    const-string v6, "virtualSpnOverride"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 241
    nop

    .line 249
    .end local v5    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_91

    .line 244
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3a
    const-string v6, "mccmncspn"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "mccmncspn":Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "spn":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test mccmncspn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v8, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_68} :catch_7e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_68} :catch_6a

    .line 248
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "mccmncspn":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    goto :goto_26

    .line 252
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6a
    move-exception v4

    .line 253
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 250
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7e
    move-exception v4

    .line 251
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_91
    nop

    .line 255
    :goto_92
    return-void

    .line 223
    .end local v3    # "spnReader":Ljava/io/FileReader;
    :catch_93
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private loadVirtualSpnOverridesByImsi()V
    .registers 11

    .line 266
    const-string v0, "Exception in virtual-spn-conf-by-imsi parser "

    const-string v1, "MtkSpnOverride"

    const-string v2, "loadVirtualSpnOverridesByImsi"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/virtual-spn-conf-by-imsi.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v2, "spnFile":Ljava/io/File;
    :try_start_14
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_98

    .line 277
    .local v3, "spnReader":Ljava/io/FileReader;
    nop

    .line 280
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 281
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 283
    const-string v5, "virtualSpnOverridesByImsi"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 286
    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 288
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "name":Ljava/lang/String;
    const-string v6, "virtualSpnOverride"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 290
    nop

    .line 298
    .end local v5    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_96

    .line 293
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3a
    const-string v6, "imsipattern"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "imsipattern":Ljava/lang/String;
    const-string v8, "name"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "spn":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test imsipattern = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    new-instance v9, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;

    invoke-direct {v9, p0, v6, v7}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;-><init>(Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_6d} :catch_83
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_6d} :catch_6f

    .line 297
    nop

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "imsipattern":Ljava/lang/String;
    .end local v7    # "spn":Ljava/lang/String;
    goto :goto_26

    .line 301
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_6f
    move-exception v4

    .line 302
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 299
    .end local v4    # "e":Ljava/io/IOException;
    :catch_83
    move-exception v4

    .line 300
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_96
    nop

    .line 304
    :goto_97
    return-void

    .line 272
    .end local v3    # "spnReader":Ljava/io/FileReader;
    :catch_98
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t open "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method


# virtual methods
.method public containsCarrier(Ljava/lang/String;)Z
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsCarrierEx(Ljava/lang/String;)Z
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .line 698
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSpn(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "gid1"    # Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 465
    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 463
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "pnn"    # Ljava/lang/String;

    .line 413
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 416
    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 414
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .line 258
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    .line 261
    :cond_11
    sget-object v0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 259
    :cond_29
    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    if-eqz p1, :cond_79

    if-eqz p2, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_79

    .line 311
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 312
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;

    .line 313
    .local v2, "vsbi":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSpnByImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_42

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_44

    :cond_42
    const-string v4, "xx"

    :goto_44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pattern = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    const-string v4, "MtkSpnOverride"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    .line 318
    iget-object v0, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    return-object v0

    .line 311
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 321
    .end local v1    # "i":I
    .end local v2    # "vsbi":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
    :cond_78
    return-object v0

    .line 308
    :cond_79
    :goto_79
    return-object v0
.end method

.method public getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "desireLongName"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 552
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpnByPattern(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .line 486
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 487
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 489
    .local v1, "mvnoOperName":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 490
    const-string v3, "spn"

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the result of searching mvnoOperName by EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkSpnOverride"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-nez v1, :cond_4a

    .line 494
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the result of searching mvnoOperName by IMSI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_4a
    if-nez v1, :cond_6d

    .line 499
    move-object v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 500
    const-string v4, "pnn"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the result of searching mvnoOperName by EF_PNN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_6d
    if-nez v1, :cond_90

    .line 505
    move-object v2, v0

    check-cast v2, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    .line 506
    const-string v4, "gid"

    invoke-virtual {v2, v4}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {p0, p2, v2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the result of searching mvnoOperName by EF_GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_90
    return-object v1
.end method

.method public getSpnEx(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "carrier"    # Ljava/lang/String;

    .line 704
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    if-eqz p1, :cond_79

    if-eqz p2, :cond_79

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_79

    .line 330
    :cond_12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 331
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;

    .line 332
    .local v2, "vsbi":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOperatorMvnoForImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_42

    .line 334
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_44

    :cond_42
    const-string v4, "xx"

    :goto_44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pattern = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    const-string v4, "MtkSpnOverride"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_75

    .line 337
    iget-object v0, v2, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    return-object v0

    .line 330
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 340
    .end local v1    # "i":I
    .end local v2    # "vsbi":Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
    :cond_78
    return-object v0

    .line 326
    :cond_79
    :goto_79
    return-object v0
.end method

.method protected loadSpnOverrides()V
    .registers 11

    .line 143
    const-string v0, "Exception in spn-conf parser "

    const-string v1, "MtkSpnOverride"

    const-string v2, "loadSpnOverrides"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    .line 146
    .local v2, "spnFile":Ljava/io/File;
    const-string v3, "persist.vendor.operator.optr"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OP09"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "etc/spn-conf.xml"

    if-eqz v3, :cond_3e

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "etc/spn-conf-op09.xml"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 149
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_48

    .line 150
    const-string v3, "No spn-conf-op09.xml file"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_48

    .line 155
    :cond_3e
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 158
    :cond_48
    :goto_48
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "telephony/spn-conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v3, "oemSpnFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 164
    .local v4, "oemSpnTime":J
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 165
    .local v6, "sysSpnTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SPN Timestamp: oemTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " sysTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    cmp-long v8, v4, v6

    if-lez v8, :cond_87

    .line 170
    const-string v8, "SPN in OEM image is newer than System image"

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object v2, v3

    .line 173
    .end local v4    # "oemSpnTime":J
    .end local v6    # "sysSpnTime":J
    :cond_87
    goto :goto_a5

    .line 175
    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No SPN in OEM image = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Load SPN from system image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_a5
    :try_start_a5
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_aa} :catch_108

    .line 184
    .local v4, "spnReader":Ljava/io/FileReader;
    nop

    .line 187
    :try_start_ab
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 188
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 190
    const-string v6, "spnOverrides"

    invoke-static {v5, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 193
    :goto_b7
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 195
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "name":Ljava/lang/String;
    const-string v7, "spnOverride"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cb

    .line 197
    nop

    .line 205
    .end local v6    # "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_106

    .line 200
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_cb
    const-string v7, "numeric"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "numeric":Ljava/lang/String;
    const-string v9, "spn"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "data":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ab .. :try_end_dd} :catch_f3
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_dd} :catch_df

    .line 204
    nop

    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    .end local v8    # "data":Ljava/lang/String;
    goto :goto_b7

    .line 208
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_df
    move-exception v5

    .line 209
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 206
    .end local v5    # "e":Ljava/io/IOException;
    :catch_f3
    move-exception v5

    .line 207
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_106
    nop

    .line 211
    :goto_107
    return-void

    .line 181
    .end local v4    # "spnReader":Ljava/io/FileReader;
    :catch_108
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .line 673
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "defaultName"    # Ljava/lang/String;

    .line 643
    const/4 v0, 0x0

    .line 646
    .local v0, "operName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 647
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_13

    .line 648
    const-string v2, "MtkSpnOverride"

    const-string v3, "lookupOperatorName getPhone null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-object p5

    .line 653
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->isForceGetCtSpnFromRes(ILjava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 659
    .local v8, "getCtSpn":Z
    if-eqz v0, :cond_1f

    if-eqz v8, :cond_29

    .line 660
    :cond_1f
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->getSpnByNumeric(Ljava/lang/String;ZLandroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 664
    :cond_29
    if-nez v0, :cond_2d

    move-object v2, p5

    goto :goto_2e

    :cond_2d
    move-object v2, v0

    :goto_2e
    return-object v2
.end method

.method public lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .registers 11
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .line 682
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
