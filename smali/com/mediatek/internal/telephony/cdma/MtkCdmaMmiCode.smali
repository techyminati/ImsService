.class public Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;
.super Lcom/android/internal/telephony/cdma/CdmaMmiCode;
.source "MtkCdmaMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MtkCdmaMmiCode"

.field private static final mOpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->mOpMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .registers 3
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 80
    return-void
.end method

.method public static getCallForwardingPrefixAndNumberWithMccMnc(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "action"    # I
    .param p1, "reason"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "mccMnc"    # Ljava/lang/String;

    .line 84
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->getCallForwardingPrefixAndNumber(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "prefixWithNum":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP20:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    invoke-static {v1, p3}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->isOp(Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 87
    const-string v1, "MtkCdmaMmiCode"

    const-string v2, "MtkCdmaMmiCode, Sprint code"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_4a

    goto :goto_49

    .line 100
    :pswitch_18
    if-ne p0, v1, :cond_2c

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 102
    :cond_2c
    if-nez p0, :cond_49

    .line 103
    const-string v0, "*730"

    goto :goto_49

    .line 91
    :pswitch_31
    if-ne p0, v1, :cond_45

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 93
    :cond_45
    if-nez p0, :cond_49

    .line 94
    const-string v0, "*740"

    .line 113
    :cond_49
    :goto_49
    return-object v0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_18
    .end packed-switch
.end method

.method public static getDisableAllCallForwardingOptionsPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "mccMnc"    # Ljava/lang/String;

    .line 119
    const-string v0, "*730"

    .line 120
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP12:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    invoke-static {v1, p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->isOp(Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 121
    const-string v1, "MtkCdmaMmiCode"

    const-string v2, "MtkCdmaMmiCode, Vzw cancel all"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "*73"

    .line 124
    :cond_13
    return-object v0
.end method

.method private static isOp(Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;Ljava/lang/String;)Z
    .registers 4
    .param p0, "id"    # Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "r":Z
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;->mOpMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 130
    const/4 v0, 0x1

    .line 133
    :cond_10
    return v0
.end method
