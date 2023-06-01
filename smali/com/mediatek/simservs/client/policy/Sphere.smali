.class public Lcom/mediatek/simservs/client/policy/Sphere;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Sphere.java"


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "sphere"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "sphere"

    return-object v0
.end method
