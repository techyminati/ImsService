.class public Lcom/mediatek/internal/telephony/uicc/MtkIccRefreshResponse;
.super Lcom/android/internal/telephony/uicc/IccRefreshResponse;
.source "MtkIccRefreshResponse.java"


# static fields
.field public static final REFRESH_INIT_FILE_UPDATED:I = 0x5

.field public static final REFRESH_INIT_FULL_FILE_UPDATED:I = 0x4

.field public static final REFRESH_RESULT_APP_INIT:I = 0x3

.field public static final REFRESH_SESSION_RESET:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    return-void
.end method
