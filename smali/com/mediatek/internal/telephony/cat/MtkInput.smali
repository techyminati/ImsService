.class public Lcom/mediatek/internal/telephony/cat/MtkInput;
.super Lcom/android/internal/telephony/cat/Input;
.source "MtkInput.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/Input;-><init>()V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/Input;
    .registers 1

    .line 54
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkInput;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkInput;-><init>()V

    .line 55
    .local v0, "self":Lcom/mediatek/internal/telephony/cat/MtkInput;
    return-object v0
.end method
