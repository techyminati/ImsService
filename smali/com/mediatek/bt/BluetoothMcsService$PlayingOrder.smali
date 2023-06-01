.class public final Lcom/mediatek/bt/BluetoothMcsService$PlayingOrder;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayingOrder"
.end annotation


# static fields
.field public static final IN_ORDER_ONCE:I = 0x3

.field public static final IN_ORDER_REPEAT:I = 0x4

.field public static final NEWEST_ONCE:I = 0x7

.field public static final NEWEST_REPEAT:I = 0x8

.field public static final OLDEST_ONCE:I = 0x5

.field public static final OLDEST_REPEAT:I = 0x6

.field public static final SHUFFLE_ONCE:I = 0x9

.field public static final SHUFFLE_REPEAT:I = 0xa

.field public static final SINGLE_ONCE:I = 0x1

.field public static final SINGLE_REPEAT:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method
