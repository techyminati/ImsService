.class public final Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RegStateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessTechnologySpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;,
        Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;,
        Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    }
.end annotation


# instance fields
.field private hidl_d:B

.field private hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 264
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 415
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 416
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 417
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 416
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 420
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 422
    new-instance v5, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;-><init>()V

    .line 423
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
    mul-int/lit8 v6, v4, 0x14

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 424
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 428
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 466
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 467
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 468
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 469
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 470
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 471
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 470
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 473
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 476
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 477
    return-void
.end method


# virtual methods
.method public cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    .registers 5

    .line 312
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    .line 313
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    .line 314
    .local v0, "className":Ljava/lang/String;
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 317
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "className":Ljava/lang/String;
    :cond_48
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_5d

    const-class v1, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5d

    .line 321
    :cond_55
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_5d
    :goto_5d
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    return-object v0
.end method

.method public cdmaInfo(Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;)V
    .registers 3
    .param p1, "cdmaInfo"    # Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    .line 307
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 308
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 351
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 352
    return v0

    .line 354
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 355
    return v1

    .line 357
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    if-eq v2, v3, :cond_11

    .line 358
    return v1

    .line 360
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;

    .line 361
    .local v2, "other":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 362
    return v1

    .line 364
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 365
    return v1

    .line 367
    :cond_26
    return v0
.end method

.method public eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;
    .registers 5

    .line 332
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    .line 333
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_12
    const-string v0, "null"

    .line 334
    .local v0, "className":Ljava/lang/String;
    :goto_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 337
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    .end local v0    # "className":Ljava/lang/String;
    :cond_48
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_5d

    const-class v1, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_5d

    .line 341
    :cond_55
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_5d
    :goto_5d
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    return-object v0
.end method

.method public eutranInfo(Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;)V
    .registers 3
    .param p1, "eutranInfo"    # Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    .line 327
    const/4 v0, 0x2

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 328
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 329
    return-void
.end method

.method public getDiscriminator()B
    .registers 2

    .line 347
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 372
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 373
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 374
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 372
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public noinit()Landroid/hidl/safe_union/V1_0/Monostate;
    .registers 5

    .line 292
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    if-eqz v0, :cond_47

    .line 293
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, "null"

    .line 294
    .local v0, "className":Ljava/lang/String;
    :goto_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 297
    invoke-static {v3}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "className":Ljava/lang/String;
    :cond_47
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_5c

    const-class v1, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_5c

    .line 301
    :cond_54
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_5c
    :goto_5c
    iget-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public noinit(Landroid/hidl/safe_union/V1_0/Monostate;)V
    .registers 3
    .param p1, "noinit"    # Landroid/hidl/safe_union/V1_0/Monostate;

    .line 287
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 288
    iput-object p1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 289
    return-void
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 433
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    .line 434
    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_58

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_2c
    new-instance v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 447
    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 448
    goto :goto_56

    .line 441
    :pswitch_3a
    new-instance v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 442
    check-cast v0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 443
    goto :goto_56

    .line 436
    :pswitch_48
    new-instance v0, Landroid/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 437
    check-cast v0, Landroid/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 438
    nop

    .line 454
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_48
        :pswitch_3a
        :pswitch_2c
    .end packed-switch
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 406
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 407
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 408
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-byte v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_5e

    .line 398
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :pswitch_2d
    const-string v1, ".eutranInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    goto :goto_54

    .line 388
    :pswitch_3a
    const-string v1, ".cdmaInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    goto :goto_54

    .line 383
    :pswitch_47
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    nop

    .line 401
    :goto_54
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3a
        :pswitch_2d
    .end packed-switch
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 481
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 482
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_4a

    .line 496
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :pswitch_2d
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->eutranInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$EutranRegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 493
    goto :goto_48

    .line 488
    :pswitch_36
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->cdmaInfo()Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 489
    goto :goto_48

    .line 484
    :pswitch_3f
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->noinit()Landroid/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 485
    nop

    .line 499
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 457
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 458
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 459
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 460
    return-void
.end method
