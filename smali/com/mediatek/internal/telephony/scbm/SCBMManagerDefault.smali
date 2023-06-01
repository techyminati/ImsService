.class public Lcom/mediatek/internal/telephony/scbm/SCBMManagerDefault;
.super Landroid/os/Handler;
.source "SCBMManagerDefault.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/scbm/ISCBMManager;


# static fields
.field protected static final EVENT_EXIT_SCBM_RESPONSE:I = 0x2

.field protected static final EVENT_SCBM_ENTER:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public exitSCBM()V
    .registers 1

    .line 56
    return-void
.end method

.method public isInScm()Z
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method
