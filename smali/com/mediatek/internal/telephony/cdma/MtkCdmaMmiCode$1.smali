.class Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$1;
.super Ljava/util/HashMap;
.source "MtkCdmaMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 68
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP12:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    const-string v1, "311480"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;->OP20:Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$OPID;

    const-string v1, "310120"

    const-string v2, "312530"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/cdma/MtkCdmaMmiCode$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
