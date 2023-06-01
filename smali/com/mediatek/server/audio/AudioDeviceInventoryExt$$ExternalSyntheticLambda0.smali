.class public final synthetic Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/server/audio/AudioDeviceInventoryExt$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-static {v0, p1}, Lcom/mediatek/server/audio/AudioDeviceInventoryExt;->lambda$disconnectLE$0(Landroid/util/ArraySet;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-void
.end method
