.class Lcom/mediatek/internal/telephony/MtkSubscriptionInfo$1;
.super Ljava/lang/Object;
.source "MtkSubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 59
    .param p1, "source"    # Landroid/os/Parcel;

    .line 320
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, "id":I
    move/from16 v2, v28

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .local v29, "iccId":Ljava/lang/String;
    move-object/from16 v3, v29

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "simSlotIndex":I
    move/from16 v4, v30

    .line 323
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v31, v1

    check-cast v31, Ljava/lang/CharSequence;

    .local v31, "displayName":Ljava/lang/CharSequence;
    move-object/from16 v5, v31

    .line 324
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Ljava/lang/CharSequence;

    .local v32, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v6, v32

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, "nameSource":I
    move/from16 v7, v33

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, "iconTint":I
    move/from16 v8, v34

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .local v35, "number":Ljava/lang/String;
    move-object/from16 v9, v35

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .local v36, "dataRoaming":I
    move/from16 v10, v36

    .line 329
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .local v37, "mcc":Ljava/lang/String;
    move-object/from16 v12, v37

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .local v38, "mnc":Ljava/lang/String;
    move-object/from16 v13, v38

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .local v39, "countryIso":Ljava/lang/String;
    move-object/from16 v14, v39

    .line 332
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v40, v1

    check-cast v40, Landroid/graphics/Bitmap;

    .local v40, "iconBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v11, v40

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v41

    .local v41, "isEmbedded":Z
    move/from16 v15, v41

    .line 334
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v42, v1

    check-cast v42, [Landroid/telephony/UiccAccessRule;

    .local v42, "nativeAccessRules":[Landroid/telephony/UiccAccessRule;
    move-object/from16 v16, v42

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .local v43, "cardString":Ljava/lang/String;
    move-object/from16 v17, v43

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, "cardId":I
    move/from16 v18, v44

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v45

    .local v45, "isOpportunistic":Z
    move/from16 v19, v45

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .local v46, "groupUUID":Ljava/lang/String;
    move-object/from16 v20, v46

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    .local v47, "isGroupDisabled":Z
    move/from16 v21, v47

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "carrierid":I
    move/from16 v22, v48

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v49

    .local v49, "profileClass":I
    move/from16 v23, v49

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .local v50, "subType":I
    move/from16 v24, v50

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "ehplmns":[Ljava/lang/String;
    move/from16 v51, v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "hplmns":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "groupOwner":Ljava/lang/String;
    move-object/from16 v25, v52

    .line 346
    move-object/from16 v53, v1

    .end local v1    # "ehplmns":[Ljava/lang/String;
    .local v53, "ehplmns":[Ljava/lang/String;
    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, [Landroid/telephony/UiccAccessRule;

    .local v54, "carrierConfigAccessRules":[Landroid/telephony/UiccAccessRule;
    move-object/from16 v26, v54

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v55

    .local v55, "areUiccApplicationsEnabled":Z
    move/from16 v27, v55

    .line 350
    new-instance v56, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-object/from16 v0, v53

    .end local v53    # "ehplmns":[Ljava/lang/String;
    .local v0, "ehplmns":[Ljava/lang/String;
    move-object/from16 v1, v56

    move-object v0, v2

    move/from16 v2, v51

    .end local v2    # "hplmns":[Ljava/lang/String;
    .local v0, "hplmns":[Ljava/lang/String;
    .restart local v53    # "ehplmns":[Ljava/lang/String;
    invoke-direct/range {v1 .. v27}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 355
    .local v1, "info":Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    move-object/from16 v2, v53

    .end local v53    # "ehplmns":[Ljava/lang/String;
    .local v2, "ehplmns":[Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->setAssociatedPlmns([Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 361
    new-array v0, p1, [Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;

    move-result-object p1

    return-object p1
.end method
