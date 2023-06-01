.class Lcom/mediatek/server/dx/DexOptExtImpl$1;
.super Ljava/lang/Object;
.source "DexOptExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/server/dx/DexOptExtImpl;->tryToStopDex2oat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/server/dx/DexOptExtImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/server/dx/DexOptExtImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/server/dx/DexOptExtImpl;

    .line 331
    iput-object p1, p0, Lcom/mediatek/server/dx/DexOptExtImpl$1;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 337
    iget-object v0, p0, Lcom/mediatek/server/dx/DexOptExtImpl$1;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    # invokes: Lcom/mediatek/server/dx/DexOptExtImpl;->isBlockedInDexopt()Z
    invoke-static {v0}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$200(Lcom/mediatek/server/dx/DexOptExtImpl;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 338
    return-void

    .line 340
    :cond_9
    # getter for: Lcom/mediatek/server/dx/DexOptExtImpl;->PIDS_OF_INTREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$300()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 341
    .local v0, "pids":[I
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 342
    .local v1, "cmdlines":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 344
    .local v2, "install_idx":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v0

    if-ge v3, v4, :cond_34

    .line 345
    aget v4, v0, v3

    # invokes: Lcom/mediatek/server/dx/DexOptExtImpl;->readCmdlineFromProcfs(I)Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$400(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 346
    aget-object v4, v1, v3

    # getter for: Lcom/mediatek/server/dx/DexOptExtImpl;->PIDS_OF_INTREST:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$300()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 347
    move v2, v3

    .line 344
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 349
    .end local v3    # "i":I
    :cond_34
    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 350
    return-void

    .line 352
    :cond_38
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_39
    array-length v4, v0

    if-ge v3, v4, :cond_4d

    .line 353
    if-ne v3, v2, :cond_3f

    .line 354
    goto :goto_4a

    .line 355
    :cond_3f
    iget-object v4, p0, Lcom/mediatek/server/dx/DexOptExtImpl$1;->this$0:Lcom/mediatek/server/dx/DexOptExtImpl;

    aget v5, v0, v3

    aget-object v6, v1, v3

    aget v7, v0, v2

    # invokes: Lcom/mediatek/server/dx/DexOptExtImpl;->killIfIsDex2oat(ILjava/lang/String;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/mediatek/server/dx/DexOptExtImpl;->access$500(Lcom/mediatek/server/dx/DexOptExtImpl;ILjava/lang/String;I)V

    .line 352
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 357
    .end local v3    # "i":I
    :cond_4d
    return-void
.end method
