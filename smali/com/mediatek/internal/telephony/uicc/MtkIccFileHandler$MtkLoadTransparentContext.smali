.class Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;
.super Ljava/lang/Object;
.source "MtkIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MtkLoadTransparentContext"
.end annotation


# instance fields
.field mEfid:I

.field mOnLoaded:Landroid/os/Message;

.field mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "efid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mEfid:I

    .line 120
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mPath:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/MtkIccFileHandler$MtkLoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    .line 122
    return-void
.end method
