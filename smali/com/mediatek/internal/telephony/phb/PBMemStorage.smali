.class public Lcom/mediatek/internal/telephony/phb/PBMemStorage;
.super Ljava/lang/Object;
.source "PBMemStorage.java"


# static fields
.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mStorage:Ljava/lang/String;

.field private mTotal:I

.field private mUsed:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 60
    iput v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 61
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    .registers 3
    .param p0, "source"    # Landroid/os/Parcel;

    .line 64
    new-instance v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/phb/PBMemStorage;-><init>()V

    .line 66
    .local v0, "p":Lcom/mediatek/internal/telephony/phb/PBMemStorage;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 69
    return-object v0
.end method


# virtual methods
.method public getStorage()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    return v0
.end method

.method public getUsed()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    return v0
.end method

.method public setStorage(Ljava/lang/String;)V
    .registers 2
    .param p1, "sStorage"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTotal(I)V
    .registers 2
    .param p1, "iTotal"    # I

    .line 88
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    .line 89
    return-void
.end method

.method public setUsed(I)V
    .registers 2
    .param p1, "iUsed"    # I

    .line 84
    iput p1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/PBMemStorage;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
