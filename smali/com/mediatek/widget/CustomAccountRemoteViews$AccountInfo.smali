.class public Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;
.super Ljava/lang/Object;
.source "CustomAccountRemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/CustomAccountRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActive:Z

.field private mLabel:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V
    .registers 7
    .param p1, "iconId"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "isActive"    # Z

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    .line 230
    iput-object p2, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 231
    iput-object p3, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    .line 233
    iput-object p5, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    .line 234
    iput-boolean p6, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 235
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 12
    .param p1, "iconId"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 216
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 12
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 204
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 206
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 254
    return-object v0

    .line 256
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIconId:I

    if-eqz v0, :cond_5

    .line 243
    return v0

    .line 245
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    return v0
.end method

.method public setActiveStatus(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 296
    iput-boolean p1, p0, Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;->mIsActive:Z

    .line 297
    return-void
.end method
