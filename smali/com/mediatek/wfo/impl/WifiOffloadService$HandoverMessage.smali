.class Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverMessage"
.end annotation


# instance fields
.field public mRatType:I

.field public mSimIdx:I

.field public mStage:I

.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/WifiOffloadService;III)V
    .registers 5
    .param p2, "simIdx"    # I
    .param p3, "stage"    # I
    .param p4, "ratType"    # I

    .line 162
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->this$0:Lcom/mediatek/wfo/impl/WifiOffloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mSimIdx:I

    .line 164
    iput p3, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mStage:I

    .line 165
    iput p4, p0, Lcom/mediatek/wfo/impl/WifiOffloadService$HandoverMessage;->mRatType:I

    .line 166
    return-void
.end method
