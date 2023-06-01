.class Lcom/mediatek/internal/telephony/RadioManager$ModemPowerCasue;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModemPowerCasue"
.end annotation


# static fields
.field static final CAUSE_AIRPLANE_MODE:I = 0x2

.field static final CAUSE_ECC:I = 0x10

.field static final CAUSE_FORCE:I = 0x20

.field static final CAUSE_IPO:I = 0x8

.field static final CAUSE_RADIO_AVAILABLE:I = 0x40

.field static final CAUSE_SIM_SWITCH:I = 0x80

.field static final CAUSE_START:I = 0x0

.field static final CAUSE_WIFI_CALLING:I = 0x4


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(I)Ljava/lang/String;
    .registers 5
    .param p0, "eventCode"    # I

    .line 2185
    const-string v0, ""

    .line 2186
    .local v0, "outString":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_2e

    .line 2194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid eventCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2192
    :sswitch_1c
    const-string v0, "CAUSE_RADIO_AVAILABLE"

    goto :goto_2d

    .line 2191
    :sswitch_1f
    const-string v0, "CAUSE_FORCE"

    goto :goto_2d

    .line 2190
    :sswitch_22
    const-string v0, "CAUSE_ECC"

    goto :goto_2d

    .line 2189
    :sswitch_25
    const-string v0, "CAUSE_IPO"

    goto :goto_2d

    .line 2188
    :sswitch_28
    const-string v0, "CAUSE_WIFI_CALLING"

    goto :goto_2d

    .line 2187
    :sswitch_2b
    const-string v0, "CAUSE_AIRPLANE_MODE"

    .line 2196
    :goto_2d
    return-object v0

    :sswitch_data_2e
    .sparse-switch
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_28
        0x8 -> :sswitch_25
        0x10 -> :sswitch_22
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method
