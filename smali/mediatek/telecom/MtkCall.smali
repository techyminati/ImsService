.class public Lmediatek/telecom/MtkCall;
.super Ljava/lang/Object;
.source "MtkCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telecom/MtkCall$MtkDetails;
    }
.end annotation


# static fields
.field public static final MTK_EVENT_PREFIX:Ljava/lang/String; = "mediatek.telecom.event"

.field public static final MTK_EVENT_REQUEST_HANGUP_ALL:Ljava/lang/String; = "mediatek.telecom.event.REQUEST_HANGUPALL"

.field public static final MTK_EVENT_REQUEST_HANGUP_HOLD:Ljava/lang/String; = "mediatek.telecom.event.REQUEST_HANGUP_HOLD"

.field public static final MTK_EVENT_REQUEST_SET_SORTED_INCOMING_CALL_LIST:Ljava/lang/String; = "mediatek.telecom.event.REQUEST_SET_SORTED_INCOMING_CALL_LIST"

.field public static final MTK_EVENT_REQUEST_START_VOICE_RECORDING:Ljava/lang/String; = "mediatek.telecom.event.REQUEST_START_VOICE_RECORDING"

.field public static final MTK_EVENT_REQUEST_STOP_VOICE_RECORDING:Ljava/lang/String; = "mediatek.telecom.event.REQUEST_STOP_VOICE_RECORDING"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
