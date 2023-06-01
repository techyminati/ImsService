.class public Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;
.super Ljava/lang/Object;
.source "MtkRsuSmlFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRsuSmlFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Landroid/content/Context;)Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/rsu/MtkRsuSmlFactory;-><init>()V

    return-object v0
.end method

.method private static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "log"    # Ljava/lang/String;

    .line 73
    const-string v0, "MtkRsuSmlFactory"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public static makeRsuSml(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/uicc/IMtkRsuSml;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 68
    new-instance v0, Lcom/mediatek/internal/telephony/rsu/RsuSml;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/rsu/RsuSml;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method
