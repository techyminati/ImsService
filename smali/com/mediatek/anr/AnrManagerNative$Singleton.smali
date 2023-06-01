.class abstract Lcom/mediatek/anr/AnrManagerNative$Singleton;
.super Ljava/lang/Object;
.source "AnrManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anr/AnrManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    .local p0, "this":Lcom/mediatek/anr/AnrManagerNative$Singleton;, "Lcom/mediatek/anr/AnrManagerNative$Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/mediatek/anr/AnrManagerNative$Singleton;, "Lcom/mediatek/anr/AnrManagerNative$Singleton<TT;>;"
    monitor-enter p0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/anr/AnrManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/anr/AnrManagerNative$Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/anr/AnrManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/mediatek/anr/AnrManagerNative$Singleton;->mInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 128
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
