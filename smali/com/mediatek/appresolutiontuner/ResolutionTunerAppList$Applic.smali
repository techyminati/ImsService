.class Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
.super Ljava/lang/Object;
.source "ResolutionTunerAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Applic"
.end annotation


# instance fields
.field private filteredWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private scale:F

.field private scaleHeight:F

.field private scaleWidth:F

.field private scalingFlow:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;


# direct methods
.method constructor <init>(Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    .line 177
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->this$0:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFilteredWindow(Ljava/lang/String;)V
    .registers 3
    .param p1, "windowName"    # Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 194
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    return v0
.end method

.method public getScaleHeight()F
    .registers 2

    .line 215
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    return v0
.end method

.method public getScaleWidth()F
    .registers 2

    .line 207
    iget v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    return v0
.end method

.method public getScalingFlow()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    return-object v0
.end method

.method public isFiltered(Ljava/lang/String;)Z
    .registers 3
    .param p1, "windowName"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 198
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    .line 199
    return-void
.end method

.method public setScale(FF)V
    .registers 3
    .param p1, "scaleWidth"    # F
    .param p2, "scaleHeight"    # F

    .line 202
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    .line 203
    iput p2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    .line 204
    return-void
.end method

.method public setScaleHeight(F)V
    .registers 2
    .param p1, "scaleHeight"    # F

    .line 219
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    .line 220
    return-void
.end method

.method public setScaleWidth(F)V
    .registers 2
    .param p1, "scaleWidth"    # F

    .line 211
    iput p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    .line 212
    return-void
.end method

.method public setScalingFlow(Ljava/lang/String;)V
    .registers 2
    .param p1, "scalingFlow"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scale=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scale:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scaleWidthHight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scaleHeight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filteredWindows= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->filteredWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scalingFlow= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->scalingFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
