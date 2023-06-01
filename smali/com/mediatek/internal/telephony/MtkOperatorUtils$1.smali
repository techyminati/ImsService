.class Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;
.super Ljava/util/HashMap;
.source "MtkOperatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkOperatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;",
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 26

    .line 100
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 102
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP01:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46000"

    const-string v3, "46002"

    const-string v4, "46004"

    const-string v5, "46007"

    const-string v6, "46008"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP02:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46001"

    const-string v3, "46006"

    const-string v4, "46009"

    const-string v5, "45407"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP03:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "20801"

    const-string v3, "20802"

    const-string v4, "23101"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP05:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "20201"

    const-string v3, "20202"

    const-string v4, "20416"

    const-string v5, "20420"

    const-string v6, "21630"

    const-string v7, "21901"

    const-string v8, "22004"

    const-string v9, "23001"

    const-string v10, "23203"

    const-string v11, "23204"

    const-string v12, "23430"

    const-string v13, "26002"

    const-string v14, "26201"

    const-string v15, "26206"

    const-string v16, "26278"

    const-string v17, "29702"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP06:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "20205"

    const-string v3, "20404"

    const-string v4, "21401"

    const-string v5, "21406"

    const-string v6, "21670"

    const-string v7, "22210"

    const-string v8, "22601"

    const-string v9, "23415"

    const-string v10, "23591"

    const-string v11, "26202"

    const-string v12, "26204"

    const-string v13, "26209"

    const-string v14, "26801"

    const-string v15, "27201"

    const-string v16, "27402"

    const-string v17, "27403"

    const-string v18, "27801"

    const-string v19, "28602"

    const-string v20, "90128"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP07:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "31030"

    const-string v3, "31070"

    const-string v4, "31080"

    const-string v5, "31090"

    const-string v6, "310150"

    const-string v7, "310170"

    const-string v8, "310280"

    const-string v9, "310380"

    const-string v10, "310410"

    const-string v11, "310560"

    const-string v12, "310680"

    const-string v13, "311180"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP08:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "310160"

    const-string v3, "310260"

    const-string v4, "310490"

    const-string v5, "310580"

    const-string v6, "310660"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP09:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45502"

    const-string v3, "46003"

    const-string v4, "46011"

    const-string v5, "46012"

    const-string v6, "45507"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP11:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "23420"

    const-string v3, "23594"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP15:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "26203"

    const-string v3, "26207"

    const-string v4, "26208"

    const-string v5, "26211"

    const-string v6, "26277"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP16:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "23430"

    const-string v3, "23431"

    const-string v4, "23432"

    const-string v5, "23433"

    const-string v6, "23434"

    const-string v7, "23486"

    const-string v8, "23501"

    const-string v9, "23502"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP18:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "405840"

    const-string v3, "405854"

    const-string v4, "405855"

    const-string v5, "405856"

    const-string v6, "405857"

    const-string v7, "405858"

    const-string v8, "405859"

    const-string v9, "405860"

    const-string v10, "405861"

    const-string v11, "405862"

    const-string v12, "405863"

    const-string v13, "405864"

    const-string v14, "405865"

    const-string v15, "405866"

    const-string v16, "405867"

    const-string v17, "405868"

    const-string v18, "405869"

    const-string v19, "405870"

    const-string v20, "405871"

    const-string v21, "405872"

    const-string v22, "405873"

    const-string v23, "405874"

    filled-new-array/range {v2 .. v23}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP19:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "50501"

    const-string v3, "50511"

    const-string v4, "50571"

    const-string v5, "50572"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP50:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "44020"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP100:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45400"

    const-string v3, "45402"

    const-string v4, "45410"

    const-string v5, "45418"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP101:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45416"

    const-string v3, "45419"

    const-string v4, "45420"

    const-string v5, "45429"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP102:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45406"

    const-string v3, "45415"

    const-string v4, "45417"

    const-string v5, "45500"

    const-string v6, "45506"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP103:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "52501"

    const-string v3, "52502"

    const-string v4, "52507"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP106:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45403"

    const-string v3, "45404"

    const-string v4, "45405"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP107:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "20809"

    const-string v3, "20810"

    const-string v4, "20811"

    const-string v5, "20813"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP108:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46697"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP109:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46692"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP110:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46601"

    const-string v3, "46602"

    const-string v4, "46603"

    const-string v5, "46606"

    const-string v6, "46607"

    const-string v7, "46688"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP117:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "51009"

    const-string v3, "51028"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP118:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "502152"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP124:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46605"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP125:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "52005"

    const-string v3, "52018"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP128:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "24403"

    const-string v3, "24404"

    const-string v4, "24412"

    const-string v5, "24413"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP131:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "52000"

    const-string v3, "52004"

    const-string v4, "52088"

    const-string v5, "52099"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP132:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "72406"

    const-string v3, "72410"

    const-string v4, "72411"

    const-string v5, "72423"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP134:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "24405"

    const-string v3, "24421"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP137:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "20402"

    const-string v3, "25020"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP143:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "28601"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP150:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "22801"

    const-string v3, "29501"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP147:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "40410"

    const-string v3, "40431"

    const-string v4, "40440"

    const-string v5, "40445"

    const-string v6, "40449"

    const-string v7, "40551"

    const-string v8, "40552"

    const-string v9, "40553"

    const-string v10, "40554"

    const-string v11, "40555"

    const-string v12, "40556"

    const-string v13, "40490"

    const-string v14, "40492"

    const-string v15, "40493"

    const-string v16, "40494"

    const-string v17, "40495"

    const-string v18, "40496"

    const-string v19, "40497"

    const-string v20, "40498"

    const-string v21, "40402"

    const-string v22, "40403"

    const-string v23, "40416"

    const-string v24, "40470"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP148:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "45611"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP152:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "50502"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP154:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "24001"

    const-string v3, "24005"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP156:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "23802"

    const-string v3, "23877"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP161:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "26006"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP175:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "23801"

    const-string v3, "23810"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;->OP176:Lcom/mediatek/internal/telephony/MtkOperatorUtils$OPID;

    const-string v2, "46689"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MtkOperatorUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method
