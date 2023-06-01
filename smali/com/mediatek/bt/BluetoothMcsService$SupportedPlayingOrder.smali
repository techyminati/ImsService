.class public final Lcom/mediatek/bt/BluetoothMcsService$SupportedPlayingOrder;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SupportedPlayingOrder"
.end annotation


# static fields
.field public static final IN_ORDER_ONCE:I = 0x4

.field public static final IN_ORDER_REPEAT:I = 0x8

.field public static final NEWEST_ONCE:I = 0x40

.field public static final NEWEST_REPEAT:I = 0x80

.field public static final OLDEST_ONCE:I = 0x10

.field public static final OLDEST_REPEAT:I = 0x20

.field public static final SHUFFLE_ONCE:I = 0x100

.field public static final SHUFFLE_REPEAT:I = 0x200

.field public static final SINGLE_ONCE:I = 0x1

.field public static final SINGLE_REPEAT:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method
