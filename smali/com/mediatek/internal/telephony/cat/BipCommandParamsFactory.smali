.class Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;
.super Landroid/os/Handler;
.source "BipCommandParamsFactory.java"


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field private static sInstance:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;


# instance fields
.field private mCaller:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

.field private mNoAlphaUsrCnf:Z

.field tlvIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .registers 7
    .param p1, "caller"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 81
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 84
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    .line 107
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 108
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->getSlotId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    .line 111
    :try_start_1c
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110140

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_29} :catch_2a

    .line 115
    goto :goto_2d

    .line 113
    :catch_2a
    move-exception v0

    .line 114
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    .line 116
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_2d
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;
    .registers 5
    .param p0, "caller"    # Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "context"    # Landroid/content/Context;

    const-class v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    monitor-enter v0

    .line 96
    :try_start_3
    sget-object v1, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_9

    .line 97
    monitor-exit v0

    return-object v1

    .line 99
    :cond_9
    if-eqz p1, :cond_12

    .line 100
    :try_start_b
    new-instance v1, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;-><init>(Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    monitor-exit v0

    return-object v1

    .line 102
    :cond_12
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 95
    .end local p0    # "caller":Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;
    .end local p1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local p2    # "context":Landroid/content/Context;
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 674
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "enter: process CloseChannel"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    const/4 v0, 0x0

    .line 678
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 679
    .local v1, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 681
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 683
    .local v3, "channelId":I
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_1d

    .line 685
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v0, v4}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 688
    :cond_1d
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_2d

    .line 690
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 691
    iget-boolean v4, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 694
    :cond_2d
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 695
    const/4 v4, 0x1

    if-eqz v0, :cond_59

    .line 696
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    .line 697
    .local v5, "cidByte":B
    and-int/lit8 v3, v5, 0xf

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "To close channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[BIP]"

    invoke-static {v7, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .end local v5    # "cidByte":B
    :cond_59
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v5, v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_61

    move v5, v4

    goto :goto_62

    :cond_61
    move v5, v6

    .line 702
    .local v5, "backToTcpListen":Z
    :goto_62
    new-instance v7, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;

    invoke-direct {v7, p1, v3, v1, v5}, Lcom/mediatek/internal/telephony/cat/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 704
    if-eqz v2, :cond_79

    .line 705
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 706
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    iget v7, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 707
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 706
    invoke-virtual {v6, v7, v8}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 708
    return v4

    .line 711
    :cond_79
    return v6
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 121
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 123
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_1f

    .line 125
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 127
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_1f

    .line 129
    :try_start_b
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v2
    :try_end_f
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_b .. :try_end_f} :catch_11

    move-object v0, v2

    .line 133
    goto :goto_1f

    .line 130
    :catch_11
    move-exception v2

    .line 131
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 136
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v2    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 858
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "enter: process GetChannelStatus"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x0

    .line 862
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 863
    .local v1, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v2, 0x0

    .line 865
    .local v2, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_1c

    .line 867
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 870
    :cond_1c
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_2c

    .line 872
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v2

    .line 873
    iget-boolean v3, v2, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 876
    :cond_2c
    new-instance v3, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;

    invoke-direct {v3, p1, v1}, Lcom/mediatek/internal/telephony/cat/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 878
    if-eqz v2, :cond_44

    .line 879
    const/4 v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 880
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    iget v5, v2, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 881
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 880
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 882
    return v3

    .line 885
    :cond_44
    const/4 v3, 0x0

    return v3
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 34
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 433
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const-string v1, "enter: process OpenChannel"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 440
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v3, 0x0

    .line 441
    .local v3, "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    const/4 v4, 0x0

    .line 442
    .local v4, "bufferSize":I
    iget v5, v12, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v14, 0x1

    and-int/2addr v5, v14

    if-ne v5, v14, :cond_17

    .line 443
    const/4 v5, 0x0

    goto :goto_18

    .line 444
    :cond_17
    move v5, v14

    :goto_18
    move/from16 v16, v5

    .line 445
    .local v16, "linkMode":I
    iget v5, v12, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-nez v5, :cond_22

    const/4 v5, 0x0

    goto :goto_23

    :cond_22
    move v5, v14

    :goto_23
    move/from16 v17, v5

    .line 447
    .local v17, "isAutoReconnect":Z
    const/4 v5, 0x0

    .line 448
    .local v5, "accessPointName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 449
    .local v7, "localAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    const/4 v8, 0x0

    .line 450
    .local v8, "userLogin":Ljava/lang/String;
    const/4 v9, 0x0

    .line 452
    .local v9, "userPwd":Ljava/lang/String;
    const/4 v10, 0x0

    .line 453
    .local v10, "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    const/4 v11, 0x0

    .line 455
    .local v11, "dataDestinationAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    new-instance v18, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    move-object/from16 v19, v18

    .line 456
    .local v19, "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    const/16 v18, 0x0

    .line 465
    .local v18, "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    const/16 v20, -0x1

    .line 467
    .local v20, "indexTransportProtocol":I
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v15, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 469
    if-eqz v2, :cond_49

    .line 470
    iget-boolean v15, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v2, v15}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, v19

    .end local v19    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .local v6, "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    iput-object v15, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4b

    .line 469
    .end local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v19    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    :cond_49
    move-object/from16 v6, v19

    .line 473
    .end local v19    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    :goto_4b
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v15, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 474
    if-eqz v2, :cond_5e

    .line 475
    iput v14, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 476
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v15

    .line 477
    .end local v18    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    .local v15, "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v14, v15, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v14, v6, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    goto :goto_60

    .line 474
    .end local v15    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    .restart local v18    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    :cond_5e
    move-object/from16 v15, v18

    .line 481
    .end local v18    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    .restart local v15    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    :goto_60
    sget-object v14, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v14, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 482
    const-string v14, "[BIP]"

    if-eqz v2, :cond_27c

    .line 483
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/BearerDesc;

    move-result-object v3

    .line 484
    move-object/from16 v18, v1

    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v22, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const-string v2, "bearerDesc bearer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    instance-of v1, v3, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    const-string v2, "\npdp type: "

    if-eqz v1, :cond_ec

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    .end local v4    # "bufferSize":I
    .local v23, "bufferSize":I
    const-string v4, "\nprecedence: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ndelay: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nreliability: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\npeak: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nmean: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v5

    goto/16 :goto_27a

    .line 492
    .end local v23    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    :cond_ec
    move/from16 v23, v4

    .end local v4    # "bufferSize":I
    .restart local v23    # "bufferSize":I
    instance-of v1, v3, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    if-eqz v1, :cond_1db

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ntrafficClass: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficClass:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nmaxBitRateUL_High: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_High:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nmaxBitRateUL_Low: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v5

    .end local v5    # "accessPointName":Ljava/lang/String;
    .local v24, "accessPointName":Ljava/lang/String;
    move-object v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateUL_Low:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\nmaxBitRateDL_High: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v3

    check-cast v5, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v5, v5, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_High:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxBitRateDL_Low:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nguarBitRateUL_High: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_High:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nguarBitRateUL_Low: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateUL_Low:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nguarBitRateDL_High: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_High:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nguarBitRateDL_Low: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->guarBitRateDL_Low:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ndeliveryOrder: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOrder:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nmaxSduSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->maxSduSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nsduErrorRatio: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->sduErrorRatio:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nresidualBitErrorRadio: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->residualBitErrorRadio:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ndeliveryOfErroneousSdus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->deliveryOfErroneousSdus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ntransferDelay: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->transferDelay:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ntrafficHandlingPriority: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v4, v4, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->trafficHandlingPriority:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/UTranBearerDesc;->pdpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_27a

    .line 514
    .end local v24    # "accessPointName":Ljava/lang/String;
    .restart local v5    # "accessPointName":Ljava/lang/String;
    :cond_1db
    move-object/from16 v24, v5

    .end local v5    # "accessPointName":Ljava/lang/String;
    .restart local v24    # "accessPointName":Ljava/lang/String;
    instance-of v1, v3, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    if-eqz v1, :cond_270

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nQCI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmaxBitRateU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmaxBitRateD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nguarBitRateU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nguarBitRateD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmaxBitRateUEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nmaxBitRateDEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nguarBitRateUEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nguarBitRateDEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npdn Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    check-cast v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/mediatek/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27a

    .line 525
    :cond_270
    instance-of v1, v3, Lcom/mediatek/internal/telephony/cat/DefaultBearerDesc;

    if-eqz v1, :cond_275

    goto :goto_27a

    .line 527
    :cond_275
    const-string v1, "Not support bearerDesc"

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v24    # "accessPointName":Ljava/lang/String;
    .restart local v5    # "accessPointName":Ljava/lang/String;
    :goto_27a
    move-object v5, v3

    .end local v5    # "accessPointName":Ljava/lang/String;
    .restart local v24    # "accessPointName":Ljava/lang/String;
    goto :goto_28a

    .line 530
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v23    # "bufferSize":I
    .end local v24    # "accessPointName":Ljava/lang/String;
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v4    # "bufferSize":I
    .restart local v5    # "accessPointName":Ljava/lang/String;
    :cond_27c
    move-object/from16 v18, v1

    move-object/from16 v22, v2

    move/from16 v23, v4

    move-object/from16 v24, v5

    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v4    # "bufferSize":I
    .end local v5    # "accessPointName":Ljava/lang/String;
    .restart local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v23    # "bufferSize":I
    .restart local v24    # "accessPointName":Ljava/lang/String;
    const-string v1, "May Need BearerDescription object"

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    .line 535
    .end local v3    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .local v5, "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    :goto_28a
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v1, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 536
    .end local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_4c8

    .line 537
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v4

    .line 538
    .end local v23    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v2, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_2cf

    .line 547
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 548
    .end local v24    # "accessPointName":Ljava/lang/String;
    .local v2, "accessPointName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    .end local v1    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const-string v1, "access point name: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v2

    goto :goto_2d1

    .line 546
    .end local v2    # "accessPointName":Ljava/lang/String;
    .end local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v1    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v24    # "accessPointName":Ljava/lang/String;
    :cond_2cf
    move-object/from16 v22, v1

    .line 552
    .end local v1    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :goto_2d1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 553
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 554
    .end local v22    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_2e4

    .line 555
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_2e6

    .line 554
    :cond_2e4
    move-object/from16 v18, v8

    .line 558
    .end local v8    # "userLogin":Ljava/lang/String;
    .local v18, "userLogin":Ljava/lang/String;
    :goto_2e6
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v3, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_2f5

    .line 560
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    goto :goto_2f7

    .line 559
    :cond_2f5
    move-object/from16 v22, v9

    .line 565
    .end local v9    # "userPwd":Ljava/lang/String;
    .local v22, "userPwd":Ljava/lang/String;
    :goto_2f7
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v3, v13}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 566
    const-string v3, "/"

    if-eqz v2, :cond_356

    .line 567
    iget v8, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 568
    .end local v20    # "indexTransportProtocol":I
    .local v8, "indexTransportProtocol":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v1

    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .local v23, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v1, "CPF-processOpenChannel: indexTransportProtocol = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/TransportProtocol;

    move-result-object v10

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPF-processOpenChannel: transport protocol(type/port): "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->portNumber:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget v1, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v9, 0x1

    if-eq v9, v1, :cond_345

    iget v1, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v9, 0x2

    if-ne v9, v1, :cond_347

    .line 575
    :cond_345
    if-eqz v5, :cond_349

    .line 587
    :cond_347
    move v9, v8

    goto :goto_35c

    .line 576
    :cond_349
    const-string v1, "Need BearerDescription object"

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v1

    .line 581
    .end local v8    # "indexTransportProtocol":I
    .end local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v20    # "indexTransportProtocol":I
    :cond_356
    move-object/from16 v23, v1

    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    if-eqz v5, :cond_4bb

    move/from16 v9, v20

    .line 587
    .end local v20    # "indexTransportProtocol":I
    .local v9, "indexTransportProtocol":I
    :goto_35c
    if-eqz v10, :cond_41b

    .line 588
    const-string v1, "CPF-processOpenChannel: transport protocol is existed"

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 590
    .end local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->resetTlvIndex()V

    .line 591
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v8, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 592
    if-eqz v2, :cond_3f1

    .line 593
    iget v8, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    if-ge v8, v9, :cond_3dd

    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v4

    .end local v4    # "bufferSize":I
    .local v25, "bufferSize":I
    const-string v4, "CPF-processOpenChannel: get local address, index is "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/OtherAddress;

    move-result-object v7

    .line 601
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v4, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 602
    if-eqz v2, :cond_3b9

    iget v4, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    if-le v4, v9, :cond_3b9

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPF-processOpenChannel: get dest address, index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/OtherAddress;

    move-result-object v11

    goto :goto_3f8

    .line 607
    :cond_3b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CPF-processOpenChannel: missing dest address "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 612
    .end local v25    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    :cond_3dd
    move/from16 v25, v4

    .end local v4    # "bufferSize":I
    .restart local v25    # "bufferSize":I
    if-le v8, v9, :cond_3eb

    .line 613
    const-string v3, "CPF-processOpenChannel: get dest address, but no local address"

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/mediatek/internal/telephony/cat/OtherAddress;

    move-result-object v11

    goto :goto_3f8

    .line 617
    :cond_3eb
    const-string v3, "CPF-processOpenChannel: Incorrect index"

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f8

    .line 620
    .end local v25    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    :cond_3f1
    move/from16 v25, v4

    .end local v4    # "bufferSize":I
    .restart local v25    # "bufferSize":I
    const-string v3, "CPF-processOpenChannel: No other address object"

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_3f8
    if-nez v11, :cond_412

    .line 623
    iget v3, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v4, 0x2

    if-eq v4, v3, :cond_405

    iget v3, v10, Lcom/mediatek/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v4, 0x1

    if-eq v4, v3, :cond_405

    goto :goto_412

    .line 625
    :cond_405
    const-string v3, "BM-openChannel: dataDestinationAddress is null."

    invoke-static {v14, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 632
    :cond_412
    :goto_412
    move-object/from16 v23, v1

    move-object/from16 v20, v2

    move-object/from16 v26, v7

    move-object/from16 v27, v11

    goto :goto_423

    .line 587
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .end local v25    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    .restart local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :cond_41b
    move/from16 v25, v4

    .end local v4    # "bufferSize":I
    .restart local v25    # "bufferSize":I
    move-object/from16 v20, v2

    move-object/from16 v26, v7

    move-object/from16 v27, v11

    .line 632
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v7    # "localAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .end local v11    # "dataDestinationAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .local v20, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v26, "localAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .local v27, "dataDestinationAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    :goto_423
    if-eqz v5, :cond_482

    .line 633
    iget v1, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_45d

    iget v1, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_45d

    iget v1, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_45d

    iget v1, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_43c

    goto :goto_45d

    .line 641
    :cond_43c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport bearerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/mediatek/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v28, v6

    move/from16 v29, v9

    move-object/from16 v30, v10

    move/from16 v21, v25

    move-object/from16 v25, v5

    goto :goto_48c

    .line 637
    :cond_45d
    :goto_45d
    new-instance v14, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v5

    move/from16 v21, v25

    .end local v25    # "bufferSize":I
    .local v21, "bufferSize":I
    move/from16 v4, v21

    move-object/from16 v25, v5

    .end local v5    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .local v25, "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    move-object/from16 v5, v26

    move-object/from16 v28, v6

    .end local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .local v28, "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    move-object v6, v10

    move-object/from16 v7, v27

    move-object/from16 v8, v24

    move/from16 v29, v9

    .end local v9    # "indexTransportProtocol":I
    .local v29, "indexTransportProtocol":I
    move-object/from16 v9, v18

    move-object/from16 v30, v10

    .end local v10    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .local v30, "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    move-object/from16 v10, v22

    move-object/from16 v11, v28

    invoke-direct/range {v1 .. v11}, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/OtherAddress;Lcom/mediatek/internal/telephony/cat/TransportProtocol;Lcom/mediatek/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_48c

    .line 632
    .end local v21    # "bufferSize":I
    .end local v28    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .end local v29    # "indexTransportProtocol":I
    .end local v30    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .restart local v5    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .restart local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v9    # "indexTransportProtocol":I
    .restart local v10    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .local v25, "bufferSize":I
    :cond_482
    move-object/from16 v28, v6

    move/from16 v29, v9

    move-object/from16 v30, v10

    move/from16 v21, v25

    move-object/from16 v25, v5

    .line 645
    .end local v5    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .end local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .end local v9    # "indexTransportProtocol":I
    .end local v10    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .restart local v21    # "bufferSize":I
    .local v25, "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .restart local v28    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v29    # "indexTransportProtocol":I
    .restart local v30    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    :goto_48c
    new-instance v14, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    move/from16 v4, v21

    move-object/from16 v5, v26

    move-object/from16 v6, v30

    move-object/from16 v7, v27

    move-object/from16 v8, v24

    move-object/from16 v9, v18

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    invoke-direct/range {v1 .. v11}, Lcom/mediatek/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/internal/telephony/cat/BearerDesc;ILcom/mediatek/internal/telephony/cat/OtherAddress;Lcom/mediatek/internal/telephony/cat/TransportProtocol;Lcom/mediatek/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v14, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 649
    if-eqz v15, :cond_4b9

    .line 650
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 651
    iget-object v2, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    iget v3, v15, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 652
    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 651
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 653
    return v1

    .line 656
    :cond_4b9
    const/4 v1, 0x0

    return v1

    .line 582
    .end local v21    # "bufferSize":I
    .end local v25    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .end local v26    # "localAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .end local v27    # "dataDestinationAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .end local v28    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .end local v29    # "indexTransportProtocol":I
    .end local v30    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .restart local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v4    # "bufferSize":I
    .restart local v5    # "bearerDesc":Lcom/mediatek/internal/telephony/cat/BearerDesc;
    .restart local v6    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .restart local v7    # "localAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .restart local v10    # "transportProtocol":Lcom/mediatek/internal/telephony/cat/TransportProtocol;
    .restart local v11    # "dataDestinationAddress":Lcom/mediatek/internal/telephony/cat/OtherAddress;
    .local v20, "indexTransportProtocol":I
    :cond_4bb
    const-string v1, "BearerDescription & transportProtocol object are null"

    invoke-static {v14, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v1, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v1

    .line 540
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .end local v4    # "bufferSize":I
    .end local v22    # "userPwd":Ljava/lang/String;
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v8, "userLogin":Ljava/lang/String;
    .local v9, "userPwd":Ljava/lang/String;
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    .local v23, "bufferSize":I
    :cond_4c8
    const-string v2, "Need BufferSize object"

    invoke-static {v14, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 729
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "enter: process ReceiveData"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v1, 0x0

    .line 735
    .local v1, "channelDataLength":I
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 736
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x0

    .line 737
    .local v3, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v4, 0x0

    .line 739
    .local v4, "channelId":I
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 740
    const-string v5, "[BIP]"

    if-eqz v0, :cond_30

    .line 741
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v1

    .line 742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel data length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_30
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_40

    .line 750
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v0, v6}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 753
    :cond_40
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_50

    .line 755
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3

    .line 756
    iget-boolean v6, v3, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v6, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 759
    :cond_50
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 760
    const/4 v6, 0x1

    if-eqz v0, :cond_7a

    .line 761
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    add-int/2addr v8, v6

    aget-byte v7, v7, v8

    .line 762
    .local v7, "cidByte":B
    and-int/lit8 v4, v7, 0xf

    .line 763
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "To Receive data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .end local v7    # "cidByte":B
    :cond_7a
    new-instance v5, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;

    invoke-direct {v5, p1, v1, v4, v2}, Lcom/mediatek/internal/telephony/cat/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 768
    if-eqz v3, :cond_91

    .line 769
    iput v6, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 770
    iget-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    iget v7, v3, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 771
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 770
    invoke-virtual {v5, v7, v8}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 772
    return v6

    .line 775
    :cond_91
    const/4 v5, 0x0

    return v5
.end method

.method private processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 19
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 793
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "enter: process SendData"

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x0

    .line 797
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v3, 0x0

    .line 799
    .local v3, "channelData":[B
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 800
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v5, 0x0

    .line 801
    .local v5, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v6, 0x0

    .line 803
    .local v6, "channelId":I
    move-object/from16 v11, p1

    iget v7, v11, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v12, 0x1

    and-int/2addr v7, v12

    if-ne v7, v12, :cond_1c

    .line 804
    move v10, v12

    goto :goto_1d

    :cond_1c
    const/4 v10, 0x0

    .line 806
    .local v10, "sendMode":I
    :goto_1d
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v7, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 807
    if-eqz v2, :cond_29

    .line 808
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cat/BipValueParser;->retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v3

    .line 813
    :cond_29
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v7, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 814
    if-eqz v2, :cond_39

    .line 815
    iget-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v2, v7}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 818
    :cond_39
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v7, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_4b

    .line 820
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 821
    iget-boolean v7, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    move-object v14, v5

    goto :goto_4c

    .line 819
    :cond_4b
    move-object v14, v5

    .line 824
    .end local v5    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .local v14, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_4c
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {v0, v5, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 825
    if-eqz v2, :cond_79

    .line 826
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    add-int/2addr v7, v12

    aget-byte v5, v5, v7

    .line 827
    .local v5, "cidByte":B
    and-int/lit8 v6, v5, 0xf

    .line 828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "To send data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[BIP]"

    invoke-static {v8, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v6

    goto :goto_7a

    .line 825
    .end local v5    # "cidByte":B
    :cond_79
    move v15, v6

    .line 831
    .end local v6    # "channelId":I
    .local v15, "channelId":I
    :goto_7a
    new-instance v9, Lcom/mediatek/internal/telephony/cat/SendDataParams;

    move-object v5, v9

    move-object/from16 v6, p1

    move-object v7, v3

    move v8, v15

    move-object v13, v9

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/internal/telephony/cat/SendDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;I)V

    iput-object v13, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 833
    if-eqz v14, :cond_98

    .line 834
    iput v12, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 835
    iget-object v5, v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    iget v6, v14, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 836
    invoke-virtual {v0, v12}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 835
    invoke-virtual {v5, v6, v7}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 837
    return v12

    .line 840
    :cond_98
    const/4 v5, 0x0

    return v5
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .line 381
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 383
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_3e

    .line 385
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 386
    .local v1, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 387
    .local v2, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 388
    .local v3, "valueLen":I
    new-array v4, v3, [I

    .line 389
    .local v4, "eventList":[I
    const/4 v5, -0x1

    .line 390
    .local v5, "eventValue":I
    const/4 v6, 0x0

    .line 391
    .local v6, "i":I
    :goto_1d
    if-lez v3, :cond_30

    .line 392
    aget-byte v7, v1, v2

    and-int/lit16 v5, v7, 0xff

    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    add-int/lit8 v3, v3, -0x1

    .line 396
    sparse-switch v5, :sswitch_data_40

    .line 406
    goto :goto_1d

    .line 402
    :sswitch_2b
    aput v5, v4, v6

    .line 403
    add-int/lit8 v6, v6, 0x1

    .line 404
    goto :goto_1d

    .line 410
    :cond_30
    new-instance v7, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {v7, p1, v4}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_37
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_37} :catch_38

    .line 413
    .end local v1    # "rawValue":[B
    .end local v2    # "valueIndex":I
    .end local v3    # "valueLen":I
    .end local v4    # "eventList":[I
    .end local v5    # "eventValue":I
    .end local v6    # "i":I
    goto :goto_3e

    .line 411
    :catch_38
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3e
    :goto_3e
    const/4 v1, 0x0

    return v1

    :sswitch_data_40
    .sparse-switch
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_2b
        0x7 -> :sswitch_2b
        0x8 -> :sswitch_2b
        0xf -> :sswitch_2b
    .end sparse-switch
.end method

.method private resetTlvIndex()V
    .registers 2

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 313
    return-void
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 6
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 299
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 300
    .local v0, "tagValue":I
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 302
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 303
    return-object v1

    .line 305
    .end local v1    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_17
    goto :goto_4

    .line 306
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method private searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 7
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 330
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    if-nez p2, :cond_6

    goto :goto_25

    .line 335
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 337
    .local v1, "tagValue":I
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 338
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 339
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 340
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_23

    .line 341
    return-object v2

    .line 343
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_23
    goto :goto_a

    .line 346
    :cond_24
    return-object v0

    .line 331
    .end local v1    # "tagValue":I
    :cond_25
    :goto_25
    const-string v1, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return-object v0
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 5
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 281
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 5
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 361
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->resetTlvIndex()V

    .line 362
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 363
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .registers 4
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .line 267
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 268
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 248
    .local v1, "iconIndex":I
    if-nez p1, :cond_7

    .line 249
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v2

    .line 251
    :cond_7
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    packed-switch v2, :pswitch_data_1e

    goto :goto_1a

    .line 256
    :pswitch_d
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    .line 258
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 254
    :pswitch_19
    nop

    .line 263
    :cond_1a
    :goto_1a
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v2

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 889
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/cat/BipIconLoader;->dispose()V

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/mediatek/internal/telephony/cat/BipIconLoader;

    .line 891
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 892
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/mediatek/internal/telephony/cat/BipRilMessageDecoder;

    .line 893
    const-class v1, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    monitor-enter v1

    .line 894
    :try_start_f
    sput-object v0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;

    .line 895
    monitor-exit v1

    .line 896
    return-void

    .line 895
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    goto :goto_f

    .line 239
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 242
    :goto_f
    return-void

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .registers 9
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cat/BerTlv;

    .line 140
    if-nez p1, :cond_3

    .line 141
    return-void

    .line 144
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1c

    .line 148
    const-string v0, "CPF-make: Ununderstood proactive command tag"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 150
    return-void

    .line 152
    :cond_1c
    const/4 v0, 0x0

    .line 153
    .local v0, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 157
    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :try_start_22
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3
    :try_end_26
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_22 .. :try_end_26} :catch_ea

    move-object v2, v3

    .line 162
    nop

    .line 163
    if-nez v2, :cond_35

    .line 164
    const-string v3, "CPF-make: No CommandDetails object"

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 166
    return-void

    .line 171
    :cond_35
    iget v3, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 172
    invoke-static {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    .line 173
    .local v3, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v3, :cond_4f

    .line 174
    const-string v4, "CPF-make: Command type can\'t be found"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v4, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 180
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 181
    return-void

    .line 185
    :cond_4f
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result v4

    if-nez v4, :cond_62

    .line 186
    new-instance v4, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 187
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 188
    return-void

    .line 192
    :cond_62
    :try_start_62
    sget-object v4, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_10c

    .line 218
    new-instance v4, Lcom/android/internal/telephony/cat/CommandParams;

    goto :goto_b6

    .line 213
    :pswitch_70
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4

    move v0, v4

    .line 214
    const-string v4, "process GetChannelStatus"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    goto :goto_ad

    .line 209
    :pswitch_7b
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4

    move v0, v4

    .line 210
    const-string v4, "process ReceiveData"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    goto :goto_ad

    .line 205
    :pswitch_86
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4

    move v0, v4

    .line 206
    const-string v4, "process SendData"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    goto :goto_ad

    .line 201
    :pswitch_91
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4

    move v0, v4

    .line 202
    const-string v4, "process CloseChannel"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    goto :goto_ad

    .line 197
    :pswitch_9c
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4

    move v0, v4

    .line 198
    const-string v4, "process OpenChannel"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    goto :goto_ad

    .line 194
    :pswitch_a7
    invoke-direct {p0, v2, v1}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v4
    :try_end_ab
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_62 .. :try_end_ab} :catch_c6

    move v0, v4

    .line 195
    nop

    .line 229
    :goto_ad
    nop

    .line 230
    if-nez v0, :cond_b5

    .line 231
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 233
    :cond_b5
    return-void

    .line 218
    :goto_b6
    :try_start_b6
    invoke-direct {v4, v2}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 219
    const-string v4, "CPF-make: default case"

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    :try_end_c5
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_b6 .. :try_end_c5} :catch_c6

    .line 222
    return-void

    .line 224
    :catch_c6
    move-exception v4

    .line 225
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 227
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 228
    return-void

    .line 158
    .end local v3    # "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :catch_ea
    move-exception v3

    .line 159
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPF-make: Except to procees command details : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 161
    return-void

    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_9c
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_70
    .end packed-switch
.end method
