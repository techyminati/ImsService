.class public final enum Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
.super Ljava/lang/Enum;
.source "MwiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/ril/MwiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfcConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 328
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_WIFI_UEMAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 329
    new-instance v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v3, "WFC_SETTING_LOCATION_SETTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 330
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v5, "WFC_SETTING_WIFI_CONN_STATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 327
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 327
    const-class v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .registers 1

    .line 327
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method
