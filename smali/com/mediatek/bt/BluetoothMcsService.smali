.class public Lcom/mediatek/bt/BluetoothMcsService;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bt/BluetoothMcsService$SupportedPlayingOrder;,
        Lcom/mediatek/bt/BluetoothMcsService$PlayingOrder;,
        Lcom/mediatek/bt/BluetoothMcsService$PlaybackState;,
        Lcom/mediatek/bt/BluetoothMcsService$ObjectIds;,
        Lcom/mediatek/bt/BluetoothMcsService$PlayerStateField;,
        Lcom/mediatek/bt/BluetoothMcsService$ServiceStatus;,
        Lcom/mediatek/bt/BluetoothMcsService$ServiceFeature;
    }
.end annotation


# static fields
.field public static final TRACK_DURATION_UNAVAILABLE:J = 0x9fffffff6L

.field public static final TRACK_POSITION_UNAVAILABLE:J = 0x9fffffff6L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
