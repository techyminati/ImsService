.class Lcom/mediatek/net/connectivity/MtkNetPacketMonitor$PacketCallback;
.super Ljava/lang/Object;
.source "MtkNetPacketMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/net/connectivity/MtkNetPacketMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PacketCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method


# virtual methods
.method public onPacketEvent(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 229
    return-void
.end method
