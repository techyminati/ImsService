.class public Lcom/mediatek/simservs/client/TerminatingIdentityPresentation;
.super Lcom/mediatek/simservs/client/SimservType;
.source "TerminatingIdentityPresentation.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "terminating-identity-presentation"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "documentUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/client/SimservType;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "terminating-identity-presentation"

    return-object v0
.end method

.method public initServiceInstance(Lorg/w3c/dom/Document;)V
    .registers 2
    .param p1, "domDoc"    # Lorg/w3c/dom/Document;

    .line 35
    return-void
.end method
