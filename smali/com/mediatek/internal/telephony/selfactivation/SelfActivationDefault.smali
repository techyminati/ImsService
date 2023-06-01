.class public Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;
.super Ljava/lang/Object;
.source "SelfActivationDefault.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;


# static fields
.field private static final TAG:Ljava/lang/String; = "SelfActivationDefault"


# instance fields
.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mPhoneId:I

    .line 54
    const-string v0, "SelfActivationDefault"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput p1, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mPhoneId:I

    .line 56
    return-void
.end method


# virtual methods
.method public buildParams()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .registers 1

    .line 88
    return-object p0
.end method

.method public getPCO520State()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getSelfActivateState()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public selfActivationAction(ILandroid/os/Bundle;)I
    .registers 4
    .param p1, "action"    # I
    .param p2, "param"    # Landroid/os/Bundle;

    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public setCommandsInterface(Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .registers 2
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    iput-object p1, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/mediatek/internal/telephony/selfactivation/SelfActivationDefault;->mContext:Landroid/content/Context;

    .line 76
    return-object p0
.end method
