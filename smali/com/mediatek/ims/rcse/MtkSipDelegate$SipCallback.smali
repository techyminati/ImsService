.class public Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;
.super Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.source "MtkSipDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/MtkSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SipCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 170
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 9
    .param p1, "message"    # [B

    .line 173
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageReceived new message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 176
    .local v0, "msgStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageReceived msgStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 178
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 179
    .local v2, "startLine":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v3}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageReceived startLine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "headerArray":[Ljava/lang/String;
    const-string v4, ""

    .line 185
    .local v4, "headerSection":Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 186
    iget-object v6, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v6}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "headerArray i: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " string ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v5    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Lcom/mediatek/ims/utils/logger/Logger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageReceived headerSection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/utils/logger/Logger;->info(Ljava/lang/String;)V

    .line 191
    new-instance v1, Landroid/telephony/ims/SipMessage;

    invoke-direct {v1, v2, v4, p1}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 192
    .local v1, "sipMessage":Landroid/telephony/ims/SipMessage;
    iget-object v5, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v5}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$100(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 194
    return-void
.end method
