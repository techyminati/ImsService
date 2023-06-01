.class Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;
.super Ljava/util/HashMap;
.source "MtkDcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 25

    .line 158
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 160
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP129:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    const-string v2, "44007"

    const-string v3, "44008"

    const-string v4, "44050"

    const-string v5, "44051"

    const-string v6, "44052"

    const-string v7, "44053"

    const-string v8, "44054"

    const-string v9, "44055"

    const-string v10, "44056"

    const-string v11, "44070"

    const-string v12, "44071"

    const-string v13, "44072"

    const-string v14, "44073"

    const-string v15, "44074"

    const-string v16, "44075"

    const-string v17, "44076"

    const-string v18, "44077"

    const-string v19, "44078"

    const-string v20, "44079"

    const-string v21, "44088"

    const-string v22, "44089"

    const-string v23, "44170"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;->OP156:Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$Operator;

    const-string v2, "23802"

    const-string v3, "23877"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcHelper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method
