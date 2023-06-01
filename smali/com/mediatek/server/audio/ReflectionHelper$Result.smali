.class public Lcom/mediatek/server/audio/ReflectionHelper$Result;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/audio/ReflectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public mReturn:Ljava/lang/Object;

.field public mSuccess:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "returnValue"    # Ljava/lang/Object;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-boolean p1, p0, Lcom/mediatek/server/audio/ReflectionHelper$Result;->mSuccess:Z

    .line 316
    iput-object p2, p0, Lcom/mediatek/server/audio/ReflectionHelper$Result;->mReturn:Ljava/lang/Object;

    .line 317
    return-void
.end method
