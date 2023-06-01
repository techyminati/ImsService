.class public final Lcom/mediatek/internal/telephony/MtkSmsApplication;
.super Ljava/lang/Object;
.source "MtkSmsApplication.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSmsApplication"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSmsApplication;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;ZI)Landroid/content/ComponentName;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIfNeeded"    # Z
    .param p2, "userId"    # I

    .line 67
    const-string v0, " default component= "

    const-string v1, "getDefaultSmsApplication for userId "

    const-string v2, "MtkSmsApplication"

    const/4 v3, 0x0

    .line 70
    .local v3, "component":Landroid/content/ComponentName;
    nop

    .line 71
    :try_start_8
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 72
    .local v4, "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v4, :cond_18

    .line 73
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_36

    move-object v3, v5

    .line 76
    :cond_18
    nop

    .line 78
    sget-boolean v5, Lcom/mediatek/internal/telephony/MtkSmsApplication;->DBG:Z

    if-eqz v5, :cond_35

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_35
    return-object v3

    .line 78
    .end local v4    # "smsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :catchall_36
    move-exception v4

    sget-boolean v5, Lcom/mediatek/internal/telephony/MtkSmsApplication;->DBG:Z

    if-eqz v5, :cond_53

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_53
    throw v4
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mediatek/internal/telephony/MtkSmsApplication;->getDefaultSmsApplication(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 95
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_c

    .line 96
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 98
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 112
    return v0

    .line 114
    :cond_4
    invoke-static {p0, p2}, Lcom/mediatek/internal/telephony/MtkSmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "defaultSmsPackage":Ljava/lang/String;
    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 116
    :cond_10
    const-string v2, "com.android.bluetooth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 117
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_1a
    return v0
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;I)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 149
    invoke-static {p1, p0, p2}, Lcom/mediatek/internal/telephony/MtkSmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 150
    .local v0, "result":Z
    sget-boolean v1, Lcom/mediatek/internal/telephony/MtkSmsApplication;->DBG:Z

    if-eqz v1, :cond_28

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldWriteMessageForPackage for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", shouldWrite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkSmsApplication"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_28
    return v0
.end method
