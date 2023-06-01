.class public Lcom/mediatek/widget/DefaultAccountSelectionBar;
.super Ljava/lang/Object;
.source "DefaultAccountSelectionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAccountSelectionBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
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

    .line 29
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p3}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 35
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    .line 37
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    const/high16 v1, 0x8020000

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 40
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    .line 42
    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 43
    return-void
.end method

.method private configureView(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    new-instance v0, Lcom/mediatek/widget/CustomAccountRemoteViews;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/widget/CustomAccountRemoteViews;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    .line 77
    invoke-virtual {v0}, Lcom/mediatek/widget/CustomAccountRemoteViews;->configureView()V

    .line 78
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x80a0048

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In package hide accountBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultAccountSelectionBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public show()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getNormalRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 60
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mCustomAccountRemoteViews:Lcom/mediatek/widget/CustomAccountRemoteViews;

    invoke-virtual {v1}, Lcom/mediatek/widget/CustomAccountRemoteViews;->getBigRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 62
    iget-object v0, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mNotification:Landroid/app/Notification;

    const v2, 0x80a0048

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In package show accountBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/widget/DefaultAccountSelectionBar;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultAccountSelectionBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/widget/CustomAccountRemoteViews$AccountInfo;>;"
    invoke-direct {p0, p1}, Lcom/mediatek/widget/DefaultAccountSelectionBar;->configureView(Ljava/util/List;)V

    .line 52
    return-void
.end method
