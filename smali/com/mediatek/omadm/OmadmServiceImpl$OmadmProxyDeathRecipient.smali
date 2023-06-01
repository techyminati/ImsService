.class final Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;
.super Ljava/lang/Object;
.source "OmadmServiceImpl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/OmadmServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OmadmProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omadm/OmadmServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/omadm/OmadmServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/omadm/OmadmServiceImpl;

    .line 210
    iput-object p1, p0, Lcom/mediatek/omadm/OmadmServiceImpl$OmadmProxyDeathRecipient;->this$0:Lcom/mediatek/omadm/OmadmServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 214
    const-string v0, "@M_OmadmServiceImpl"

    const-string v1, "OMADM HIDL serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method
