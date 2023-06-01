.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Landroid/telephony/data/ApnSetting;

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/MtkDcTracker;->lambda$setInitialAttachApn$2(ILandroid/telephony/data/ApnSetting;)Z

    move-result p1

    return p1
.end method
