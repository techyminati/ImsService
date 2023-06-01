.class public Lcom/mediatek/simservs/capability/ServiceCapabilities;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "ServiceCapabilities.java"


# static fields
.field public static final ATT_PROVISIONED:Ljava/lang/String; = "provisioned"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
