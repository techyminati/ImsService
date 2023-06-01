.class public Lcom/mediatek/imsplugin/ExtensionPluginFactoryImpl;
.super Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;
.source "ExtensionPluginFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const-string v0, "ExtensionPluginFactoryImpl"

    const-string v1, "makeImsCallPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/mediatek/imsplugin/ImsCallPluginImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/imsplugin/ImsCallPluginImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lcom/mediatek/imsplugin/ExtensionPluginFactoryImpl;->makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;

    move-result-object p1

    return-object p1
.end method

.method public makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const-string v0, "ExtensionPluginFactoryImpl"

    const-string v1, "makeImsSSExtPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lcom/mediatek/imsplugin/ImsSSExtPluginImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/imsplugin/ImsSSExtPluginImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 70
    const-string v0, "ExtensionPluginFactoryImpl"

    const-string v1, "makeImsSelfActivator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/imsplugin/ImsSelfActivatorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)V

    return-object v0
.end method
