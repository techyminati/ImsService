.class public Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;
.super Ljava/lang/Object;
.source "BipCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/BipCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupEventListSettings"
.end annotation


# instance fields
.field public eventList:[I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/cat/BipCmdMessage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    .line 85
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->this$0:Lcom/mediatek/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
