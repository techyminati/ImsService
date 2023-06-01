.class Lcom/mediatek/internal/telephony/RadioManager$PowerEvent;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerEvent"
.end annotation


# static fields
.field static final EVENT_MODEM_POWER_OFF:I = 0x2

.field static final EVENT_MODEM_POWER_OFF_DONE:I = 0x5

.field static final EVENT_MODEM_POWER_ON:I = 0x1

.field static final EVENT_MODEM_POWER_ON_DONE:I = 0x4

.field static final EVENT_RADIO_AVAILABLE:I = 0x3

.field static final EVENT_SIM_SWITCH_DONE:I = 0x6

.field static final EVENT_START:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(I)Ljava/lang/String;
    .registers 5
    .param p0, "eventCode"    # I

    .line 2159
    const-string v0, ""

    .line 2160
    .local v0, "outString":Ljava/lang/String;
    packed-switch p0, :pswitch_data_2e

    .line 2168
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

    .line 2166
    :pswitch_1c
    const-string v0, "EVENT_SIM_SWITCH_DONE"

    goto :goto_2d

    .line 2165
    :pswitch_1f
    const-string v0, "EVENT_MODEM_POWER_OFF_DONE"

    goto :goto_2d

    .line 2164
    :pswitch_22
    const-string v0, "EVENT_MODEM_POWER_ON_DONE"

    goto :goto_2d

    .line 2163
    :pswitch_25
    const-string v0, "EVENT_RADIO_AVAILABLE"

    goto :goto_2d

    .line 2162
    :pswitch_28
    const-string v0, "EVENT_MODEM_POWER_OFF"

    goto :goto_2d

    .line 2161
    :pswitch_2b
    const-string v0, "EVENT_MODEM_POWER_ON"

    .line 2170
    :goto_2d
    return-object v0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
