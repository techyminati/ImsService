.class public Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/policy/Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"


# instance fields
.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/policy/Actions;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/policy/Actions;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/policy/Actions;

    .line 235
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/policy/Actions;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/policy/Actions;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "initValue"    # I

    .line 246
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/policy/Actions;

    .line 247
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput p5, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new NoReplyTimer  mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Actions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 254
    const-string v0, "NoReplyTimer"

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 262
    iput p1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    .line 263
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 283
    const-string v0, "xcap.ns.ss"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "useXcapNs":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 286
    const-string v1, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v2, "ss:NoReplyTimer"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 288
    .local v1, "noReplyTimerElement":Lorg/w3c/dom/Element;
    iget v2, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 289
    return-object v1

    .line 291
    .end local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    :cond_22
    const-string v1, "NoReplyTimer"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 292
    .restart local v1    # "noReplyTimerElement":Lorg/w3c/dom/Element;
    iget v2, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 293
    return-object v1
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/simservs/client/policy/Actions$NoReplyTimer;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
