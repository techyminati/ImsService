.class Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;
.super Ljava/lang/Object;
.source "MtkSIMRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    .line 400
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords$1;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;

    # getter for: Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;->access$200(Lcom/mediatek/internal/telephony/uicc/MtkSIMRecords;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/MtkGsmCdmaPhone;->notifyCallForwardingIndicatorWithoutCheckSimState()V

    .line 404
    return-void
.end method
