.class public Lcom/mediatek/view/impl/SurfaceFactoryImpl;
.super Lcom/mediatek/view/SurfaceFactory;
.source "SurfaceFactoryImpl.java"


# static fields
.field private static mSurfaceExt:Lcom/mediatek/view/SurfaceExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/view/impl/SurfaceFactoryImpl;->mSurfaceExt:Lcom/mediatek/view/SurfaceExt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/mediatek/view/SurfaceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getSurfaceExt()Lcom/mediatek/view/SurfaceExt;
    .registers 2

    .line 11
    sget-object v0, Lcom/mediatek/view/impl/SurfaceFactoryImpl;->mSurfaceExt:Lcom/mediatek/view/SurfaceExt;

    if-nez v0, :cond_b

    .line 12
    new-instance v0, Lcom/mediatek/view/impl/SurfaceExtimpl;

    invoke-direct {v0}, Lcom/mediatek/view/impl/SurfaceExtimpl;-><init>()V

    sput-object v0, Lcom/mediatek/view/impl/SurfaceFactoryImpl;->mSurfaceExt:Lcom/mediatek/view/SurfaceExt;

    .line 14
    :cond_b
    sget-object v0, Lcom/mediatek/view/impl/SurfaceFactoryImpl;->mSurfaceExt:Lcom/mediatek/view/SurfaceExt;

    return-object v0
.end method
