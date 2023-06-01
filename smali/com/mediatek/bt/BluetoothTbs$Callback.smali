.class public abstract Lcom/mediatek/bt/BluetoothTbs$Callback;
.super Ljava/lang/Object;
.source "BluetoothTbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bt/BluetoothTbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothTbs.Callback"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAcceptCall(ILjava/util/UUID;)V
.end method

.method public onHoldCall(ILjava/util/UUID;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 315
    const-string v0, "BluetoothTbs.Callback"

    const-string v1, "onHoldCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onJoinCalls(ILjava/util/List;)V
    .registers 5
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p2, "callIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    const-string v0, "BluetoothTbs.Callback"

    const-string v1, "onUnholdCall: unimplemented, however CAPABILITY_JOIN_CALLS is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public abstract onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract onTerminateCall(ILjava/util/UUID;)V
.end method

.method public onUnholdCall(ILjava/util/UUID;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 330
    const-string v0, "BluetoothTbs.Callback"

    const-string v1, "onUnholdCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method
