.class public final enum Lcom/mediatek/xcap/client/XcapConstants$Method;
.super Ljava/lang/Enum;
.source "XcapConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/XcapConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/xcap/client/XcapConstants$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/xcap/client/XcapConstants$Method;

.field public static final enum DELETE:Lcom/mediatek/xcap/client/XcapConstants$Method;

.field public static final enum GET:Lcom/mediatek/xcap/client/XcapConstants$Method;

.field public static final enum PUT:Lcom/mediatek/xcap/client/XcapConstants$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Lcom/mediatek/xcap/client/XcapConstants$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/xcap/client/XcapConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/xcap/client/XcapConstants$Method;->GET:Lcom/mediatek/xcap/client/XcapConstants$Method;

    .line 52
    new-instance v1, Lcom/mediatek/xcap/client/XcapConstants$Method;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/xcap/client/XcapConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/xcap/client/XcapConstants$Method;->PUT:Lcom/mediatek/xcap/client/XcapConstants$Method;

    .line 53
    new-instance v3, Lcom/mediatek/xcap/client/XcapConstants$Method;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/xcap/client/XcapConstants$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/xcap/client/XcapConstants$Method;->DELETE:Lcom/mediatek/xcap/client/XcapConstants$Method;

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/xcap/client/XcapConstants$Method;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/xcap/client/XcapConstants$Method;->$VALUES:[Lcom/mediatek/xcap/client/XcapConstants$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/xcap/client/XcapConstants$Method;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 50
    const-class v0, Lcom/mediatek/xcap/client/XcapConstants$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/xcap/client/XcapConstants$Method;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/xcap/client/XcapConstants$Method;
    .registers 1

    .line 50
    sget-object v0, Lcom/mediatek/xcap/client/XcapConstants$Method;->$VALUES:[Lcom/mediatek/xcap/client/XcapConstants$Method;

    invoke-virtual {v0}, [Lcom/mediatek/xcap/client/XcapConstants$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/xcap/client/XcapConstants$Method;

    return-object v0
.end method
