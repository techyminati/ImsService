.class Lcom/mediatek/gba/NafSessionKey$1;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/NafSessionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/gba/NafSessionKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 129
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey;-><init>()V

    .line 130
    .local v0, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "btid":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 133
    invoke-virtual {v0, v1}, Lcom/mediatek/gba/NafSessionKey;->setBtid(Ljava/lang/String;)V

    .line 136
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 138
    .local v2, "key":[B
    if-eqz v2, :cond_17

    .line 139
    invoke-virtual {v0, v2}, Lcom/mediatek/gba/NafSessionKey;->setKey([B)V

    .line 142
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "keylifetime":Ljava/lang/String;
    if-eqz v3, :cond_20

    .line 145
    invoke-virtual {v0, v3}, Lcom/mediatek/gba/NafSessionKey;->setKeylifetime(Ljava/lang/String;)V

    .line 148
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "nafKeyName":Ljava/lang/String;
    if-eqz v4, :cond_29

    .line 151
    invoke-virtual {v0, v4}, Lcom/mediatek/gba/NafSessionKey;->setNafKeyName(Ljava/lang/String;)V

    .line 154
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "authHeader":Ljava/lang/String;
    if-eqz v5, :cond_32

    .line 157
    invoke-virtual {v0, v5}, Lcom/mediatek/gba/NafSessionKey;->setAuthHeader(Ljava/lang/String;)V

    .line 160
    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "exceptionString":Ljava/lang/String;
    if-eqz v6, :cond_46

    .line 163
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/mediatek/gba/NafSessionKey;->setException(Ljava/lang/Exception;)V

    .line 166
    .end local v6    # "exceptionString":Ljava/lang/String;
    :cond_46
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/gba/NafSessionKey;
    .registers 3
    .param p1, "size"    # I

    .line 170
    new-array v0, p1, [Lcom/mediatek/gba/NafSessionKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->newArray(I)[Lcom/mediatek/gba/NafSessionKey;

    move-result-object p1

    return-object p1
.end method
