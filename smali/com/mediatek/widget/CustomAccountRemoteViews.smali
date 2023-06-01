.class public Lcom/mediatek/widget/CustomAccountRemoteViews;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;,
        Lcom/mediatek/widget/CustomAccountRemoteViews$IdIndex;
    }
.end annotation


# static fields
.field private static final MOSTACCOUNTNUMBER:I = 0x8

.field private static final ROWACCOUNTNUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CustomAccountRemoteViews"


# instance fields
.field private final RESOURCE_ID:[[I

.field private mBigRemoteViews:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalRemoteViews:Landroid/widget/RemoteViews;

.field private mRequestCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_64

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_74

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_84

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_94

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b4

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    new-array v1, v1, [I

    fill-array-data v1, :array_d4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    .line 79
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x80d001a

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    .line 80
    new-instance v0, Landroid/widget/RemoteViews;

    const v1, 0x80d000e

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    .line 82
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    .line 84
    iput v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    .line 85
    return-void

    :array_64
    .array-data 4
        0x80a0033
        0x80a0035
        0x80a0036
        0x80a0038
        0x80a0037
        0x80a0034
    .end array-data

    :array_74
    .array-data 4
        0x80a0012
        0x80a0014
        0x80a0015
        0x80a0017
        0x80a0016
        0x80a0013
    .end array-data

    :array_84
    .array-data 4
        0x80a002d
        0x80a002f
        0x80a0030
        0x80a0032
        0x80a0031
        0x80a002e
    .end array-data

    :array_94
    .array-data 4
        0x80a0027
        0x80a0029
        0x80a002a
        0x80a002c
        0x80a002b
        0x80a0028
    .end array-data

    :array_a4
    .array-data 4
        0x80a000a
        0x80a000c
        0x80a000d
        0x80a000f
        0x80a000e
        0x80a000b
    .end array-data

    :array_b4
    .array-data 4
        0x80a0004
        0x80a0006
        0x80a0007
        0x80a0009
        0x80a0008
        0x80a0005
    .end array-data

    :array_c4
    .array-data 4
        0x80a0021
        0x80a0023
        0x80a0024
        0x80a0026
        0x80a0025
        0x80a0022
    .end array-data

    :array_d4
    .array-data 4
        0x80a001b
        0x80a001d
        0x80a001e
        0x80a0020
        0x80a001f
        0x80a001c
    .end array-data
.end method

.method private configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V
    .registers 9
    .param p1, "resourceId"    # [I
    .param p2, "accountInfo"    # Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 148
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "CustomAccountRemoteViews"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1d

    .line 149
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v4, p1, v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3b

    .line 151
    :cond_1d
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v0

    if-eqz v0, :cond_36

    .line 152
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v4, p1, v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIconId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3b

    .line 155
    :cond_36
    const-string v0, "--- The icon of account is null ---"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_3b
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/16 v4, 0x8

    if-nez v0, :cond_4c

    .line 159
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_57

    .line 161
    :cond_4c
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 164
    :goto_57
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_66

    .line 165
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_71

    .line 167
    :cond_66
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 170
    :goto_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->isActive()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_a0

    .line 174
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v1, p1, v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_ae

    .line 178
    :cond_a0
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v1, p1, v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 182
    :goto_ae
    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 183
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mRequestCode:I

    invoke-virtual {p2}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x8000000

    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 184
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    aget v2, p1, v3

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 186
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_cd
    return-void
.end method


# virtual methods
.method public configureView()V
    .registers 8

    .line 117
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    const-string v1, "CustomAccountRemoteViews"

    if-eqz v0, :cond_8c

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---configureView---view size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const v3, 0x80a007c

    const/4 v4, 0x4

    if-le v0, v4, :cond_32

    .line 121
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    :cond_32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_33
    iget-object v5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v0, v5, :cond_65

    if-ge v0, v6, :cond_65

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- configure account id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;

    .line 128
    .local v5, "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    iget-object v6, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v6, v6, v0

    .line 129
    .local v6, "resourceId":[I
    invoke-direct {p0, v6, v5}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureAccount([ILcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;)V

    .line 123
    .end local v5    # "accountInfo":Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
    .end local v6    # "resourceId":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 132
    .end local v0    # "i":I
    :cond_65
    const/16 v0, 0x8

    .line 133
    .local v0, "end":I
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v4, :cond_75

    .line 134
    const/4 v0, 0x4

    .line 135
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :cond_75
    iget-object v1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_7b
    if-ge v1, v0, :cond_8b

    .line 138
    iget-object v3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->RESOURCE_ID:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-virtual {v3, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 140
    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_8b
    goto :goto_91

    .line 141
    :cond_8c
    const-string v0, "Data can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_91
    return-void
.end method

.method public getBigRemoteViews()Landroid/widget/RemoteViews;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mBigRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNormalRemoteViews()Landroid/widget/RemoteViews;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mNormalRemoteViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    iput-object p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews;->mData:Ljava/util/List;

    .line 111
    return-void
.end method
