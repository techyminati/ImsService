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

.field public static final enum WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 328
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const/4 v1, 0x0

    const-string v2, "WFC_SETTING_WIFI_UEMAC"

    invoke-direct {v0, v2, v1}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 329
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const/4 v2, 0x1

    const-string v3, "WFC_SETTING_LOCATION_SETTING"

    invoke-direct {v0, v3, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 327
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 327
    const-class v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .locals 1

    .line 327
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method
