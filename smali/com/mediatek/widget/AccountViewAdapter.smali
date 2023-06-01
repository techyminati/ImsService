.class public Lcom/mediatek/widget/AccountViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/AccountViewAdapter$AccountElements;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/mediatek/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 54
    iget-object v0, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 75
    if-nez p2, :cond_a

    .line 76
    new-instance v0, Lcom/mediatek/widget/AccountItemView;

    iget-object v1, p0, Lcom/mediatek/widget/AccountViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .local v0, "view":Lcom/mediatek/widget/AccountItemView;
    goto :goto_d

    .line 78
    .end local v0    # "view":Lcom/mediatek/widget/AccountItemView;
    :cond_a
    move-object v0, p2

    check-cast v0, Lcom/mediatek/widget/AccountItemView;

    .line 80
    .restart local v0    # "view":Lcom/mediatek/widget/AccountItemView;
    :goto_d
    invoke-virtual {p0, p1}, Lcom/mediatek/widget/AccountViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/widget/AccountViewAdapter$AccountElements;

    .line 81
    .local v1, "elements":Lcom/mediatek/widget/AccountViewAdapter$AccountElements;
    invoke-virtual {v0, v1}, Lcom/mediatek/widget/AccountItemView;->setViewItem(Lcom/mediatek/widget/AccountViewAdapter$AccountElements;)V

    .line 82
    return-object v0
.end method

.method public updateData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/AccountViewAdapter$AccountElements;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/AccountViewAdapter$AccountElements;>;"
    iput-object p1, p0, Lcom/mediatek/widget/AccountViewAdapter;->mData:Ljava/util/List;

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/widget/AccountViewAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
