.class synthetic Lcom/mediatek/wfo/impl/WifiOffloadService$8;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$wfo$impl$WifiOffloadService$WifiLockSource:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2636
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->values()[Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/wfo/impl/WifiOffloadService$8;->$SwitchMap$com$mediatek$wfo$impl$WifiOffloadService$WifiLockSource:[I

    :try_start_9
    sget-object v1, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/mediatek/wfo/impl/WifiOffloadService$8;->$SwitchMap$com$mediatek$wfo$impl$WifiOffloadService$WifiLockSource:[I

    sget-object v1, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
