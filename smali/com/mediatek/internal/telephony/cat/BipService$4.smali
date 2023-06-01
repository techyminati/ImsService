.class Lcom/mediatek/internal/telephony/cat/BipService$4;
.super Ljava/lang/Thread;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/cat/BipService;->newThreadToDelelteApn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/BipService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/BipService;

    .line 2132
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipService$4;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2134
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipService$4;->this$0:Lcom/mediatek/internal/telephony/cat/BipService;

    # invokes: Lcom/mediatek/internal/telephony/cat/BipService;->deleteApnParams()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cat/BipService;->access$1700(Lcom/mediatek/internal/telephony/cat/BipService;)V

    .line 2135
    return-void
.end method
