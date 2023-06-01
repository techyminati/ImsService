.class public final Lcom/mediatek/internal/telephony/uicc/IsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "IsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "table"    # [B

    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "IsimServiceTable"

    return-object v0
.end method

.method protected getValues()[Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->values()[Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;)Z
    .registers 3
    .param p1, "service"    # Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;

    .line 45
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/uicc/IsimServiceTable$IsimService;->ordinal()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result v0

    return v0
.end method
