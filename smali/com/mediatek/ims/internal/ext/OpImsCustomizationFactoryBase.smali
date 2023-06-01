.class public Lcom/mediatek/ims/internal/ext/OpImsCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpImsCustomizationFactoryBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsManagerExt(Landroid/content/Context;)Lcom/mediatek/ims/internal/ext/IImsManagerExt;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    new-instance v0, Lcom/mediatek/ims/internal/ext/ImsManagerExt;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ext/ImsManagerExt;-><init>()V

    return-object v0
.end method
