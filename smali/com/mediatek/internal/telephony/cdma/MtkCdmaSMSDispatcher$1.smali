.class Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$1;
.super Ljava/lang/ThreadLocal;
.source "MtkCdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    .line 114
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$1;->this$0:Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .registers 2

    .line 117
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaSMSDispatcher$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
