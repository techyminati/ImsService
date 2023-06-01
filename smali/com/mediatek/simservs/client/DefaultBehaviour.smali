.class public Lcom/mediatek/simservs/client/DefaultBehaviour;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "DefaultBehaviour.java"


# static fields
.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final DEFAULT_BEHAVIOUR_PRESENTATION_RESTRICTED:Ljava/lang/String; = "presentation-restricted"

.field public static final NODE_NAME:Ljava/lang/String; = "default-behaviour"


# instance fields
.field public mPresentationRestricted:Z


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .registers 7
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "domElement"    # Lorg/w3c/dom/Element;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "content":Ljava/lang/String;
    const-string v1, "presentation-restricted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "default-behaviour"

    return-object v0
.end method

.method public isPresentationRestricted()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    return v0
.end method

.method public setPresentationRestricted(Z)V
    .registers 2
    .param p1, "presentationRestricted"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    .line 92
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 77
    const-string v0, "default-behaviour"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 78
    .local v0, "defaultElement":Lorg/w3c/dom/Element;
    iget-boolean v1, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v1, :cond_10

    .line 79
    const-string v1, "presentation-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    goto :goto_15

    .line 81
    :cond_10
    const-string v1, "presentation-not-restricted"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 83
    :goto_15
    return-object v0
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/DefaultBehaviour;->mPresentationRestricted:Z

    if-eqz v0, :cond_7

    .line 62
    const-string v0, "<default-behaviour>presentation-restricted</default-behaviour>"

    return-object v0

    .line 65
    :cond_7
    const-string v0, "<default-behaviour>presentation-not-restricted</default-behaviour>"

    return-object v0
.end method
