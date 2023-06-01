.class public Lmediatek/telecom/MtkConnection;
.super Ljava/lang/Object;
.source "MtkConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telecom/MtkConnection$MtkRttModifyStatus;,
        Lmediatek/telecom/MtkConnection$MtkVideoProvider;,
        Lmediatek/telecom/MtkConnection$ConnectionEventHelper;
    }
.end annotation


# static fields
.field public static final CAPABILITY_AUDIO_RINGTONE:I = -0x80000000

.field private static final CAPABILITY_BASE:I = 0x20000000

.field public static final CAPABILITY_CAPABILITY_CALL_RECORDING:I = 0x20000000

.field public static final CAPABILITY_VIDEO_RINGTONE:I = 0x40000000

.field public static final EVENT_3G_VT_STATUS_CHANGED:Ljava/lang/String; = "mediatek.telecom.event.EVENT_3G_VT_STATUS_CHANGED"

.field public static final EVENT_CALL_ALERTING_NOTIFICATION:Ljava/lang/String; = "mediatek.telecom.event.EVENT_CALL_ALERTING_NOTIFICATION"

.field public static final EVENT_CONNECTION_LOST:Ljava/lang/String; = "mediatek.telecom.event.CONNECTION_LOST"

.field public static final EVENT_CSFB:Ljava/lang/String; = "mediatek.telecom.event.EVENT_CSFB"

.field public static final EVENT_ECC_RETRY_FAIL:Ljava/lang/String; = "mediatek.telecom.event.EVENT_ECC_RETRY_FAIL"

.field public static final EVENT_INCOMING_INFO_UPDATED:Ljava/lang/String; = "mediatek.telecom.event.INCOMING_INFO_UPDATED"

.field public static final EVENT_NUMBER_UPDATED:Ljava/lang/String; = "mediatek.telecom.event.NUMBER_UPDATED"

.field public static final EVENT_OPERATION_FAILED:Ljava/lang/String; = "mediatek.telecom.event.OPERATION_FAILED"

.field public static final EVENT_PHONE_ACCOUNT_CHANGED:Ljava/lang/String; = "mediatek.telecom.event.PHONE_ACCOUNT_CHANGED"

.field public static final EVENT_RTT_EMERGENCY_REDIAL:Ljava/lang/String; = "mediatek.telecom.event.EVENT_RTT_EMERGENCY_REDIAL"

.field public static final EVENT_SRVCC:Ljava/lang/String; = "mediatek.telecom.event.EVENT_SRVCC"

.field public static final EVENT_SS_NOTIFICATION:Ljava/lang/String; = "mediatek.telecom.event.SS_NOTIFICATION"

.field public static final EVENT_VOLTE_MARKED_AS_EMERGENCY:Ljava/lang/String; = "mediatek.telecom.event.EVENT_VOLTE_MARKED_AS_EMERGENCY"

.field public static final EXTRA_3G_VT_STATUS:Ljava/lang/String; = "mediatek.telecom.extra.3G_VT_STATUS"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "mediatek.telecom.extra.EXTRA_DISCONNECT_CAUSE"

.field public static final EXTRA_FAILED_OPERATION:Ljava/lang/String; = "mediatek.telecom.extra.FAILED_OPERATION"

.field public static final EXTRA_NEW_NUMBER:Ljava/lang/String; = "mediatek.telecom.extra.NEW_NUMBER"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "mediatek.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_SS_NOTIFICATION_CODE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_CODE"

.field public static final EXTRA_SS_NOTIFICATION_INDEX:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_INDEX"

.field public static final EXTRA_SS_NOTIFICATION_NOTITYPE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_NOTITYPE"

.field public static final EXTRA_SS_NOTIFICATION_NUMBER:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_NUMBER"

.field public static final EXTRA_SS_NOTIFICATION_TYPE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_TYPE"

.field public static final EXTRA_UPDATED_INCOMING_INFO_ALPHAID:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_ALPHAID"

.field public static final EXTRA_UPDATED_INCOMING_INFO_CLI_VALIDITY:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_CLI_VALIDITY"

.field public static final EXTRA_UPDATED_INCOMING_INFO_TYPE:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_TYPE"

.field public static final IMS_EVENT_NOTIFICATION_RINGTONE:Ljava/lang/String; = "mediatek.telecom.event.IMS_EVENT_NOTIFICATION_RINGTONE"

.field public static final IMS_EVENT_VIDEO_RINGTONE:Ljava/lang/String; = "mediatek.telecom.event.IMS_EVENT_VIDEO_RINGTONE"

.field private static final PROPERTY_BASE:I = 0x8000

.field public static final PROPERTY_CDMA:I = 0x10000

.field public static final PROPERTY_CONFERENCE_PARTICIPANT:I = 0x40000

.field public static final PROPERTY_VOICE_RECORDING:I = 0x20000

.field public static final PROPERTY_VOLTE:I = 0x8000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static can(II)Z
    .registers 3
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 146
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "capabilities"    # I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    invoke-static {p0, v2}, Lmediatek/telecom/MtkConnection;->mtkCapabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 3
    .param p0, "capabilities"    # I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->capabilitiesToStringShort(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 109
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->mtkCapabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static mtkCapabilitiesToStringInternal(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/high16 v1, 0x20000000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 134
    if-eqz p1, :cond_12

    const-string v1, " M_CAPABILITY_CAPABILITY_CALL_RECORDING"

    goto :goto_14

    :cond_12
    const-string v1, " m_rcrd"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_17
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 137
    if-eqz p1, :cond_24

    const-string v1, " M_CAPABILITY_VIDEO_RINGTONE"

    goto :goto_26

    :cond_24
    const-string v1, " m_vt_tone"

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_29
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 140
    if-eqz p1, :cond_36

    const-string v1, " M_CAPABILITY_AUDIO_RINGTONE"

    goto :goto_38

    :cond_36
    const-string v1, " m_ar_tone"

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static mtkPropertiesToStringInternal(IZ)Ljava/lang/String;
    .registers 4
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v1, 0x8000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 117
    if-eqz p1, :cond_13

    const-string v1, " M_PROPERTY_VOLTE"

    goto :goto_15

    :cond_13
    const-string v1, " m_volte"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_18
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 120
    if-eqz p1, :cond_25

    const-string v1, " M_PROPERTY_CDMA"

    goto :goto_27

    :cond_25
    const-string v1, " m_cdma"

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_2a
    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 123
    if-eqz p1, :cond_37

    const-string v1, " M_PROPERTY_VOICE_RECORDING"

    goto :goto_39

    :cond_37
    const-string v1, " m_rcrding"

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_3c
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 126
    if-eqz p1, :cond_49

    const-string v1, " M_PROPERTY_CONFERENCE_PARTICIPANT"

    goto :goto_4b

    :cond_49
    const-string v1, " m_conf_child"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "properties"    # I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    invoke-static {p0, v2}, Lmediatek/telecom/MtkConnection;->mtkPropertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .registers 3
    .param p0, "properties"    # I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->propertiesToStringShort(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 93
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmediatek/telecom/MtkConnection;->mtkPropertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
