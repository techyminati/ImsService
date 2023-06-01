.class public Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;
.super Lcom/android/internal/telephony/cat/CommandParamsFactory;
.source "MtkCommandParamsFactory.java"


# static fields
.field public static final BATTERY_STATE:I = 0xa


# instance fields
.field private mContext:Landroid/content/Context;

.field tlvIndex:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .registers 5
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 102
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method private getAddrIndex(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)I"
        }
    .end annotation

    .line 911
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 913
    .local v0, "addrIndex":I
    const/4 v1, 0x0

    .line 914
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 915
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 916
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 917
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-eq v3, v4, :cond_2f

    .line 918
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_2c

    goto :goto_2f

    .line 921
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 919
    :cond_2f
    :goto_2f
    return v0

    .line 924
    :cond_30
    const/4 v3, -0x1

    return v3
.end method

.method private getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 8
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1011
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 1013
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 1014
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1015
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1016
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1017
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_22

    if-le v0, p2, :cond_22

    .line 1019
    return-object v1

    .line 1021
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1024
    :cond_25
    const/4 v3, 0x0

    return-object v3
.end method

.method private getCallingAlphaIdIndex(Ljava/util/List;I)I
    .registers 8
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .line 961
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 963
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 964
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 965
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 966
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 967
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_22

    if-le v0, p2, :cond_22

    .line 969
    return v0

    .line 971
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 974
    :cond_25
    const/4 v3, -0x1

    return v3
.end method

.method private getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 9
    .param p2, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1068
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_5

    .line 1069
    return-object v0

    .line 1072
    :cond_5
    const/4 v1, 0x0

    .line 1074
    .local v1, "iconIndex":I
    const/4 v2, 0x0

    .line 1075
    .local v2, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1076
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1077
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1078
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    if-ne v4, v5, :cond_27

    if-le v1, p2, :cond_27

    .line 1080
    return-object v2

    .line 1082
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1085
    :cond_2a
    return-object v0
.end method

.method private getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 8
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 986
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 988
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 989
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 990
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 991
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 992
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_22

    if-ge v0, p2, :cond_22

    .line 994
    return-object v1

    .line 996
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 999
    :cond_25
    const/4 v3, 0x0

    return-object v3
.end method

.method private getConfirmationAlphaIdIndex(Ljava/util/List;I)I
    .registers 8
    .param p2, "addrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;I)I"
        }
    .end annotation

    .line 936
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 938
    .local v0, "alphaIndex":I
    const/4 v1, 0x0

    .line 939
    .local v1, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 940
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 941
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 942
    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    if-ne v3, v4, :cond_22

    if-ge v0, p2, :cond_22

    .line 944
    return v0

    .line 946
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 949
    :cond_25
    const/4 v3, -0x1

    return v3
.end method

.method private getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .registers 11
    .param p2, "alpha1Index"    # I
    .param p3, "alpha2Index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;II)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .line 1039
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_5

    .line 1040
    return-object v0

    .line 1043
    :cond_5
    const/4 v2, 0x0

    .line 1045
    .local v2, "iconIndex":I
    const/4 v3, 0x0

    .line 1046
    .local v3, "temp":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1047
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1048
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 1049
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    if-ne v5, v6, :cond_29

    if-eq v1, p3, :cond_28

    if-ge v2, p3, :cond_29

    .line 1051
    :cond_28
    return-object v3

    .line 1053
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1056
    :cond_2c
    return-object v0
.end method

.method private resetTlvIndex()V
    .registers 2

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 115
    return-void
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

    .line 132
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    if-nez p2, :cond_6

    goto :goto_25

    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 139
    .local v1, "tagValue":I
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 140
    iget v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->tlvIndex:I

    .line 141
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 142
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v3

    if-ne v3, v1, :cond_23

    .line 143
    return-object v2

    .line 145
    .end local v2    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_23
    goto :goto_a

    .line 148
    :cond_24
    return-object v0

    .line 133
    .end local v1    # "tagValue":I
    :cond_25
    :goto_25
    const-string v1, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    return-object v0
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

    .line 163
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->resetTlvIndex()V

    .line 164
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected processDisplayText(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 183
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process DisplayText"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 186
    .local v0, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 188
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 190
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_19

    .line 191
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 195
    :cond_19
    iget-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_b2

    .line 199
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 200
    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 201
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 204
    :cond_28
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_5a

    .line 207
    :try_start_30
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4
    :try_end_34
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_30 .. :try_end_34} :catch_36

    move-object v1, v4

    .line 210
    goto :goto_4f

    .line 208
    :catch_36
    move-exception v4

    .line 209
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveIconId ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_4f
    :try_start_4f
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_53} :catch_54

    .line 215
    goto :goto_5a

    .line 213
    :catch_54
    move-exception v4

    .line 214
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string v5, "iconId is null."

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_5a
    :goto_5a
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_82

    .line 221
    :try_start_62
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_68
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_62 .. :try_end_68} :catch_69

    .line 224
    goto :goto_82

    .line 222
    :catch_69
    move-exception v4

    .line 223
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveDuration ResultException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_82
    :goto_82
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_8a

    move v4, v5

    goto :goto_8b

    :cond_8a
    move v4, v3

    :goto_8b
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    .line 229
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_95

    move v4, v5

    goto :goto_96

    :cond_95
    move v4, v3

    :goto_96
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    .line 231
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 233
    if-eqz v1, :cond_b1

    .line 234
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 235
    iput v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 236
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 237
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 236
    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 238
    return v5

    .line 240
    :cond_b1
    return v3

    .line 196
    :cond_b2
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected processEventNotify(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 608
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process EventNotify"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 611
    .local v0, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 613
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 615
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_1c

    .line 616
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_1f

    .line 619
    :cond_1c
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 622
    :goto_1f
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 623
    if-eqz v2, :cond_2f

    .line 624
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 625
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 628
    :cond_2f
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 629
    new-instance v4, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 631
    if-eqz v1, :cond_4c

    .line 632
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 633
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 634
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 635
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 634
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 636
    return v3

    .line 638
    :cond_4c
    return v3
.end method

.method protected processGetInkey(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 257
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process GetInkey"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 260
    .local v0, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 262
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 264
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_c0

    .line 265
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 270
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_4b

    .line 273
    :try_start_21
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3
    :try_end_25
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_21 .. :try_end_25} :catch_27

    move-object v1, v3

    .line 276
    goto :goto_40

    .line 274
    :catch_27
    move-exception v3

    .line 275
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveIconId ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_40
    :try_start_40
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_44
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_44} :catch_45

    .line 282
    goto :goto_4b

    .line 280
    :catch_45
    move-exception v3

    .line 281
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string v4, "iconId is null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :cond_4b
    :goto_4b
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_73

    .line 289
    :try_start_53
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_59
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_53 .. :try_end_59} :catch_5a

    .line 292
    goto :goto_73

    .line 290
    :catch_5a
    move-exception v3

    .line 291
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveDuration ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_73
    :goto_73
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 296
    iput v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 298
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v4, v3

    const/4 v5, 0x0

    if-nez v4, :cond_80

    move v4, v3

    goto :goto_81

    :cond_80
    move v4, v5

    :goto_81
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 299
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8b

    move v4, v3

    goto :goto_8c

    :cond_8b
    move v4, v5

    :goto_8c
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 300
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_96

    move v4, v3

    goto :goto_97

    :cond_96
    move v4, v5

    :goto_97
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 301
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a1

    move v4, v3

    goto :goto_a2

    :cond_a1
    move v4, v5

    :goto_a2
    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 302
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 304
    new-instance v4, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v4, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 306
    if-eqz v1, :cond_bf

    .line 307
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 308
    iput v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 309
    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 310
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 309
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 311
    return v3

    .line 313
    :cond_bf
    return v5

    .line 267
    :cond_c0
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected processGetInput(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 330
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process GetInput"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lcom/android/internal/telephony/cat/Input;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 333
    .local v0, "input":Lcom/android/internal/telephony/cat/Input;
    const/4 v1, 0x0

    .line 335
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 337
    .local v2, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v2, :cond_17c

    .line 338
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    .line 343
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_174

    .line 346
    :try_start_21
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 347
    .local v3, "rawValue":[B
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 350
    .local v4, "valueIndex":I
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 351
    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    const/16 v6, 0xef

    if-le v5, v6, :cond_37

    .line 352
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->minLen:I

    .line 355
    :cond_37
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    iput v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 356
    iget v5, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v5, v6, :cond_45

    .line 357
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I
    :try_end_45
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_45} :catch_16b

    .line 361
    .end local v3    # "rawValue":[B
    .end local v4    # "valueIndex":I
    :cond_45
    nop

    .line 366
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 367
    if-eqz v2, :cond_6e

    .line 369
    :try_start_4e
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->defaultText:Ljava/lang/String;
    :try_end_54
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_4e .. :try_end_54} :catch_55

    .line 372
    goto :goto_6e

    .line 370
    :catch_55
    move-exception v3

    .line 371
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveTextString ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_6e
    :goto_6e
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_a0

    .line 378
    :try_start_76
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v3
    :try_end_7a
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_76 .. :try_end_7a} :catch_7c

    move-object v1, v3

    .line 381
    goto :goto_95

    .line 379
    :catch_7c
    move-exception v3

    .line 380
    .restart local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveIconId ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_95
    :try_start_95
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->iconSelfExplanatory:Z
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_95 .. :try_end_99} :catch_9a

    .line 387
    goto :goto_a0

    .line 385
    :catch_9a
    move-exception v3

    .line 386
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string v4, "iconId is null."

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .end local v3    # "ne":Ljava/lang/NullPointerException;
    :cond_a0
    :goto_a0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_c8

    .line 394
    :try_start_a8
    invoke-static {v2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;
    :try_end_ae
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_a8 .. :try_end_ae} :catch_af

    .line 397
    goto :goto_c8

    .line 395
    :catch_af
    move-exception v3

    .line 396
    .local v3, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieveDuration ResultException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .end local v3    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_c8
    :goto_c8
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-nez v3, :cond_d1

    move v3, v4

    goto :goto_d2

    :cond_d1
    move v3, v5

    :goto_d2
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->digitOnly:Z

    .line 401
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_dc

    move v3, v4

    goto :goto_dd

    :cond_dc
    move v3, v5

    :goto_dd
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    .line 402
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_e7

    move v3, v4

    goto :goto_e8

    :cond_e7
    move v3, v5

    :goto_e8
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->echo:Z

    .line 403
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f2

    move v3, v4

    goto :goto_f3

    :cond_f2
    move v3, v5

    :goto_f3
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    .line 404
    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_fd

    move v3, v4

    goto :goto_fe

    :cond_fd
    move v3, v5

    :goto_fe
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->helpAvailable:Z

    .line 408
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    const-string v7, ", truncating to "

    if-eqz v3, :cond_12b

    iget v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    const/16 v8, 0x76

    if-le v3, v8, :cond_12b

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCS2: received maxLen = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iput v8, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    goto :goto_151

    .line 412
    :cond_12b
    iget-boolean v3, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    if-nez v3, :cond_151

    iget v3, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    if-le v3, v6, :cond_151

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GSM 7Bit Default: received maxLen = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iput v6, v0, Lcom/android/internal/telephony/cat/Input;->maxLen:I

    .line 418
    :cond_151
    :goto_151
    new-instance v3, Lcom/android/internal/telephony/cat/GetInputParams;

    invoke-direct {v3, p1, v0}, Lcom/android/internal/telephony/cat/GetInputParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 420
    if-eqz v1, :cond_16a

    .line 421
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 422
    iput v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 423
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 424
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 423
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 425
    return v4

    .line 427
    :cond_16a
    return v5

    .line 359
    :catch_16b
    move-exception v3

    .line 360
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 363
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_174
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3

    .line 340
    :cond_17c
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method protected processLaunchBrowser(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 692
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process LaunchBrowser"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 695
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 696
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    .line 698
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 699
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v3, :cond_33

    .line 701
    :try_start_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 702
    .local v4, "rawValue":[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 703
    .local v5, "valueIndex":I
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v6

    .line 704
    .local v6, "valueLen":I
    if-lez v6, :cond_28

    .line 705
    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v7
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_26} :catch_2a

    move-object v2, v7

    goto :goto_29

    .line 708
    :cond_28
    const/4 v2, 0x0

    .line 712
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    .end local v6    # "valueLen":I
    :goto_29
    goto :goto_33

    .line 710
    :catch_2a
    move-exception v4

    .line 711
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5

    .line 716
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_33
    :goto_33
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 717
    if-eqz v3, :cond_43

    .line 718
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 721
    :cond_43
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v4, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 722
    if-eqz v3, :cond_53

    .line 723
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 724
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 729
    :cond_53
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v4, :pswitch_data_7c

    .line 732
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 733
    .local v4, "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_61

    .line 738
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_5b
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    goto :goto_61

    .line 735
    .end local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    :pswitch_5e
    sget-object v4, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 736
    .restart local v4    # "mode":Lcom/android/internal/telephony/cat/LaunchBrowserMode;
    nop

    .line 742
    :goto_61
    new-instance v5, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    invoke-direct {v5, p1, v0, v2, v4}, Lcom/android/internal/telephony/cat/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 744
    if-eqz v1, :cond_79

    .line 745
    const/4 v5, 0x1

    iput v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 746
    iget-object v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v7, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 747
    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 746
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 748
    return v5

    .line 750
    :cond_79
    const/4 v5, 0x0

    return v5

    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_5e
        :pswitch_5b
    .end packed-switch
.end method

.method protected processPlayTone(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 767
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "process PlayTone"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    const/4 v3, 0x0

    .line 770
    .local v3, "tone":Lcom/android/internal/telephony/cat/Tone;
    new-instance v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    move-object v10, v0

    .line 771
    .local v10, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 772
    .local v4, "duration":Lcom/android/internal/telephony/cat/Duration;
    const/4 v5, 0x0

    .line 774
    .local v5, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 775
    .local v6, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v6, :cond_39

    .line 777
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_39

    .line 779
    :try_start_20
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 780
    .local v0, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 781
    .local v7, "valueIndex":I
    aget-byte v8, v0, v7

    .line 782
    .local v8, "toneVal":I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/Tone;->fromInt(I)Lcom/android/internal/telephony/cat/Tone;

    move-result-object v9
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_2e} :catch_30

    move-object v3, v9

    .line 786
    .end local v0    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "toneVal":I
    goto :goto_39

    .line 783
    :catch_30
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 790
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_39
    :goto_39
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 791
    if-eqz v6, :cond_63

    .line 793
    :try_start_41
    iget-boolean v0, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v6, v0}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;
    :try_end_49
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_41 .. :try_end_49} :catch_4a

    .line 796
    goto :goto_63

    .line 794
    :catch_4a
    move-exception v0

    .line 795
    .local v0, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAlphaId ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_63
    :goto_63
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v6

    .line 800
    if-eqz v6, :cond_8c

    .line 802
    :try_start_6b
    invoke-static {v6}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;

    move-result-object v0
    :try_end_6f
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_6b .. :try_end_6f} :catch_71

    move-object v4, v0

    .line 805
    goto :goto_8d

    .line 803
    :catch_71
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 804
    .restart local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveDuration ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    .end local v0    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :cond_8c
    move-object v0, v4

    .end local v4    # "duration":Lcom/android/internal/telephony/cat/Duration;
    .local v0, "duration":Lcom/android/internal/telephony/cat/Duration;
    :goto_8d
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1, v4, v2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v11

    .line 809
    .end local v6    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v11, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v11, :cond_9f

    .line 810
    invoke-static {v11}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 811
    iget-boolean v4, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v4, v10, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    move-object v12, v5

    goto :goto_a0

    .line 809
    :cond_9f
    move-object v12, v5

    .line 814
    .end local v5    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .local v12, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :goto_a0
    move-object/from16 v13, p1

    iget v4, v13, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v14, 0x1

    and-int/2addr v4, v14

    const/4 v15, 0x0

    if-eqz v4, :cond_ab

    move v9, v14

    goto :goto_ac

    :cond_ab
    move v9, v15

    .line 816
    .local v9, "vibrate":Z
    :goto_ac
    iput-boolean v15, v10, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 817
    new-instance v8, Lcom/android/internal/telephony/cat/PlayToneParams;

    move-object v4, v8

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v7, v3

    move-object v15, v8

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cat/PlayToneParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/Tone;Lcom/android/internal/telephony/cat/Duration;Z)V

    iput-object v15, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 819
    if-eqz v12, :cond_cc

    .line 820
    iput v14, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 821
    iget-object v4, v1, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v5, v12, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 822
    invoke-virtual {v1, v14}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 821
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 823
    return v14

    .line 825
    :cond_cc
    const/4 v4, 0x0

    return v4
.end method

.method protected processSelectItem(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 15
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

    .line 444
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SelectItem"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkMenu;-><init>()V

    .line 447
    .local v0, "menu":Lcom/mediatek/internal/telephony/cat/MtkMenu;
    const/4 v1, 0x0

    .line 448
    .local v1, "titleIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v2, 0x0

    .line 449
    .local v2, "itemsIconId":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 451
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    iget v4, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 452
    invoke-static {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    .line 454
    .local v4, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v5, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 456
    .local v5, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v5, :cond_57

    .line 458
    :try_start_1e
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->title:Ljava/lang/String;
    :try_end_26
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1e .. :try_end_26} :catch_27

    .line 461
    goto :goto_40

    .line 459
    :catch_27
    move-exception v6

    .line 460
    .local v6, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAlphaId ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    .end local v6    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add AlphaId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5b

    .line 463
    :cond_57
    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v4, v6, :cond_207

    .line 473
    :goto_5b
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v6, v3}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 474
    if-eqz v5, :cond_8a

    .line 475
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v6

    .line 476
    .local v6, "item":Lcom/android/internal/telephony/cat/Item;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add menu item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_76

    const-string v8, ""

    goto :goto_7a

    :cond_76
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/Item;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->items:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v6    # "item":Lcom/android/internal/telephony/cat/Item;
    goto :goto_5b

    .line 484
    :cond_8a
    iget-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1fa

    .line 489
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NEXT_ACTION_INDICATOR:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_d4

    .line 492
    :try_start_9a
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B
    :try_end_a0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_9a .. :try_end_a0} :catch_a1

    .line 495
    goto :goto_ba

    .line 493
    :catch_a1
    move-exception v6

    .line 494
    .local v6, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveNextActionIndicator ResultException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    .end local v6    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_ba
    :try_start_ba
    iget-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B

    array-length v6, v6

    iget-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_cd

    .line 498
    const-string v6, "nextActionIndicator.length != number of menu items"

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->nextActionIndicator:[B
    :try_end_cd
    .catch Ljava/lang/NullPointerException; {:try_start_ba .. :try_end_cd} :catch_ce

    .line 503
    :cond_cd
    goto :goto_d4

    .line 501
    :catch_ce
    move-exception v6

    .line 502
    .local v6, "ne":Ljava/lang/NullPointerException;
    const-string v7, "nextActionIndicator is null."

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    .end local v6    # "ne":Ljava/lang/NullPointerException;
    :cond_d4
    :goto_d4
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v6, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 507
    const/4 v6, 0x1

    if-eqz v5, :cond_114

    .line 511
    :try_start_dd
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v7

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->defaultItem:I
    :try_end_e4
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_dd .. :try_end_e4} :catch_e5

    .line 514
    goto :goto_fe

    .line 512
    :catch_e5
    move-exception v7

    .line 513
    .local v7, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveItemId ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    .end local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_fe
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "default item: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->defaultItem:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    :cond_114
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v7, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 519
    if-eqz v5, :cond_148

    .line 520
    iput v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 522
    :try_start_11e
    invoke-static {v5}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v7
    :try_end_122
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_11e .. :try_end_122} :catch_124

    move-object v1, v7

    .line 525
    goto :goto_13d

    .line 523
    :catch_124
    move-exception v7

    .line 524
    .restart local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveIconId ResultException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .end local v7    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_13d
    :try_start_13d
    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->titleIconSelfExplanatory:Z
    :try_end_141
    .catch Ljava/lang/NullPointerException; {:try_start_13d .. :try_end_141} :catch_142

    .line 530
    goto :goto_148

    .line 528
    :catch_142
    move-exception v7

    .line 529
    .local v7, "ne":Ljava/lang/NullPointerException;
    const-string v8, "titleIconId is null."

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :cond_148
    :goto_148
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v7, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v5

    .line 534
    const/4 v7, 0x2

    if-eqz v5, :cond_17d

    .line 535
    iput v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 537
    :try_start_153
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;

    move-result-object v8
    :try_end_157
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_153 .. :try_end_157} :catch_159

    move-object v2, v8

    .line 540
    goto :goto_172

    .line 538
    :catch_159
    move-exception v8

    .line 539
    .local v8, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveItemsIconId ResultException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    .end local v8    # "e":Lcom/android/internal/telephony/cat/ResultException;
    :goto_172
    :try_start_172
    iget-boolean v8, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    iput-boolean v8, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->itemsIconSelfExplanatory:Z
    :try_end_176
    .catch Ljava/lang/NullPointerException; {:try_start_172 .. :try_end_176} :catch_177

    .line 545
    goto :goto_17d

    .line 543
    :catch_177
    move-exception v8

    .line 544
    .local v8, "ne":Ljava/lang/NullPointerException;
    const-string v9, "itemsIconId is null."

    invoke-static {p0, v9}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .end local v8    # "ne":Ljava/lang/NullPointerException;
    :cond_17d
    :goto_17d
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v8, v6

    const/4 v9, 0x0

    if-eqz v8, :cond_185

    move v8, v6

    goto :goto_186

    :cond_185
    move v8, v9

    .line 549
    .local v8, "presentTypeSpecified":Z
    :goto_186
    if-eqz v8, :cond_196

    .line 550
    iget v10, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/2addr v7, v10

    if-nez v7, :cond_192

    .line 551
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    goto :goto_196

    .line 553
    :cond_192
    sget-object v7, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 556
    :cond_196
    :goto_196
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_19e

    move v7, v6

    goto :goto_19f

    :cond_19e
    move v7, v9

    :goto_19f
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->softKeyPreferred:Z

    .line 557
    iget v7, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1a9

    move v7, v6

    goto :goto_1aa

    :cond_1a9
    move v7, v9

    :goto_1aa
    iput-boolean v7, v0, Lcom/mediatek/internal/telephony/cat/MtkMenu;->helpAvailable:Z

    .line 559
    new-instance v7, Lcom/android/internal/telephony/cat/SelectItemParams;

    if-eqz v1, :cond_1b2

    move v10, v6

    goto :goto_1b3

    :cond_1b2
    move v10, v9

    :goto_1b3
    invoke-direct {v7, p1, v0, v10}, Lcom/android/internal/telephony/cat/SelectItemParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V

    iput-object v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 562
    iget v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_210

    goto :goto_1f9

    .line 575
    :pswitch_1be
    if-eqz v2, :cond_1e2

    .line 576
    iget-object v7, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 577
    .local v7, "recordNumbers":[I
    if-eqz v1, :cond_1d6

    .line 579
    iget-object v10, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    add-int/2addr v10, v6

    new-array v7, v10, [I

    .line 580
    iget v10, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    aput v10, v7, v9

    .line 581
    iget-object v10, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    iget-object v11, v2, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    array-length v11, v11

    invoke-static {v10, v9, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    :cond_1d6
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 585
    iget-object v9, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 586
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 585
    invoke-virtual {v9, v7, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 587
    goto :goto_1f9

    .line 589
    .end local v7    # "recordNumbers":[I
    :cond_1e2
    return v9

    .line 566
    :pswitch_1e3
    if-eqz v1, :cond_1f7

    iget v7, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    if-lez v7, :cond_1f7

    .line 567
    iput-boolean v6, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mloadIcon:Z

    .line 568
    iget-object v7, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    iget v9, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 569
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 568
    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 570
    goto :goto_1f9

    .line 572
    :cond_1f7
    return v9

    .line 564
    :pswitch_1f8
    return v9

    .line 592
    :goto_1f9
    return v6

    .line 485
    .end local v8    # "presentTypeSpecified":Z
    :cond_1fa
    const-string v6, "no menu item"

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 469
    :cond_207
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    nop

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_1f8
        :pswitch_1e3
        :pswitch_1be
    .end packed-switch
.end method

.method protected processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
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

    .line 652
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SetUpEventList"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 655
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_53

    .line 657
    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 658
    .local v1, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 659
    .local v2, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 661
    .local v3, "valueLen":I
    new-array v4, v3, [I

    .line 662
    .local v4, "eventList":[I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1c
    if-ge v5, v3, :cond_45

    .line 663
    aget-byte v6, v1, v2

    aput v6, v4, v5

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPF-processSetUpEventList: eventList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    add-int/lit8 v5, v5, 0x1

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 669
    .end local v5    # "index":I
    :cond_45
    new-instance v5, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {v5, p1, v4}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object v5, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_4c} :catch_4d

    .line 672
    .end local v1    # "rawValue":[B
    .end local v2    # "valueIndex":I
    .end local v3    # "valueLen":I
    goto :goto_53

    .line 670
    .end local v4    # "eventList":[I
    :catch_4d
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, v2}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_53
    :goto_53
    const/4 v1, 0x0

    return v1
.end method

.method protected processSetupCall(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .registers 16
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

    .line 841
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string v0, "process SetupCall"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 844
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v1, 0x0

    .line 846
    .local v1, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 848
    .local v2, "confirmMsg":Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v3, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 849
    .local v3, "callMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 850
    .local v4, "confirmIconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v5, 0x0

    .line 856
    .local v5, "callIconId":Lcom/android/internal/telephony/cat/IconId;
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getAddrIndex(Ljava/util/List;)I

    move-result v6

    .line 857
    .local v6, "addrIndex":I
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v8, v6, :cond_24

    .line 858
    const-string v8, "fail to get ADDRESS data object"

    invoke-static {p0, v8}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    return v7

    .line 862
    :cond_24
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationAlphaIdIndex(Ljava/util/List;I)I

    move-result v9

    .line 863
    .local v9, "alpha1Index":I
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingAlphaIdIndex(Ljava/util/List;I)I

    move-result v10

    .line 865
    .local v10, "alpha2Index":I
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 866
    if-eqz v1, :cond_3a

    .line 867
    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v11}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 870
    :cond_3a
    invoke-direct {p0, p2, v9, v10}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getConfirmationIconId(Ljava/util/List;II)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 871
    if-eqz v1, :cond_48

    .line 872
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 873
    iget-boolean v11, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 876
    :cond_48
    invoke-direct {p0, p2, v6}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingAlphaId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 877
    if-eqz v1, :cond_56

    .line 878
    iget-boolean v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mNoAlphaUsrCnf:Z

    invoke-static {v1, v11}, Lcom/mediatek/internal/telephony/cat/MtkValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 881
    :cond_56
    invoke-direct {p0, p2, v10}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->getCallingIconId(Ljava/util/List;I)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 882
    if-eqz v1, :cond_64

    .line 883
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v5

    .line 884
    iget-boolean v11, v5, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v11, v3, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 887
    :cond_64
    new-instance v11, Lcom/android/internal/telephony/cat/CallSetupParams;

    invoke-direct {v11, p1, v2, v3}, Lcom/android/internal/telephony/cat/CallSetupParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 889
    if-nez v4, :cond_71

    if-eqz v5, :cond_70

    goto :goto_71

    .line 901
    :cond_70
    return v7

    .line 890
    :cond_71
    :goto_71
    const/4 v11, 0x2

    iput v11, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoadState:I

    .line 891
    new-array v11, v11, [I

    .line 892
    .local v11, "recordNumbers":[I
    if-eqz v4, :cond_7b

    .line 893
    iget v12, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_7c

    :cond_7b
    move v12, v8

    :goto_7c
    aput v12, v11, v7

    .line 894
    if-eqz v5, :cond_83

    iget v8, v5, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    goto :goto_84

    .line 895
    :cond_83
    nop

    :goto_84
    const/4 v7, 0x1

    aput v8, v11, v7

    .line 897
    iget-object v8, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 898
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 897
    invoke-virtual {v8, v11, v12}, Lcom/android/internal/telephony/cat/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 899
    return v7
.end method

.method protected sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .registers 4
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    goto :goto_11

    .line 109
    :cond_c
    const-string v0, "mCaller is null!!!"

    invoke-static {p0, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :goto_11
    return-void
.end method
