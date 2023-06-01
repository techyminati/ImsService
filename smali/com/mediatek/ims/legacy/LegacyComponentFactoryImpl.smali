.class public Lcom/mediatek/ims/legacy/LegacyComponentFactoryImpl;
.super Lcom/mediatek/ims/plugin/impl/LegacyComponentFactoryBase;
.source "LegacyComponentFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/mediatek/ims/plugin/impl/LegacyComponentFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 60
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/legacy/ss/ImsUtStub;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/legacy/ss/ImsUtStub;

    move-result-object v0

    return-object v0
.end method

.method public makeMtkImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 70
    invoke-static {p1, p2, p3}, Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/legacy/ss/MtkImsUtStub;

    move-result-object v0

    return-object v0
.end method
