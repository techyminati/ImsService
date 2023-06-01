.class public Lcom/mediatek/xcap/client/uri/XcapUri;
.super Ljava/lang/Object;
.source "XcapUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;,
        Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
    }
.end annotation


# static fields
.field private static final PATH_SEPARATOR:C = '/'

.field private static final RESOURCE_SELECTOR_SEPARATOR:Ljava/lang/String; = "/~~/"


# instance fields
.field private mDocumentSelector:Ljava/lang/String;

.field private mNodeSelector:Ljava/lang/String;

.field private mXcapRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 414
    if-eqz p0, :cond_c

    .line 417
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 415
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string to encode is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDocumentSelector()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeSelector()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    return-object v0
.end method

.method public getXcapRoot()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    return-object v0
.end method

.method public setDocumentSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .registers 3
    .param p1, "documentSelector"    # Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapDocumentSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setDocumentSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 108
    return-object p0
.end method

.method public setDocumentSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .registers 4
    .param p1, "documentSelector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_c

    .line 123
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    .line 124
    return-object p0

    .line 121
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "document selector must not start with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .registers 3
    .param p1, "nodeSelector"    # Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 141
    return-object p0
.end method

.method public setNodeSelector(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .registers 4
    .param p1, "nodeSelector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_e

    .line 156
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    .line 157
    return-object p0

    .line 154
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "document selector must not start with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setXcapRoot(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri;
    .registers 4
    .param p1, "xcapRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    .line 90
    iput-object p1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    .line 91
    return-object p0

    .line 88
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "xcap root must end with /"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mXcapRoot:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "persist.vendor.mtk.xcap.rawurl"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "/~~/"

    if-nez v1, :cond_42

    .line 169
    const-string v1, "vendor.gsm.radio.ss.rawurl"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_42

    .line 175
    :cond_24
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    const-string v2, "\\+"

    const-string v4, "%2B"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 170
    :cond_42
    :goto_42
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mDocumentSelector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/xcap/client/uri/XcapUri;->mNodeSelector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_53
    :goto_53
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
