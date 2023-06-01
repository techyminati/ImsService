.class public Lcom/mediatek/gba/NafSessionKey;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/gba/NafSessionKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthHeader:Ljava/lang/String;

.field private mBtid:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mKey:[B

.field private mKeylifetime:Ljava/lang/String;

.field private mNafId:[B

.field private mNafKeyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/mediatek/gba/NafSessionKey$1;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey$1;-><init>()V

    sput-object v0, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 4
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "keylifetime"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 29
    iput-object p3, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthHeader()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64Key()[B
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getBtid()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getKey()[B
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    return-object v0
.end method

.method public getKeylifetime()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    return-object v0
.end method

.method public getNafId()[B
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    return-object v0
.end method

.method public getNafKeyName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthHeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "authHeader"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setBtid(Ljava/lang/String;)V
    .registers 2
    .param p1, "btid"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 86
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    .line 87
    return-void
.end method

.method public setKey([B)V
    .registers 2
    .param p1, "key"    # [B

    .line 50
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 51
    return-void
.end method

.method public setKeylifetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "keylifetime"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setNafId([B)V
    .registers 2
    .param p1, "nafId"    # [B

    .line 70
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    .line 71
    return-void
.end method

.method public setNafKeyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "nafKeyName"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 176
    monitor-enter p0

    .line 177
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NafSessionKey -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " btid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " keylifetime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " nafkeyname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " authheader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 183
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_66
    move-exception v0

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mAuthHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_2b

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2f

    .line 118
    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_2f
    return-void
.end method
