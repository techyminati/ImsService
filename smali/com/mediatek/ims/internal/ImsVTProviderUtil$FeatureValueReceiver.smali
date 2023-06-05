.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureValueReceiver"
.end annotation


# instance fields
.field private mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field private mViLTEValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mViWifiValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 9
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 219
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->access$000()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "propValueBit":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    move v1, v0

    .line 229
    :cond_0
    const/4 v2, 0x0

    const-string v3, "persist.vendor.mtk.vilte.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v5, v4, v1

    and-int/2addr v3, v5

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 230
    .local v3, "enable":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getprop [persist.vendor.mtk.vilte.enable]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ImsVT Util"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v5, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    shl-int v8, v4, v1

    and-int/2addr v5, v8

    if-lez v5, :cond_2

    move v2, v4

    .line 234
    .end local v3    # "enable":Z
    .local v2, "enable":Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getprop [persist.vendor.mtk.viwifi.enable]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v1    # "propValueBit":I
    .end local v2    # "enable":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public getInitViLTEValue(I)Z
    .locals 1
    .param p1, "phondId"    # I

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getInitViWifiValue(I)Z
    .locals 1
    .param p1, "phondId"    # I

    .line 250
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 256
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 260
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    const/4 v0, -0x1

    const-string v1, "item"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, "feature":I
    const-string v2, "phone_id"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 264
    .local v2, "phoneId":I
    const-string v3, "value"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "status":I
    const-string v3, "ImsVT Util"

    if-gez v2, :cond_1

    .line 267
    const-string v4, "ignore it for invalid SIM id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 271
    :cond_1
    const-string v4, ", status: "

    const-string v5, ", feature: "

    const-string v6, "onRecevied feature changed phoneId: "

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-nez v0, :cond_2

    .line 276
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_2
    if-ne v0, v7, :cond_3

    .line 278
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    const/high16 v4, -0x1000000

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchFeature(IIZ)V

    goto :goto_2

    .line 282
    :cond_4
    const/4 v8, 0x3

    if-ne v1, v8, :cond_7

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v0, :cond_5

    .line 287
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 288
    :cond_5
    if-ne v0, v7, :cond_6

    .line 289
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    const/high16 v4, -0xf00000

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchFeature(IIZ)V

    .line 294
    .end local v0    # "status":I
    .end local v1    # "feature":I
    .end local v2    # "phoneId":I
    :cond_7
    :goto_2
    return-void

    .line 257
    :cond_8
    :goto_3
    return-void
.end method

.method public setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "owner"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 240
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 241
    return-void
.end method
