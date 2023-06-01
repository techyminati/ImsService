.class public final Lcom/mediatek/bt/BluetoothMcsService$ObjectIds;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectIds"
.end annotation


# static fields
.field public static final CURRENT_GROUP_OBJ_ID:I = 0x1000

.field public static final CURRENT_TRACK_OBJ_ID:I = 0x400

.field public static final CURRENT_TRACK_SEGMENT_OBJ_ID:I = 0x200

.field public static final NEXT_TRACK_OBJ_ID:I = 0x800

.field public static final PARENT_GROUP_OBJ_ID:I = 0x2000

.field public static final PLAYER_ICON_OBJ_ID:I = 0x2

.field public static final SEARCH_RESULT_OBJ_ID:I = 0x80000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method
