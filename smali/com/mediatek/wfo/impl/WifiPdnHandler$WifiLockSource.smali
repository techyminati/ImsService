.class final enum Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
.super Ljava/lang/Enum;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WifiLockSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

.field public static final enum MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

.field public static final enum WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 212
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    const/4 v1, 0x0

    const-string v2, "WIFI_STATE_CHANGE"

    invoke-direct {v0, v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    .line 213
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    const/4 v2, 0x1

    const-string v3, "MODEM_STATE_CHANGE"

    invoke-direct {v0, v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 211
    const-class v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .locals 1

    .line 211
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    return-object v0
.end method
