.class public Lcom/mediatek/ims/rcsua/Capability$TagValueList;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagValueList"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/Capability$TagValueList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hashCode:I

.field private values:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 504
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability$TagValueList$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "values"    # Ljava/lang/String;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->hashCode:I

    .line 459
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->initialize(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 456
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method private addValues(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V
    .locals 2
    .param p1, "valuesToAdd"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 566
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 569
    :cond_0
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 557
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 563
    return-void
.end method

.method private removeValues(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V
    .locals 2
    .param p1, "valuesToRemove"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 572
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 575
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V
    .locals 0
    .param p1, "values"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 463
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->addValues(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 464
    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "values"    # Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 472
    return-void
.end method

.method public contains(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Z
    .locals 3
    .param p1, "otherValue"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 479
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    const/4 v0, 0x0

    return v0

    .line 482
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 538
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 539
    return v0

    .line 541
    :cond_0
    instance-of v1, p1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 542
    move-object v1, p1

    check-cast v1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 544
    .local v1, "other":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v3, v1, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 547
    .end local v1    # "other":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_2
    return v2
.end method

.method public getTagValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V
    .locals 0
    .param p1, "values"    # Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 467
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->removeValues(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 468
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "values"    # Ljava/lang/String;

    .line 475
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->remove(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 476
    return-void
.end method

.method size()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 522
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->values:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 525
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 496
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    return-void
.end method
