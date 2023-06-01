.class Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$1;
.super Ljava/lang/ThreadLocal;
.source "MtkImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    .line 103
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$1;->this$0:Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .registers 2

    .line 106
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkImsSmsDispatcher$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
