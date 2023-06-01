.class public final Lcom/mediatek/bt/BluetoothMcsService$PlaybackState;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackState"
.end annotation


# static fields
.field public static final INACTIVE:I = 0x0

.field public static final PAUSED:I = 0x2

.field public static final PLAYING:I = 0x1

.field public static final SEEKING:I = 0x3

.field public static final STATE_MAX:I = 0x3

.field public static final STATE_MIN:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method
