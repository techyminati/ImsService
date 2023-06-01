.class public final Lcom/mediatek/bt/BluetoothMcsService$ServiceFeature;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceFeature"
.end annotation


# static fields
.field public static final ALL_MANDATORY_SERVICE_FEATURES:J = 0x210079L

.field public static final CONTENT_CONTROL_ID:J = 0x200000L

.field public static final CURRENT_GROUP_OBJ_ID:J = 0x1000L

.field public static final CURRENT_GROUP_OBJ_ID_NOTIFY:J = 0x100000000000L

.field public static final CURRENT_TRACK_OBJ_ID:J = 0x400L

.field public static final CURRENT_TRACK_OBJ_ID_NOTIFY:J = 0x40000000000L

.field public static final CURRENT_TRACK_SEGMENT_OBJ_ID:J = 0x200L

.field public static final MEDIA_CONTROL_POINT:J = 0x20000L

.field public static final MEDIA_CONTROL_POINT_OPCODES_SUPPORTED:J = 0x40000L

.field public static final MEDIA_CONTROL_POINT_OPCODES_SUPPORTED_NOTIFY:J = 0x4000000000000L

.field public static final MEDIA_STATE:J = 0x10000L

.field public static final NEXT_TRACK_OBJ_ID:J = 0x800L

.field public static final NEXT_TRACK_OBJ_ID_NOTIFY:J = 0x80000000000L

.field public static final PARENT_GROUP_OBJ_ID:J = 0x2000L

.field public static final PARENT_GROUP_OBJ_ID_NOTIFY:J = 0x200000000000L

.field public static final PLAYBACK_SPEED:J = 0x80L

.field public static final PLAYBACK_SPEED_NOTIFY:J = 0x8000000000L

.field public static final PLAYER_ICON_OBJ_ID:J = 0x2L

.field public static final PLAYER_ICON_URL:J = 0x4L

.field public static final PLAYER_NAME:J = 0x1L

.field public static final PLAYER_NAME_NOTIFY:J = 0x100000000L

.field public static final PLAYING_ORDER:J = 0x4000L

.field public static final PLAYING_ORDER_NOTIFY:J = 0x400000000000L

.field public static final PLAYING_ORDER_SUPPORTED:J = 0x8000L

.field public static final SEARCH_CONTROL_POINT:J = 0x100000L

.field public static final SEARCH_RESULT_OBJ_ID:J = 0x80000L

.field public static final SEEKING_SPEED:J = 0x100L

.field public static final SEEKING_SPEED_NOTIFY:J = 0x10000000000L

.field public static final TRACK_CHANGED:J = 0x8L

.field public static final TRACK_DURATION:J = 0x20L

.field public static final TRACK_DURATION_NOTIFY:J = 0x2000000000L

.field public static final TRACK_POSITION:J = 0x40L

.field public static final TRACK_POSITION_NOTIFY:J = 0x4000000000L

.field public static final TRACK_TITLE:J = 0x10L

.field public static final TRACK_TITLE_NOTIFY:J = 0x1000000000L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method
