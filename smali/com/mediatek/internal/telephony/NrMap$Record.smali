.class Lcom/mediatek/internal/telephony/NrMap$Record;
.super Ljava/lang/Object;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Record"
.end annotation


# instance fields
.field private city_name:Ljava/lang/String;

.field private iso:Ljava/lang/String;

.field private mccmnc:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "city_name"    # Ljava/lang/String;
    .param p4, "iso"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->mccmnc:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->city_name:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->iso:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIso()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->iso:Ljava/lang/String;

    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->mccmnc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 174
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->mccmnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->city_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$Record;->iso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
