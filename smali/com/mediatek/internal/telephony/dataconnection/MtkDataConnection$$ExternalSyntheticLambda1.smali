.class public final synthetic Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

.field public final synthetic f$1:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field public final synthetic f$2:Landroid/telephony/data/DataProfile;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/net/LinkProperties;

.field public final synthetic f$7:Landroid/telephony/data/TrafficDescriptor;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/data/DataProfile;

    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$3:Z

    iput-boolean p5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$4:Z

    iput p6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$6:Landroid/net/LinkProperties;

    iput-object p8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$7:Landroid/telephony/data/TrafficDescriptor;

    iput-boolean p9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$8:Z

    iput-object p10, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$9:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$2:Landroid/telephony/data/DataProfile;

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$3:Z

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$4:Z

    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$6:Landroid/net/LinkProperties;

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$7:Landroid/telephony/data/TrafficDescriptor;

    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$8:Z

    iget-object v9, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$$ExternalSyntheticLambda1;->f$9:Landroid/os/Message;

    move-object v10, p1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual/range {v0 .. v10}, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;->lambda$connect$2$MtkDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;Ljava/lang/Integer;)V

    return-void
.end method
