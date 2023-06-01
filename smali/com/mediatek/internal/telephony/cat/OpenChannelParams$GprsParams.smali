.class public Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;
.super Ljava/lang/Object;
.source "BipCommandParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/OpenChannelParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GprsParams"
.end annotation


# instance fields
.field public accessPointName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

.field public userLogin:Ljava/lang/String;

.field public userPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/OpenChannelParams;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "login"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->this$0:Lcom/mediatek/internal/telephony/cat/OpenChannelParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/mediatek/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    .line 85
    return-void
.end method
