.class Lcom/mediatek/xcap/client/XcapClient$1;
.super Ljava/lang/Object;
.source "XcapClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/xcap/client/XcapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/xcap/client/XcapClient;


# direct methods
.method constructor <init>(Lcom/mediatek/xcap/client/XcapClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/mediatek/xcap/client/XcapClient;

    .line 124
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient$1;->this$0:Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 128
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 133
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
