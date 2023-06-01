.class Lcom/mediatek/amsAal/AalUtils$AalConfig;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amsAal/AalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AalConfig"
.end annotation


# instance fields
.field public mLevel:I

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/amsAal/AalUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/amsAal/AalUtils;Ljava/lang/String;I)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I

    .line 364
    iput-object p1, p0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->this$0:Lcom/mediatek/amsAal/AalUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mName:Ljava/lang/String;

    .line 362
    const/4 p1, -0x1

    iput p1, p0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    .line 365
    iput-object p2, p0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mName:Ljava/lang/String;

    .line 366
    iput p3, p0, Lcom/mediatek/amsAal/AalUtils$AalConfig;->mLevel:I

    .line 367
    return-void
.end method
