.class Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;
.super Lcom/mediatek/telephony/IOemHookCallback$Stub;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;->sendAtCmd(IJLjava/lang/String;Landroid/os/Handler;I)V
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

    .line 1271
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iput p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-direct {p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtCmdResp(IJLjava/lang/String;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAtCmd onAtCmdResp token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_3e

    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1281
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1282
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_43

    .line 1283
    :cond_3e
    const-string v0, "sendAtCmd onAtCmdResp h == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_43
    return-void
.end method

.method public onAtUrcInd(ILjava/lang/String;)V
    .registers 3
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1290
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/String;

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAtCmd onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 1296
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, "except":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1298
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1299
    .end local v0    # "except":Ljava/lang/Exception;
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_32

    .line 1300
    :cond_2d
    const-string v0, "sendAtCmd onError h == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :goto_32
    return-void
.end method
