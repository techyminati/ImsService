.class public Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;
.super Ljava/lang/Object;
.source "MtkSpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualSpnByImsi"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public pattern:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->this$0:Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/mediatek/internal/telephony/uicc/MtkSpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    .line 103
    return-void
.end method
