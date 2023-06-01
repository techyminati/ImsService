.class Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "AcsEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/AcsEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method varargs exec([Ljava/lang/Object;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 46
    .local v1, "type":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AcsEventCallback"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v2, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 65
    :pswitch_0
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, "errorCode":I
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "errorString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " errorCode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "],errorString["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v3, v0, v2}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onConfigurationErrorReceived(ILjava/lang/String;)V

    .line 69
    goto :goto_1

    .line 61
    .end local v0    # "errorCode":I
    .end local v2    # "errorString":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onAcsDisconnected()V

    .line 62
    goto :goto_1

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onAcsConnected()V

    .line 58
    goto :goto_1

    .line 50
    :pswitch_3
    aget-object v6, p1, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v5

    .line 51
    .local v0, "valid":Z
    :cond_1
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 52
    .local v2, "version":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " valid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "],version["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v3, v0, v2}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onConfigurationStatusChanged(ZI)V

    .line 54
    nop

    .line 75
    .end local v0    # "valid":Z
    .end local v2    # "version":I
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
