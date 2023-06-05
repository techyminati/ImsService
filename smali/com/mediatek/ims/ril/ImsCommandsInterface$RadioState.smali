.class public final enum Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "ImsCommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsCommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const/4 v1, 0x0

    const-string v2, "RADIO_OFF"

    invoke-direct {v0, v2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 49
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const/4 v2, 0x1

    const-string v3, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 50
    new-instance v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    const/4 v3, 0x2

    const-string v4, "RADIO_ON"

    invoke-direct {v0, v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    sget-object v4, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_OFF:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;
    .locals 1

    .line 47
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->$VALUES:[Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    invoke-virtual {v0}, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 57
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOn()Z
    .locals 1

    .line 53
    sget-object v0, Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;->RADIO_ON:Lcom/mediatek/ims/ril/ImsCommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
