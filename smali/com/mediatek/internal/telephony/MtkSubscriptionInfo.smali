.class public Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;
.super Landroid/telephony/SubscriptionInfo;
.source "MtkSubscriptionInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_DEBUG_BUILD:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSubscriptionInfo"

.field private static final TEXT_SIZE:I = 0x10


# instance fields
.field private mIconBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 79
    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->IS_DEBUG_BUILD:Z

    .line 316
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .registers 19
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;

    .line 109
    invoke-direct/range {p0 .. p16}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    .line 111
    move-object v0, p0

    move-object v1, p10

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V
    .registers 29
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "cardId"    # I
    .param p18, "isOpportunistic"    # Z
    .param p19, "groupUUID"    # Ljava/lang/String;
    .param p20, "isGroupDisabled"    # Z
    .param p21, "carrierId"    # I
    .param p22, "profileClass"    # I
    .param p23, "subType"    # I
    .param p24, "groupOwner"    # Ljava/lang/String;
    .param p25, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p26, "areUiccApplicationsEnabled"    # Z

    .line 185
    invoke-direct/range {p0 .. p26}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIIILjava/lang/String;[Landroid/telephony/UiccAccessRule;Z)V

    .line 189
    move-object v0, p0

    move-object v1, p10

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 190
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;ZLjava/lang/String;II)V
    .registers 23
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # Ljava/lang/String;
    .param p12, "mnc"    # Ljava/lang/String;
    .param p13, "countryIso"    # Ljava/lang/String;
    .param p14, "isEmbedded"    # Z
    .param p15, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;
    .param p16, "cardString"    # Ljava/lang/String;
    .param p17, "isOpportunistic"    # Z
    .param p18, "groupUUID"    # Ljava/lang/String;
    .param p19, "carrierId"    # I
    .param p20, "profileClass"    # I

    .line 143
    invoke-direct/range {p0 .. p20}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;ZLjava/lang/String;II)V

    .line 146
    move-object v0, p0

    move-object v1, p10

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 2
    .param p1, "subscriptionInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 83
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 84
    return-void
.end method

.method public static isPrintableFullIccId()Z
    .registers 1

    .line 367
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createIconBitmap(Landroid/content/Context;IZ)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "showSlotIndex"    # Z

    .line 247
    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108054b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 253
    :cond_12
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 254
    .local v0, "width":I
    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 255
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 257
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    sget-boolean v3, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->IS_DEBUG_BUILD:Z

    if-eqz v3, :cond_54

    .line 258
    const-string v3, "MtkSubscriptionInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIconBitmap width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " metrics:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_54
    iget-object v3, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 265
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 264
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 267
    .local v3, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const/4 v7, -0x1

    if-ne p2, v7, :cond_72

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->getIconTint()I

    move-result v8

    goto :goto_73

    :cond_72
    move v8, p2

    :goto_73
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v8, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 279
    iget-object v6, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 280
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 283
    if-eqz p3, :cond_d0

    .line 286
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    const-string v8, "sans-serif"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 288
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    const/high16 v7, 0x41800000    # 16.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 297
    const-string v7, "%d"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "index":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 300
    .local v8, "textBound":Landroid/graphics/Rect;
    invoke-virtual {v5, v7, v9, v6, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 301
    int-to-float v6, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 302
    .local v6, "xOffset":F
    int-to-float v10, v1

    div-float/2addr v10, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v10, v9

    .line 303
    .local v10, "yOffset":F
    invoke-virtual {v4, v7, v6, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    .end local v6    # "xOffset":F
    .end local v7    # "index":Ljava/lang/String;
    .end local v8    # "textBound":Landroid/graphics/Rect;
    .end local v10    # "yOffset":F
    :cond_d0
    monitor-exit p0

    return-object v3

    .line 310
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "workingBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :catchall_d2
    move-exception v0

    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_1 .. :try_end_d4} :catchall_d2

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    monitor-enter p0

    .line 213
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/telephony/SubscriptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    monitor-exit p0

    .line 217
    return-void

    .line 215
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
