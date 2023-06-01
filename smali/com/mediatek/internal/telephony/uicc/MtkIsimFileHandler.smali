.class public final Lcom/mediatek/internal/telephony/uicc/MtkIsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IsimFileHandler;
.source "MtkIsimFileHandler.java"


# static fields
.field static final LOG_TAG_EX:Ljava/lang/String; = "MtkIsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "efid"    # I

    .line 58
    packed-switch p1, :pswitch_data_12

    .line 63
    :pswitch_3
    const-string v0, "MtkIsimFH"

    const-string v1, "Usim aosp default getEFPath."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_f
    const-string v0, "3F007FFF"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x6fd5
        :pswitch_f
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method
