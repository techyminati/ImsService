.class Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoveOutMessage"
.end annotation


# instance fields
.field public mRoveOut:Z

.field public mRssi:I

.field public mSimIdx:I

.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;IZI)V
    .registers 5
    .param p2, "simIdx"    # I
    .param p3, "roveOut"    # Z
    .param p4, "rssi"    # I

    .line 173
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mSimIdx:I

    .line 175
    iput-boolean p3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mRoveOut:Z

    .line 176
    iput p4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$RoveOutMessage;->mRssi:I

    .line 177
    return-void
.end method
