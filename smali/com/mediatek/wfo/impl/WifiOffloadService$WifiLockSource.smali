.class final enum Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;
.super Ljava/lang/Enum;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WifiLockSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

.field public static final enum MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

.field public static final enum WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 349
    new-instance v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    const-string v1, "WIFI_STATE_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    .line 350
    new-instance v1, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    const-string v3, "MODEM_STATE_CHANGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    .line 348
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 348
    const-class v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;
    .registers 1

    .line 348
    sget-object v0, Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/impl/WifiOffloadService$WifiLockSource;

    return-object v0
.end method
