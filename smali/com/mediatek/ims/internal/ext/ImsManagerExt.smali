.class public Lcom/mediatek/ims/internal/ext/ImsManagerExt;
.super Ljava/lang/Object;
.source "ImsManagerExt.java"

# interfaces
.implements Lcom/mediatek/ims/internal/ext/IImsManagerExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerExt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImsPhoneId(Landroid/content/Context;I)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return p2
.end method

.method public isFeatureEnabledByPlatform(Landroid/content/Context;II)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # I
    .param p3, "phoneId"    # I

    .line 59
    const/4 v0, 0x1

    return v0
.end method
