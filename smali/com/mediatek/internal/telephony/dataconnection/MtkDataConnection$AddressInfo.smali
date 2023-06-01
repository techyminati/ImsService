.class Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;
.super Ljava/lang/Object;
.source "MtkDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressInfo"
.end annotation


# instance fields
.field mIntfName:Ljava/lang/String;

.field mLinkAddr:Landroid/net/LinkAddress;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4
    .param p2, "intfName"    # Ljava/lang/String;
    .param p3, "linkAddr"    # Landroid/net/LinkAddress;

    .line 2005
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->this$0:Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2006
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    .line 2007
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    .line 2008
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/MtkDataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
