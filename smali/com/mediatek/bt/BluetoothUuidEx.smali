.class public final Lcom/mediatek/bt/BluetoothUuidEx;
.super Ljava/lang/Object;
.source "BluetoothUuidEx.java"


# static fields
.field public static final LE_AUDIO:Landroid/os/ParcelUuid;

.field public static final VOLUME_CONTROL:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    nop

    .line 25
    const-string v0, "0000184E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bt/BluetoothUuidEx;->LE_AUDIO:Landroid/os/ParcelUuid;

    .line 28
    nop

    .line 29
    const-string v0, "00001844-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bt/BluetoothUuidEx;->VOLUME_CONTROL:Landroid/os/ParcelUuid;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
