.class Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;
.super Ljava/lang/Object;
.source "DexOptExtImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/server/dx/DexOptExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexOptExtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/dx/DexOptExtImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/server/dx/DexOptExtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/dx/DexOptExtImpl;

    .line 84
    iput-object p1, p0, Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, "pkg":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18

    goto :goto_16

    .line 94
    :pswitch_a
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    # invokes: Lcom/mediatek/server/dx/DexOptExtImpl;->handleDoDexopt(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$100(Lcom/mediatek/server/dx/DexOptExtImpl;Landroid/os/Message;)V

    goto :goto_16

    .line 91
    :pswitch_10
    iget-object v1, p0, Lcom/mediatek/server/dx/DexOptExtImpl$DexOptExtHandler;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    # invokes: Lcom/mediatek/server/dx/DexOptExtImpl;->handleProcessStart(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$000(Lcom/mediatek/server/dx/DexOptExtImpl;Ljava/lang/String;)V

    .line 92
    nop

    .line 97
    :goto_16
    const/4 v1, 0x1

    return v1

    :pswitch_data_18
    .packed-switch 0x2711
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method
