.class public Lcom/mediatek/anr/AnrAppFactoryImpl;
.super Lcom/mediatek/anr/AnrAppFactory;
.source "AnrAppFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/mediatek/anr/AnrAppFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public makeAnrAppManager()Lcom/mediatek/anr/AnrAppManager;
    .registers 2

    .line 42
    new-instance v0, Lcom/mediatek/anr/AnrAppManagerImpl;

    invoke-direct {v0}, Lcom/mediatek/anr/AnrAppManagerImpl;-><init>()V

    return-object v0
.end method
