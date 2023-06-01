.class Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;
.super Lcom/mediatek/telephony/IOemHookCallback$Stub;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;->registerAtUrcInd(ILandroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

.field final synthetic val$event_id:I

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    .line 1189
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    iput p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$event_id:I

    invoke-direct {p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtCmdResp(IJLjava/lang/String;)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1193
    return-void
.end method

.method public onAtUrcInd(ILjava/lang/String;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1197
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_20

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1202
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1204
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "m":Landroid/os/Message;
    :cond_20
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/String;

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAtUrcInd onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 1210
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v0, "except":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1212
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$1;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1213
    .end local v0    # "except":Ljava/lang/Exception;
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_32

    .line 1214
    :cond_2d
    const-string v0, "registerAtUrcInd onError h == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :goto_32
    return-void
.end method
