.class public Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
.super Ljava/lang/Object;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeepAliveConfig"
.end annotation


# instance fields
.field dstIp:Ljava/net/InetAddress;

.field dstPort:I

.field enable:Z

.field interval:I

.field srcIp:Ljava/net/InetAddress;

.field srcPort:I

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;)V
    .registers 4
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    .line 84
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "KeepAliveConfig default ctor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 87
    iput v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    .line 89
    iput v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    .line 90
    iput-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 91
    iput v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;ZILjava/lang/String;ILjava/lang/String;I)V
    .registers 9
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "enable"    # Z
    .param p3, "interval"    # I
    .param p4, "srcIp"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstIp"    # Ljava/lang/String;
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 114
    iput p3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    .line 115
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    .line 116
    iput p5, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    .line 117
    invoke-static {p6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 118
    iput p7, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 140
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 141
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 142
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 143
    .local v2, "kac":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    iget v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    iget v4, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    if-ne v3, v4, :cond_3d

    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget-object v4, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    .line 144
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    iget v4, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    if-ne v3, v4, :cond_3d

    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    iget-object v4, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 146
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    iget v4, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    if-ne v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 143
    :goto_3e
    return v0
.end method

.method public getDstIp()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDstPort()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    return v0
.end method

.method public getSrcIp()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrcPort()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    return v0
.end method

.method public isEnabledAndAvailable()Z
    .registers 3

    .line 126
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    const/16 v1, 0x1194

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " srcIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    .line 133
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->maskString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->access$000(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " srcPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dstIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 134
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->maskString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->access$000(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dstPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method
