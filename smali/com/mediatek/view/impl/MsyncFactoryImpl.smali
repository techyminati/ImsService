.class public Lcom/mediatek/view/impl/MsyncFactoryImpl;
.super Lcom/mediatek/view/MsyncFactory;
.source "MsyncFactoryImpl.java"


# static fields
.field private static mMsyncExt:Lcom/mediatek/view/MsyncExt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/view/impl/MsyncFactoryImpl;->mMsyncExt:Lcom/mediatek/view/MsyncExt;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/mediatek/view/MsyncFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsyncExt()Lcom/mediatek/view/MsyncExt;
    .registers 2

    .line 11
    sget-object v0, Lcom/mediatek/view/impl/MsyncFactoryImpl;->mMsyncExt:Lcom/mediatek/view/MsyncExt;

    if-nez v0, :cond_b

    .line 12
    new-instance v0, Lcom/mediatek/view/impl/MsyncExtimpl;

    invoke-direct {v0}, Lcom/mediatek/view/impl/MsyncExtimpl;-><init>()V

    sput-object v0, Lcom/mediatek/view/impl/MsyncFactoryImpl;->mMsyncExt:Lcom/mediatek/view/MsyncExt;

    .line 14
    :cond_b
    sget-object v0, Lcom/mediatek/view/impl/MsyncFactoryImpl;->mMsyncExt:Lcom/mediatek/view/MsyncExt;

    return-object v0
.end method
