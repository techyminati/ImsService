.class public Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper;
.super Ljava/lang/Object;
.source "MtkTelecomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkTelecomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkInCallAdapterHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleExtCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;)Z
    .registers 8
    .param p0, "callId"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "processor"    # Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 95
    return v0

    .line 98
    :cond_4
    const/4 v1, 0x0

    .line 99
    .local v1, "hasHandled":Z
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_62

    :cond_d
    goto :goto_3f

    :sswitch_e
    const-string v3, "mediatek.telecom.event.REQUEST_HANGUPALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_40

    :sswitch_17
    const-string v0, "mediatek.telecom.event.REQUEST_HANGUP_HOLD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_40

    :sswitch_21
    const-string v0, "mediatek.telecom.event.REQUEST_SET_SORTED_INCOMING_CALL_LIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_40

    :sswitch_2b
    const-string v0, "mediatek.telecom.event.REQUEST_START_VOICE_RECORDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_40

    :sswitch_35
    const-string v0, "mediatek.telecom.event.REQUEST_STOP_VOICE_RECORDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_40

    :goto_3f
    move v0, v2

    :goto_40
    packed-switch v0, :pswitch_data_78

    .line 121
    const/4 v1, 0x0

    goto :goto_60

    .line 117
    :pswitch_45
    invoke-interface {p3}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;->stopVoiceRecording()V

    .line 118
    const/4 v1, 0x1

    .line 119
    goto :goto_60

    .line 113
    :pswitch_4a
    invoke-interface {p3}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;->startVoiceRecording()V

    .line 114
    const/4 v1, 0x1

    .line 115
    goto :goto_60

    .line 107
    :pswitch_4f
    const-string v0, "param_string_array_call_ids"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3, v0}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;->setSortedIncomingCallList(Ljava/util/ArrayList;)V

    .line 110
    const/4 v1, 0x1

    .line 111
    goto :goto_60

    .line 103
    .end local v0    # "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_5a
    invoke-interface {p3}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallAdapterHelper$ICommandProcessor;->hangupHold()V

    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_60

    .line 101
    :pswitch_5f
    nop

    .line 123
    :goto_60
    return v1

    nop

    :sswitch_data_62
    .sparse-switch
        0x753423a -> :sswitch_35
        0xc3365b4 -> :sswitch_2b
        0x3e2b7bd8 -> :sswitch_21
        0x4101b83e -> :sswitch_17
        0x590a3821 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5a
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
    .end packed-switch
.end method
