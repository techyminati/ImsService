.class public Lcom/mediatek/internal/telephony/cat/DnsServerAddress;
.super Ljava/lang/Object;
.source "DnsServerAddress.java"


# instance fields
.field public dnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cat/DnsServerAddress;->dnsAddresses:Ljava/util/List;

    return-void
.end method
