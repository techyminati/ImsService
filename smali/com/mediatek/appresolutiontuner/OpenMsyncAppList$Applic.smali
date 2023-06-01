.class Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
.super Ljava/lang/Object;
.source "OpenMsyncAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Applic"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;


# direct methods
.method constructor <init>(Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    .line 111
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;->this$0:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;->packageName:Ljava/lang/String;

    .line 120
    return-void
.end method
