.class public final Lcom/mediatek/bt/BluetoothMcsService$ServiceStatus;
.super Ljava/lang/Object;
.source "BluetoothMcsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothMcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStatus"
.end annotation


# static fields
.field public static final INVALID_FEATURE_FLAGS:I = 0x1

.field public static final OK:I = 0x0

.field public static final SERVICE_DIED:I = 0x2

.field public static final SERVICE_UNAVAILABLE:I = 0x3


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method
