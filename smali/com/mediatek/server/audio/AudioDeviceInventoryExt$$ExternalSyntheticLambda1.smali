.class public final synthetic Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/server/audio/AudioDeviceInventoryExt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/server/audio/AudioDeviceInventoryExt;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->lambda$disconnectLE$1$AudioDeviceInventoryExt(Ljava/lang/String;)V

    return-void
.end method
