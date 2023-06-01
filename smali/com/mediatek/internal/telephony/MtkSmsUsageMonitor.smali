.class public Lcom/mediatek/internal/telephony/MtkSmsUsageMonitor;
.super Lcom/android/internal/telephony/SmsUsageMonitor;
.source "MtkSmsUsageMonitor.java"


# static fields
.field private static final SKIP_SEND_LIMIT_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtkSmsUsageMonitor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-string v0, "com.android.mms"

    const-string v1, "com.mediatek.autotest"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSmsUsageMonitor;->SKIP_SEND_LIMIT_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .line 81
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSmsUsageMonitor;->SKIP_SEND_LIMIT_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 82
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 83
    const/4 v0, 0x1

    return v0

    .line 81
    .end local v3    # "name":Ljava/lang/String;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 88
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
