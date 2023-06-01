.class public Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
.super Ljava/lang/Object;
.source "MtkTftParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/ims/MtkTftParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLinkedPacketFilterIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "linkedPacketFilterIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->mLinkedPacketFilterIdList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/ims/MtkTftParameter;
    .registers 5
    .param p0, "p"    # Landroid/os/Parcel;

    .line 18
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 19
    .local v0, "linkedPfNumber":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v1, "linkedPacketFilterIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 23
    .end local v2    # "i":I
    :cond_1a
    new-instance v2, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;

    invoke-direct {v2, v1}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "LinkedPacketFilterIdList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->mLinkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 36
    .local v2, "linkedPacketFilterId":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 37
    .end local v2    # "linkedPacketFilterId":Ljava/lang/Integer;
    :cond_2e
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 27
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->mLinkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->mLinkedPacketFilterIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 29
    .local v1, "pfId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .end local v1    # "pfId":Ljava/lang/Integer;
    goto :goto_f

    .line 30
    :cond_23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 48
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ims/MtkTftParameter;->writeTo(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method
