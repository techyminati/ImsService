.class public Lcom/mediatek/res/ResOptExtFactoryImpl;
.super Lcom/mediatek/res/ResOptExtFactory;
.source "ResOptExtFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/mediatek/res/ResOptExtFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeResOptExt()Lcom/mediatek/res/ResOptExt;
    .registers 2

    .line 45
    invoke-static {}, Lcom/mediatek/res/ResOptExtImpl;->getInstance()Lcom/mediatek/res/ResOptExtImpl;

    move-result-object v0

    return-object v0
.end method
