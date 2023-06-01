.class public final Lcom/mediatek/provider/MtkSettingsExt$Secure;
.super Ljava/lang/Object;
.source "MtkSettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkSettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static moveToGlobal(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p0, "MOVED_TO_GLOBAL":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "MtkSettingsProviderExt"

    const-string v1, "Secure moveToGlobal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method
