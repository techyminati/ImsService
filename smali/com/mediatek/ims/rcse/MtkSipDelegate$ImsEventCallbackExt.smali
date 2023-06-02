.class public Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
.source "MtkSipDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/MtkSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsEventCallbackExt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 130
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 159
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregStart mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onDeregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 148
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onDeregistering(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 143
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistering mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 138
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onRegistering(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistering mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public onReregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 153
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReregistered mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$ImsEventCallbackExt;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVopsIndication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 167
    return-void
.end method
