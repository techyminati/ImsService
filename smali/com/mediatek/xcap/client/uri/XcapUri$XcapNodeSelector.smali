.class public Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
.super Ljava/lang/Object;
.source "XcapUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/uri/XcapUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XcapNodeSelector"
.end annotation


# instance fields
.field private final mNodeSelector:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "elementName"    # Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 373
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 394
    return-void
.end method


# virtual methods
.method public queryByAttrName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 4
    .param p1, "attrName"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 288
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    :cond_f
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 4
    .param p1, "elementName"    # Ljava/lang/String;

    .line 268
    if-nez p1, :cond_3

    .line 269
    return-object p0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 273
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    :cond_12
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;I)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 5
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 339
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 340
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_f
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 5
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 304
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_f
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0, p2}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByAttrName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    .line 308
    return-object p0
.end method

.method public queryByNodeName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 6
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "attrValue"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 323
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    :cond_f
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    return-object p0
.end method

.method public queryByNodeNameWithPos(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    .registers 7
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "attrValue"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 359
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_f
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->mNodeSelector:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
