.class Lcom/mediatek/boostfwk/identify/launch/LaunchConfig$1;
.super Ljava/util/HashMap;
.source "LaunchConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/boostfwk/identify/launch/LaunchConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v0, "com.tencent.mm"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/boostfwk/identify/launch/LaunchConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
