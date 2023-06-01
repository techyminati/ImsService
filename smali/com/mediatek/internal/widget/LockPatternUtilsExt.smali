.class public Lcom/mediatek/internal/widget/LockPatternUtilsExt;
.super Ljava/lang/Object;
.source "LockPatternUtilsExt.java"


# static fields
.field private static final ALLOWING_FR:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFRAllowedForUser(I)Z
    .registers 2
    .param p0, "stongAuthForUser"    # I

    .line 40
    and-int/lit8 v0, p0, -0x5

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
