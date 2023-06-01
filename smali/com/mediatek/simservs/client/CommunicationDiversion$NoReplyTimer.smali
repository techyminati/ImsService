.class public Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "CommunicationDiversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/CommunicationDiversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"

.field private static final NODE_XML_NAMESPACE_FORMAT:Ljava/lang/String; = "?xmlns(%s=%s)"


# instance fields
.field private mNameSpace:Ljava/lang/String;

.field private mNodeName:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;

    .line 373
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 374
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "initValue"    # I

    .line 385
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 386
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iput p5, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 388
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "this$0"    # Lcom/mediatek/simservs/client/CommunicationDiversion;
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "initValue"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "namespaceUri"    # Ljava/lang/String;

    .line 402
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;-><init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    iput-object p6, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mPrefix:Ljava/lang/String;

    .line 404
    if-eqz p6, :cond_26

    if-eqz p7, :cond_26

    .line 405
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    const/4 v2, 0x1

    aput-object p7, v0, v2

    const-string v3, "?xmlns(%s=%s)"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNameSpace:Ljava/lang/String;

    .line 406
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p6, v0, v1

    const-string v1, "%s:NoReplyTimer"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeName:Ljava/lang/String;

    .line 408
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefix ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[NoReplyTimer]node ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NoReplyTimer]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mPrefix:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "NoReplyTimer"

    :goto_9
    return-object v0
.end method

.method public getValue()I
    .registers 2

    .line 418
    iget v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 5
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 434
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->getNodeUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeUri:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mPrefix:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeUri:Ljava/lang/String;

    .line 441
    :cond_23
    const-string v0, "NoReplyTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContent etag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->saveContent(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 445
    goto :goto_43

    .line 443
    :catch_3f
    move-exception v0

    .line 444
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 446
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :goto_43
    return-void
.end method

.method public setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 422
    iput p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 423
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mPrefix:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mNodeName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    const-string v0, "NoReplyTimer"

    .line 455
    .local v0, "nodeName":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<%s>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</%s>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
