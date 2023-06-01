.class public Lcom/mediatek/internal/telephony/cat/MtkTextMessage;
.super Lcom/android/internal/telephony/cat/TextMessage;
.source "MtkTextMessage.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/cat/MtkTextMessage;
    .registers 1

    .line 51
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkTextMessage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkTextMessage;-><init>()V

    .line 52
    .local v0, "self":Lcom/mediatek/internal/telephony/cat/MtkTextMessage;
    return-object v0
.end method
