.class Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;
.super Landroid/os/Handler;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final PAU_END_FLAG_FIELD:Ljava/lang/String; = ">"

.field private static final PAU_NAME_FIELD:Ljava/lang/String; = "<name:"

.field private static final PAU_NUMBER_FIELD:Ljava/lang/String; = "<tel:"

.field private static final PAU_SIP_NUMBER_FIELD:Ljava/lang/String; = "<sip:"

.field private static final PAU_VERSTAT_FIELD:Ljava/lang/String; = "verstat="


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1533
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1534
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1535
    return-void
.end method

.method private convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/ims/ImsCallSessionProxy$User;",
            ">;)",
            "Landroid/telephony/ims/ImsConferenceState;"
        }
    .end annotation

    .line 3161
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 3162
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3163
    const/4 v1, 0x1

    .line 3164
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3165
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3166
    .local v3, "userInfo":Landroid/os/Bundle;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v4, v4, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 3167
    .local v4, "userAddr":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 3168
    .local v5, "endPoint":Ljava/lang/String;
    const-string v6, "user"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    const-string v7, "display-text"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "oppo_config_ignore_display_text_bool"

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10900(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v6

    .line 3173
    .local v6, "needIgnore":Z
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packUserInfo needIgnore "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", displayText "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v10, v10, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userAddr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3173
    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 3175
    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3176
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    :cond_0
    const-string v7, "endpoint"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    iget-object v8, v8, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    const-string v9, "status"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    const-string v8, "_"

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 3187
    :cond_1
    iget-object v7, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3182
    :cond_2
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    iget-object v7, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3184
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10800(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    add-int/lit8 v1, v1, 0x1

    .line 3164
    .end local v3    # "userInfo":Landroid/os/Bundle;
    .end local v4    # "userAddr":Ljava/lang/String;
    .end local v5    # "endPoint":Ljava/lang/String;
    .end local v6    # "needIgnore":Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3191
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11002(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3192
    return-object v0
.end method

.method private getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pau"    # Ljava/lang/String;

    .line 1539
    const-string v0, "\\\\"

    const-string v1, "\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1540
    const-string v0, "<ascii_34>"

    const-string v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1541
    .local v0, "newPau":Ljava/lang/String;
    const-string v1, ""

    .line 1542
    .local v1, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1543
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x2

    const-string v4, "getDisplayNameFromPau() : pau is null !"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1544
    return-object v1

    .line 1546
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1547
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1548
    .local v3, "aChar":C
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 1549
    goto :goto_1

    .line 1551
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1546
    .end local v3    # "aChar":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1553
    .end local v2    # "index":I
    :cond_2
    :goto_1
    return-object v1
.end method

.method private getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .line 1558
    const-string v0, ""

    .line 1559
    .local v0, "value":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1563
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1564
    return-object v0

    .line 1567
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1568
    .local v1, "startIndex":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1569
    const-string v2, ">"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1570
    .local v2, "endIndex":I
    if-gez v2, :cond_2

    .line 1571
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1573
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1575
    :goto_0
    return-object v0

    .line 1560
    .end local v1    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_3
    :goto_1
    return-object v0
.end method

.method private getWfcDisconnectCause(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 3434
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WFC] getWfcDisconnectCause mRatType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3435
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 3440
    :cond_0
    const/4 v0, 0x0

    .line 3442
    .local v0, "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/wfo/IWifiOffloadService;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 3445
    goto :goto_0

    .line 3443
    :catch_0
    move-exception v3

    .line 3444
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v5, 0x5

    const-string v6, "getWfcDisconnectCause() : RemoteException in getWfcDisconnectCause()"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3446
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    .line 3447
    return v1

    .line 3449
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/DisconnectCause;->getErrorCause()I

    move-result v3

    .line 3450
    .local v3, "wfcErrorCause":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WFC] wfcErrorCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3451
    const/16 v2, 0x7d1

    if-ne v3, v2, :cond_2

    .line 3452
    const v1, 0xf00b

    return v1

    .line 3453
    :cond_2
    const/16 v2, 0x7d3

    if-eq v3, v2, :cond_5

    const/16 v2, 0x7d5

    if-ne v3, v2, :cond_3

    goto :goto_1

    .line 3456
    :cond_3
    const/16 v2, 0x7d4

    if-ne v3, v2, :cond_4

    .line 3458
    const v1, 0xf00e

    return v1

    .line 3460
    :cond_4
    return v1

    .line 3455
    :cond_5
    :goto_1
    const v1, 0xf00d

    return v1

    .line 3437
    .end local v0    # "disconnectCause":Lcom/mediatek/wfo/DisconnectCause;
    .end local v3    # "wfcErrorCause":I
    :cond_6
    :goto_2
    return v1
.end method

.method private handleDialResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3106
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3115
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v3, "handleDialResult()"

    invoke-static {v0, v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 3117
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 3118
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3119
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v3, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 3120
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    invoke-interface {v1, v3, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->getLastCallFailCause(ILandroid/os/Message;)V

    .line 3121
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3123
    .end local v0    # "result":Landroid/os/Message;
    :cond_2
    return-void

    .line 3108
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x2

    const-string v2, "handleDialResult() : ar or mListener is null"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3111
    return-void
.end method

.method private handleEconfIndication([Ljava/lang/String;)V
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .line 2913
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 2914
    .local v1, "confCallId":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v3, p1, v2

    .line 2915
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x5

    aget-object v4, p1, v4

    .line 2918
    .local v4, "joinedCallId":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : receive EVENT_ECONF_RESULT_INDICATION mCallId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", conf_call_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-object v8, p1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", number: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x2

    aget-object v10, p1, v9

    .line 2920
    invoke-static {v8, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", joined_call_id:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2918
    invoke-static {v5, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2924
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2925
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9802(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2928
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eq v2, v7, :cond_1

    .line 2929
    return-void

    .line 2934
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2935
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2936
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v2, :cond_2

    .line 2937
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v6, 0x7

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2940
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEconfIndication() : call id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is merged successfully"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2946
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2948
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 2949
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/ims/DefaultConferenceHandler;->addFirstMergeParticipant(Ljava/lang/String;)V

    .line 2951
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10008(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2952
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2953
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2955
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    if-ne v2, v9, :cond_c

    .line 2956
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, " successful"

    goto :goto_0

    :cond_5
    const-string v2, " failed"

    .line 2958
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEconfIndication() : 3 way conference merge result is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2961
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2962
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/DefaultConferenceHandler;->isConferenceActive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2963
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10200(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2966
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2967
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 2970
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2971
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v5, :cond_7

    .line 2972
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2976
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 2977
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    goto :goto_1

    .line 2981
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2983
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2984
    .local v5, "confCallIdInt":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->terminate(I)V

    .line 2989
    .end local v5    # "confCallIdInt":I
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10002(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2990
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2991
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10102(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2992
    .end local v2    # "ret":Ljava/lang/String;
    goto :goto_2

    .line 2995
    :cond_a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2996
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEconfIndication() : ConfCreated successed"

    invoke-static {v0, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2998
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10200(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto :goto_2

    .line 3000
    :cond_b
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEconfIndication() : ConfCreated failed"

    invoke-static {v0, v2, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3002
    invoke-direct {p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 3005
    :cond_c
    :goto_2
    return-void
.end method

.method private handleEctIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3052
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication()"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3053
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3054
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3062
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3063
    .local v0, "result":[I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    aget v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_3

    .line 3067
    :cond_1
    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    if-nez v2, :cond_3

    .line 3069
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3070
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3072
    :catch_0
    move-exception v2

    .line 3073
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferFailed()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3075
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 3076
    :cond_3
    aget v2, v0, v1

    if-ne v2, v1, :cond_5

    .line 3078
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3079
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3084
    :cond_4
    goto :goto_1

    .line 3081
    :catch_1
    move-exception v2

    .line 3082
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "RuntimeException callSessionTransferred()"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3090
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3092
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    aget v1, v0, v1

    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 3095
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3099
    goto :goto_2

    .line 3096
    :catch_2
    move-exception v1

    .line 3097
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleMessage() : RemoteException for ECT"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3102
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10402(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 3103
    return-void

    .line 3064
    :cond_7
    :goto_3
    return-void

    .line 3056
    .end local v0    # "result":[I
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "handleEctIndication() : ar or mMtkImsCallSessionProxy is null"

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3059
    return-void
.end method

.method private handleEctResult(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3008
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3016
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 3018
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer failed!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3021
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3024
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3025
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3027
    :catch_0
    move-exception v0

    .line 3028
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferFailed()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3030
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    goto :goto_1

    .line 3033
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleEctResult() : explicit call transfer succeeded!!"

    invoke-static {v1, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3038
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3039
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3044
    :cond_3
    goto :goto_1

    .line 3041
    :catch_1
    move-exception v0

    .line 3042
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "RuntimeException callSessionTransferred()"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3046
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 3010
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleEctResult() : ar or mListener is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3013
    return-void
.end method

.method private handleImsConferenceIndication(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3126
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3127
    return-void

    .line 3129
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 3131
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3134
    return-void

    .line 3135
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3137
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleImsConferenceIndication() : mListener is null, cache info"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3140
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10702(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 3141
    return-void

    .line 3143
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 3144
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3145
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->convertToImsConferenceState(Ljava/util/ArrayList;)Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    .line 3147
    .local v0, "confState":Landroid/telephony/ims/ImsConferenceState;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3151
    goto :goto_0

    .line 3148
    :catch_0
    move-exception v2

    .line 3149
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v4, 0x5

    const-string v5, "RuntimeException callSessionConferenceStateUpdated()"

    invoke-static {v3, v5, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3152
    .end local v0    # "confState":Landroid/telephony/ims/ImsConferenceState;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 3154
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleImsConferenceIndication() : auto terminate"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3156
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 3158
    :goto_1
    return-void
.end method

.method private handlePauUpdate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pau"    # Ljava/lang/String;

    .line 3363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3364
    const/4 v0, 0x0

    return v0

    .line 3367
    :cond_0
    const-string v0, "<sip:"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3372
    .local v0, "sipNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "config_oppo_check_pau_bool"

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10900(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v1

    .line 3373
    .local v1, "isFeatureOn":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 3374
    invoke-static {p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3378
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "remote_uri"

    invoke-virtual {v2, v3, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateAddressFromPau(Ljava/lang/String;)Z

    move-result v2

    .line 3380
    .local v2, "ret":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateDisplayNameFromPau(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3381
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateVerstatFromPau(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 3382
    return v2
.end method

.method private handleRttAudioIndication(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3643
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3648
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3649
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3652
    :cond_1
    const/4 v2, 0x1

    aget v3, v0, v2

    .line 3653
    .local v3, "status":I
    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 3654
    .local v4, "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRttAudioIndication audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3656
    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v4, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 3657
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3658
    return-void

    .line 3650
    .end local v3    # "status":I
    .end local v4    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_4
    :goto_1
    return-void

    .line 3644
    .end local v0    # "result":[I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x5

    const-string v2, "handleRttAudioIndication ar or mListener is null"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3646
    return-void
.end method

.method private handleRttCapabilityIndication(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3469
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    .line 3470
    .local v0, "callId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 3471
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v2, 0x5

    const-string v3, "handleRttCapabilityIndication ar is null"

    invoke-static {v1, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3473
    return-void

    .line 3476
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 3477
    .local v1, "result":[I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 3478
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    .line 3481
    :cond_1
    const/4 v3, 0x1

    aget v4, v1, v3

    .line 3482
    .local v4, "localCapability":I
    const/4 v5, 0x2

    aget v6, v1, v5

    .line 3483
    .local v6, "remoteCapability":I
    const/4 v7, 0x3

    aget v7, v1, v7

    .line 3484
    .local v7, "localTextStatus":I
    const/4 v8, 0x4

    aget v8, v1, v8

    .line 3485
    .local v8, "realRemoteTextCapability":I
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleRttCapabilityIndication local cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " remo status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " local status= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " remo cap= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3491
    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-ne v6, v3, :cond_2

    if-ne v7, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v9, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3493
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11500(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 3495
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRttCapabilityIndication mIsRttEnabledForCallSession: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3496
    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3495
    invoke-static {v2, v3, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3498
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2, v4, v6, v7, v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyTextCapabilityChanged(IIII)V

    .line 3502
    const/4 v2, 0x0

    .line 3503
    .local v2, "status":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3504
    const/4 v2, 0x1

    .line 3506
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3507
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3510
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3513
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11600(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 3514
    return-void

    .line 3479
    .end local v2    # "status":I
    .end local v4    # "localCapability":I
    .end local v6    # "remoteCapability":I
    .end local v7    # "localTextStatus":I
    .end local v8    # "realRemoteTextCapability":I
    :cond_4
    :goto_0
    return-void
.end method

.method private handleRttECCRedialEvent()V
    .locals 3

    .line 3517
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "notifyRttECCRedialEvent"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3518
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 3519
    return-void

    .line 3521
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyRttECCRedialEvent()V

    .line 3522
    return-void
.end method

.method private handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3600
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3605
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3606
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3610
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 3611
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttModifyRequestReceived() : RTT and video not switchable"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3613
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 3614
    return-void

    .line 3617
    :cond_2
    const/4 v2, 0x1

    aget v4, v0, v2

    .line 3618
    .local v4, "status":I
    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 3619
    .local v5, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRttModifyRequestReceived status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3621
    if-ne v4, v2, :cond_3

    .line 3622
    iget-object v1, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 3624
    :cond_3
    iget-object v3, v5, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3626
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->sendRttModifyResponse(Z)V

    .line 3629
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3630
    return-void

    .line 3607
    .end local v4    # "status":I
    .end local v5    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    :cond_4
    :goto_1
    return-void

    .line 3601
    .end local v0    # "result":[I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x5

    const-string v2, "handleRttModifyRequestReceived ar or mListener is null"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3603
    return-void
.end method

.method private handleRttModifyResponse(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3566
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3571
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 3572
    .local v0, "result":[I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 3575
    :cond_1
    const/4 v1, 0x1

    aget v1, v0, v1

    .line 3576
    .local v1, "response":I
    const/4 v2, 0x0

    .line 3582
    .local v2, "status":I
    const/4 v3, 0x2

    if-nez v1, :cond_2

    .line 3583
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleRttModifyResponse success"

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3584
    const/4 v2, 0x1

    goto :goto_0

    .line 3586
    :cond_2
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRttModifyResponse fail status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3588
    const/4 v2, 0x3

    .line 3591
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    .line 3592
    return-void

    .line 3573
    .end local v1    # "response":I
    .end local v2    # "status":I
    :cond_3
    :goto_1
    return-void

    .line 3567
    .end local v0    # "result":[I
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x5

    const-string v2, "handleRttModifyResponse ar or mListener is null"

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3569
    return-void
.end method

.method private handleRttTextReceived(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 3525
    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 3526
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "handleRttTextReceived ar is null"

    invoke-static {v1, v2, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3527
    return-void

    .line 3529
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 3530
    .local v1, "textReceived":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    aget-object v4, v1, v3

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 3534
    :cond_1
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3535
    .local v5, "targetCallid":I
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3536
    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto/16 :goto_2

    .line 3539
    :cond_2
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received call id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v3

    .line 3540
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " textMessage = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3541
    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual len = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v1, v4

    .line 3542
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3539
    invoke-static {v6, v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3544
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 3550
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/RttTextEncoder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/RttTextEncoder;->getUnicodeFromUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3551
    .local v2, "decodeText":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 3557
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 3558
    return-void

    .line 3552
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "handleRttTextReceived: decodeText length is 0"

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3554
    return-void

    .line 3545
    .end local v2    # "decodeText":Ljava/lang/String;
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "handleRttTextReceived: length is 0"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3547
    return-void

    .line 3537
    :cond_7
    :goto_2
    return-void

    .line 3531
    .end local v5    # "targetCallid":I
    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "textReceived is null"

    invoke-static {v2, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3532
    return-void
.end method

.method private imsReasonInfoCodeFromRilReasonCode(I)I
    .locals 7
    .param p1, "causeCode"    # I

    .line 1579
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsReasonInfoCodeFromRilReasonCode() : causeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1582
    const/16 v0, 0x1fe

    const/16 v1, 0x162

    const/16 v3, 0x154

    sparse-switch p1, :sswitch_data_0

    .line 1690
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getWfcDisconnectCause(I)I

    move-result v1

    .line 1691
    .local v1, "wfcReason":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 1692
    return v1

    .line 1676
    .end local v1    # "wfcReason":I
    :sswitch_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    const/16 v0, 0x5ea

    return v0

    .line 1679
    :cond_0
    const v0, 0xf001

    return v0

    .line 1604
    :sswitch_1
    const/16 v0, 0x5e8

    return v0

    .line 1683
    :sswitch_2
    const/16 v0, 0xf3

    return v0

    .line 1606
    :sswitch_3
    const/16 v0, 0xf1

    return v0

    .line 1602
    :sswitch_4
    const/16 v0, 0x66

    return v0

    .line 1668
    :sswitch_5
    const/16 v0, 0x14f

    return v0

    .line 1672
    :sswitch_6
    const/16 v0, 0x156

    return v0

    .line 1599
    :sswitch_7
    const/16 v0, 0x8d

    return v0

    .line 1609
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1611
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$700(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/wfo/IWifiOffloadService;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1612
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "imsReasonInfoCodeFromRilReasonCode() : Rat is Wifi, Wifi is disconnected, ret=SIGNAL_LOST"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    const v0, 0xf00b

    return v0

    .line 1617
    :cond_1
    goto :goto_0

    .line 1615
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x5

    const-string v4, "imsReasonInfoCodeFromRilReasonCode() : RemoteException in isWifiConnected()"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1621
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v1

    .line 1655
    :sswitch_9
    const/16 v0, 0x14c

    return v0

    .line 1591
    :sswitch_a
    return v3

    .line 1588
    :sswitch_b
    const/16 v0, 0x150

    return v0

    .line 1651
    :sswitch_c
    const/16 v0, 0x160

    return v0

    .line 1596
    :sswitch_d
    const/16 v0, 0x15f

    return v0

    .line 1639
    :sswitch_e
    return v0

    .line 1627
    :sswitch_f
    return v1

    .line 1644
    :sswitch_10
    const/16 v0, 0x151

    return v0

    .line 1636
    :sswitch_11
    const/16 v0, 0x169

    return v0

    .line 1633
    :sswitch_12
    const/16 v0, 0x1f6

    return v0

    .line 1630
    :sswitch_13
    const/16 v0, 0xca

    return v0

    .line 1584
    :sswitch_14
    const/16 v0, 0x152

    return v0

    .line 1665
    :sswitch_15
    const/16 v0, 0x153

    return v0

    .line 1659
    :sswitch_16
    return v3

    .line 1662
    :sswitch_17
    const/16 v0, 0x14d

    return v0

    .line 1642
    :sswitch_18
    const/16 v0, 0x5eb

    return v0

    .line 1695
    .restart local v1    # "wfcReason":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsService;->getImsServiceState(I)I

    move-result v3

    .line 1697
    .local v3, "serviceState":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsReasonInfoCodeFromRilReasonCode() : serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1700
    const/4 v2, 0x3

    if-ne v3, v2, :cond_4

    .line 1701
    const/16 v0, 0x6f

    return v0

    .line 1702
    :cond_4
    const/4 v2, 0x1

    if-ne v3, v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1703
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1704
    const/16 v0, 0x6a

    return v0

    .line 1705
    :cond_5
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6

    .line 1706
    return v0

    .line 1710
    :cond_6
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_18
        0x3 -> :sswitch_17
        0x6 -> :sswitch_16
        0x8 -> :sswitch_15
        0x11 -> :sswitch_14
        0x12 -> :sswitch_13
        0x13 -> :sswitch_12
        0x15 -> :sswitch_11
        0x1c -> :sswitch_10
        0x1d -> :sswitch_f
        0x1f -> :sswitch_e
        0x22 -> :sswitch_d
        0x26 -> :sswitch_c
        0x29 -> :sswitch_b
        0x2a -> :sswitch_c
        0x2b -> :sswitch_f
        0x2c -> :sswitch_b
        0x2f -> :sswitch_c
        0x31 -> :sswitch_a
        0x37 -> :sswitch_9
        0x39 -> :sswitch_9
        0x3a -> :sswitch_8
        0x3f -> :sswitch_c
        0x41 -> :sswitch_16
        0x44 -> :sswitch_7
        0x45 -> :sswitch_d
        0x51 -> :sswitch_6
        0x58 -> :sswitch_c
        0x66 -> :sswitch_5
        0x6f -> :sswitch_d
        0x7f -> :sswitch_f
        0xf0 -> :sswitch_4
        0xf1 -> :sswitch_3
        0xf3 -> :sswitch_2
        0x104 -> :sswitch_1
        0x17c -> :sswitch_0
    .end sparse-switch
.end method

.method private isCallModeUpdated(II)Z
    .locals 7
    .param p1, "callMode"    # I
    .param p2, "videoState"    # I

    .line 1876
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallModeUpdated() : callMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "videoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1877
    const/4 v0, 0x0

    .line 1878
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1880
    .local v1, "oldCallMode":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 1881
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2402(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 1882
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$300(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 1883
    const/4 v0, 0x1

    .line 1886
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 1888
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    iget v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v3, v1, :cond_1

    .line 1889
    const/4 v0, 0x1

    .line 1891
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1892
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    iget v4, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 1897
    :cond_1
    sget-object v3, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1898
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v3

    .line 1900
    .local v3, "supportUpgradeWhenVoiceConf":Z
    const/16 v4, 0x18

    const/16 v5, 0x16

    if-eq p1, v5, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    if-nez v3, :cond_3

    .line 1902
    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1905
    :cond_3
    const/16 v6, 0x14

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_4

    const/16 v4, 0x19

    if-ne p1, v4, :cond_5

    .line 1907
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1908
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : Start setUIMode old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1909
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V

    .line 1910
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallModeUpdated() : End setUIMode new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    iget v6, v6, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1914
    :cond_5
    return v0
.end method

.method private notifyMultipartyStateChanged(I)V
    .locals 5
    .param p1, "callMode"    # I

    .line 3230
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    move-result v0

    .line 3231
    .local v0, "stateChanged":Z
    if-nez v0, :cond_0

    .line 3232
    return-void

    .line 3235
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultipartyStateChanged() : isMultiparty(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3236
    invoke-virtual {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 3235
    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3239
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3241
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    goto :goto_0

    .line 3242
    :catch_0
    move-exception v1

    .line 3243
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x5

    const-string v4, "RuntimeException callSessionMultipartyStateChanged()"

    invoke-static {v2, v4, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3247
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method

.method private retrieveMergeFail()V
    .locals 9

    .line 1918
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1925
    :cond_0
    const/4 v0, 0x0

    .line 1926
    .local v0, "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v1, 0x0

    .line 1927
    .local v1, "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const/4 v2, 0x0

    .line 1928
    .local v2, "isNotifyMergeFail":Z
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 1930
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 1932
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "retrieveMergeFail()"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1933
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1934
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 1937
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1938
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v1

    .line 1941
    :cond_2
    const/16 v3, 0xd3

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1943
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieveMergeFail() : MergeCallInfo: callId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " call status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " MergedCallInfo: callId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1947
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_3

    .line 1950
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1952
    :cond_3
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_4

    .line 1956
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two active call and hold merged call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1958
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1959
    .local v3, "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 1961
    .end local v3    # "result":Landroid/os/Message;
    goto/16 :goto_0

    :cond_4
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v4, v6, :cond_5

    .line 1965
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : two hold call and resume merge call"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1967
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1968
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 1969
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 1971
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 1973
    :cond_6
    if-eqz v0, :cond_7

    if-nez v1, :cond_c

    .line 1976
    :cond_7
    if-eqz v0, :cond_9

    .line 1978
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merge call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1980
    iget-object v4, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_8

    .line 1981
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1982
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->resume(ILandroid/os/Message;)V

    .line 1983
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 1984
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 1987
    :cond_9
    if-eqz v1, :cond_b

    .line 1989
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "retrieveMergeFail() : only merged call is left"

    invoke-static {v4, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1991
    iget-object v4, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v4, v5, :cond_a

    .line 1992
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1993
    .restart local v3    # "result":Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->hold(ILandroid/os/Message;)V

    .line 1994
    .end local v3    # "result":Landroid/os/Message;
    goto :goto_0

    .line 1995
    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    .line 2001
    :cond_b
    const/4 v2, 0x1

    .line 2005
    :cond_c
    :goto_0
    if-eqz v2, :cond_d

    .line 2006
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2007
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2009
    :cond_d
    return-void

    .line 1919
    .end local v0    # "mergeCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "mergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v2    # "isNotifyMergeFail":Z
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveMergeFail() : Shouldn\'t retrieve merge fail, mIsMerging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1920
    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRetrievingMergeFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 1919
    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1922
    return-void
.end method

.method private updateAddressFromPau(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pau"    # Ljava/lang/String;

    .line 3286
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 3287
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "updateAddressFromPau() : MO call, should not update addr by PAU"

    invoke-static {v0, v3, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3289
    return v1

    .line 3292
    :cond_0
    const/4 v0, 0x0

    .line 3294
    .local v0, "changed":Z
    const-string v3, "<sip:"

    invoke-direct {p0, p1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3295
    .local v3, "sipField":Ljava/lang/String;
    const-string v4, "<tel:"

    invoke-direct {p0, p1, v4}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3297
    .local v4, "telField":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAddressFromPau() : updatePau()... telNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3298
    invoke-static {v7, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sipNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3297
    invoke-static {v5, v6, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$11200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3303
    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object v5, v4

    .line 3304
    .local v5, "addr":Ljava/lang/String;
    :goto_0
    const-string v6, "[;@,]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3305
    .local v6, "split":[Ljava/lang/String;
    aget-object v1, v6, v1

    .line 3307
    .end local v5    # "addr":Ljava/lang/String;
    .local v1, "addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    const-string v7, "oi"

    invoke-virtual {v5, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3308
    .local v5, "currentOI":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3309
    invoke-static {v5, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3310
    const/4 v0, 0x1

    .line 3311
    iget-object v8, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    invoke-virtual {v8, v7, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAddressFromPau() : updatePau()... addr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3313
    invoke-static {v9, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3312
    invoke-static {v7, v8, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3316
    :cond_2
    return v0
.end method

.method private updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3413
    const/4 v0, 0x0

    .line 3415
    .local v0, "changed":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3416
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3418
    .local v1, "curOI":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3420
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallDisplayFromNumberOrPau() : number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3421
    invoke-static {v5, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 3420
    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3423
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3424
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "remote_uri"

    invoke-virtual {v2, v3, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    const/4 v0, 0x1

    .line 3427
    :cond_0
    return v0

    .line 3430
    .end local v1    # "curOI":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private updateDisplayNameFromPau(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pau"    # Ljava/lang/String;

    .line 3337
    const/4 v0, 0x0

    .line 3338
    .local v0, "changed":Z
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3339
    .local v1, "displayName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    const-string v3, "cna"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3340
    .local v2, "currentDisplayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3341
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    const-string v5, "cnap"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3343
    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3346
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-virtual {p0, v4, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isAllowCNAP(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3347
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3349
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "enable CNAP"

    invoke-static {v4, v7, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3350
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3352
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayNameFromPau() : diaplayName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3354
    const/4 v0, 0x1

    .line 3359
    :cond_1
    :goto_0
    return v0
.end method

.method private updateImsReasonInfo(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 1717
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 1718
    .local v0, "sipMessage":[Ljava/lang/String;
    if-eqz v0, :cond_12

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_12

    const/4 v2, 0x4

    aget-object v3, v0, v2

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1719
    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 1722
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsReasonInfo() : receive sip method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cause = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason header = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 1725
    new-instance v1, Lcom/mediatek/ims/SipMessage;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/SipMessage;-><init>([Ljava/lang/String;)V

    .line 1727
    .local v1, "msg":Lcom/mediatek/ims/SipMessage;
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V

    .line 1730
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->getImsReasonInfo(Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1731
    .local v4, "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    if-nez v4, :cond_1

    .line 1732
    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1500(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/SipMessage;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 1734
    :cond_1
    if-eqz v4, :cond_2

    .line 1735
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1736
    return-void

    .line 1740
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getCode()I

    move-result v5

    const/16 v6, 0x57c

    const/16 v7, 0x3f6

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    const/16 v2, 0xb7

    if-eq v5, v2, :cond_9

    const/16 v2, 0xc8

    if-eq v5, v2, :cond_8

    const/16 v2, 0x193

    if-eq v5, v2, :cond_6

    const/16 v2, 0x1e6

    if-eq v5, v2, :cond_5

    const/16 v2, 0x1f7

    if-eq v5, v2, :cond_4

    const/16 v2, 0x25b

    if-eq v5, v2, :cond_3

    goto/16 :goto_0

    .line 1781
    :cond_3
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1782
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "declined"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1784
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1786
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1784
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1760
    :cond_4
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 1761
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1763
    sget-object v2, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1764
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x656

    .line 1766
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1764
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1847
    :cond_5
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 1848
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 1849
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x152

    .line 1850
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1849
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1851
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v2, v2, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionBusy()V

    goto/16 :goto_0

    .line 1743
    :cond_6
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 1744
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 1746
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Simultaneous Call Limit Has Already Been Reached"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1747
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x57b

    .line 1749
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1747
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1750
    :cond_7
    sget-object v2, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    invoke-static {v2, v5}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1751
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x657

    .line 1753
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1751
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1772
    :cond_8
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1773
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "call completed elsewhere"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1775
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1777
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1775
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1840
    :cond_9
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 1842
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_0

    .line 1790
    :cond_a
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v5

    if-ne v5, v2, :cond_b

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1791
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1700(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1792
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1794
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1792
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1795
    :cond_b
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v5

    if-ne v5, v2, :cond_c

    .line 1796
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 1797
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1800(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1798
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    .line 1800
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v3, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1798
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1801
    :cond_c
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_d

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1803
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Call Has Been Pulled by Another Device"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1804
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x3f8

    .line 1806
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1804
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto/16 :goto_0

    .line 1807
    :cond_d
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getType()I

    move-result v2

    if-nez v2, :cond_f

    .line 1809
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v8, :cond_f

    .line 1810
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1811
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Video call is currently not available"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1813
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Video calling is unavailable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1815
    :cond_e
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ImsCallSessionProxy"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsReasonInfo() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 1818
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x2c

    .line 1820
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1818
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 1821
    :cond_f
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getMethod()I

    move-result v2

    if-ne v2, v5, :cond_11

    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getDir()I

    move-result v2

    if-nez v2, :cond_11

    .line 1823
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1824
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rtp-rtcp timeout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1826
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1827
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v2

    iget-object v5, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2100(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 1828
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const v6, 0xf002

    .line 1830
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1828
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 1832
    :cond_10
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const v6, 0xf003

    .line 1834
    invoke-virtual {v1}, Lcom/mediatek/ims/SipMessage;->getReasonHeader()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 1832
    invoke-static {v2, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1602(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;

    .line 1857
    :cond_11
    :goto_0
    return-void

    .line 1720
    .end local v1    # "msg":Lcom/mediatek/ims/SipMessage;
    .end local v4    # "opReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_12
    :goto_1
    return-void
.end method

.method private updateMultipartyState(I)Z
    .locals 7
    .param p1, "callMode"    # I

    .line 3196
    const/16 v0, 0x19

    const/16 v1, 0x18

    const/16 v2, 0x17

    const/16 v3, 0x16

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    .line 3202
    .local v6, "isMultipartyMode":Z
    :goto_1
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    .line 3203
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getMultipartyModeForConfPart()Z

    move-result v6

    .line 3207
    :cond_3
    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_2

    .line 3210
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto :goto_3

    .line 3208
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 3213
    :goto_3
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$10600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3215
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "VzW: set conference no constrain for HD icon"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    iput v5, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 3219
    :cond_6
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    .line 3220
    .local v0, "mptyState":Z
    const-string v1, "mpty"

    .line 3222
    .local v1, "mptyExtra":Ljava/lang/String;
    if-ne v0, v6, :cond_7

    .line 3223
    return v5

    .line 3225
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    if-eqz v6, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {v2, v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3226
    return v4
.end method

.method private updateOIR(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "pau"    # Ljava/lang/String;

    .line 3250
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3251
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v2, "updateOIR() : ignore update OIR for mpty call: "

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3252
    return-void

    .line 3255
    :cond_0
    const/4 v0, 0x2

    .line 3256
    .local v0, "oir":I
    invoke-direct {p0, p2}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getDisplayNameFromPau(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3257
    .local v2, "displayName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Coin line/payphone"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v3, "payPhoneName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateOIR() : pau: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, p2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], displayName: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3260
    invoke-static {v6, v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3259
    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3263
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3264
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "anonymous"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3265
    const/4 v0, 0x1

    goto :goto_0

    .line 3266
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3267
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "updateOIR() : payhone"

    invoke-static {v4, v5, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3268
    const/4 v0, 0x4

    goto :goto_0

    .line 3269
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3270
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    .line 3269
    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3271
    const/4 v0, 0x1

    goto :goto_0

    .line 3272
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3273
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "unavailable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3274
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3275
    const/4 v0, 0x3

    goto :goto_0

    .line 3276
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3277
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "interaction with other service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP50:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 3278
    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3279
    const/4 v0, 0x3

    .line 3282
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    const-string v4, "oir"

    invoke-virtual {v1, v4, v0}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3283
    return-void
.end method

.method private updateRestrictHDForRemoteCallProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "sipCode"    # I
    .param p2, "reasonHeader"    # Ljava/lang/String;

    .line 1860
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP12:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1861
    return-void

    .line 1864
    :cond_0
    const-string v0, "ImsCallSessionProxy"

    const-string v1, "updateRestrictHDForRemoteCallProfile: check for op12"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 1866
    return-void

    .line 1868
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<call_w_mmtel_icsi_tag>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1869
    const-string v1, "updateRestrictHDForRemoteCallProfile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 1871
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 1873
    :cond_2
    return-void
.end method

.method private updateVerstatFromPau(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pau"    # Ljava/lang/String;

    .line 3386
    const/4 v0, 0x0

    .line 3387
    .local v0, "changed":Z
    const-string v1, "verstat="

    invoke-direct {p0, p1, v1}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->getFieldValueFromPau(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3389
    .local v1, "verstatField":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3390
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVerstatFromPau() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3392
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v2

    .line 3393
    .local v2, "currentVerstat":I
    const-string v3, "[;@,]+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3394
    .local v3, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v3, v5

    .line 3395
    .local v6, "value":Ljava/lang/String;
    const-string v7, "TN-Validation-Passed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "verstat"

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-eq v2, v7, :cond_0

    .line 3397
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3399
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3400
    const/4 v0, 0x1

    goto :goto_0

    .line 3401
    :cond_0
    const-string v7, "TN-Validation-Failed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v2, v4, :cond_1

    .line 3403
    iget-object v7, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 3405
    iget-object v4, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v4, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3406
    const/4 v0, 0x1

    .line 3409
    .end local v2    # "currentVerstat":I
    .end local v3    # "split":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 2014
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v3, 0xff

    .line 2016
    .local v3, "callMode":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage() : receive message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3700(Lcom/mediatek/ims/ImsCallSessionProxy;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2018
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v4

    .line 2019
    .local v4, "confHdler":Lcom/mediatek/ims/DefaultConferenceHandler;
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x66

    const/16 v6, 0x19

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eq v0, v5, :cond_35

    const/16 v5, 0xc9

    if-eq v0, v5, :cond_34

    const/16 v5, 0xe8

    if-eq v0, v5, :cond_33

    const/16 v5, 0xe9

    if-eq v0, v5, :cond_32

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/16 v5, 0xce

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 2906
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleMessage() : unknown messahe, ignore"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    goto/16 :goto_26

    .line 2897
    :pswitch_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9500(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2898
    goto/16 :goto_26

    .line 2894
    :pswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9400(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 2895
    goto/16 :goto_26

    .line 2891
    :pswitch_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9300(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 2892
    goto/16 :goto_26

    .line 2888
    :pswitch_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 2889
    goto/16 :goto_26

    .line 2860
    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2861
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2862
    .local v6, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eq v0, v8, :cond_0

    .line 2863
    goto/16 :goto_26

    .line 2865
    :cond_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "handleMessage() : EVENT_ON_SUPP_SERVICE_NOTIFICATION, notify"

    invoke-static {v0, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2867
    new-instance v0, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v14, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v15, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    iget v8, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    iget v9, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    iget-object v10, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->history:[Ljava/lang/String;

    move-object v13, v0

    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v8, v0

    .line 2870
    .local v8, "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9000(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2871
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2872
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;

    invoke-direct {v10, v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler$1;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2881
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 2883
    :cond_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9102(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 2885
    :goto_0
    monitor-exit v9

    .line 2886
    goto/16 :goto_26

    .line 2885
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2841
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    .end local v8    # "imsNotification":Landroid/telephony/ims/ImsSuppServiceNotification;
    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttAudioIndication(Landroid/os/AsyncResult;)V

    .line 2842
    goto/16 :goto_26

    .line 2857
    :pswitch_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 2858
    goto/16 :goto_26

    .line 2844
    :pswitch_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2845
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    .line 2846
    .local v0, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    sget-object v6, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v5, v6, :cond_3

    .line 2848
    :cond_2
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8800(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 2850
    :cond_3
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "skip speech not active or alerting"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2852
    .end local v0    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_1
    goto/16 :goto_26

    .line 2853
    :cond_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "skip speech codec update when mCallId null"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2855
    goto/16 :goto_26

    .line 2838
    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyRequestReceived(Landroid/os/AsyncResult;)V

    .line 2839
    goto/16 :goto_26

    .line 2835
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttModifyResponse(Landroid/os/AsyncResult;)V

    .line 2836
    goto/16 :goto_26

    .line 2832
    :pswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttTextReceived(Landroid/os/AsyncResult;)V

    .line 2833
    goto/16 :goto_26

    .line 2811
    :pswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2812
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2813
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v5, "handleMessage() : EVENT_RADIO_NOT_AVAILABLE, ignore"

    invoke-static {v0, v5, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2814
    goto/16 :goto_26

    .line 2816
    :cond_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2817
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2818
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DIAL:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    goto :goto_2

    .line 2820
    :cond_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    sget-object v5, Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;->DISCONNECT:Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8702(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;)Lcom/mediatek/ims/ImsCallSessionProxy$CallErrorState;

    .line 2822
    :goto_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v6, 0x6a

    invoke-direct {v5, v6, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2824
    goto/16 :goto_26

    .line 2795
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctResult(Landroid/os/AsyncResult;)V

    .line 2796
    goto/16 :goto_26

    .line 2790
    :pswitch_d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 2791
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_26

    .line 2769
    :pswitch_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2770
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 2771
    iget v5, v2, Landroid/os/Message;->arg1:I

    if-ne v5, v10, :cond_8

    .line 2772
    if-eqz v0, :cond_7

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    .line 2773
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2774
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_26

    .line 2776
    :cond_7
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2777
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2778
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionTerminated"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2779
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_26

    .line 2782
    :cond_8
    if-eqz v0, :cond_68

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_68

    .line 2783
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "EVENT_SEND_USSI_COMPLETE : callSessionInitiatedFailed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2784
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v5, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_26

    .line 2752
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2755
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2756
    .local v0, "dtmfMessenger":Landroid/os/Messenger;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dtmfMessenger "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2757
    if-eqz v0, :cond_9

    .line 2758
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2763
    .end local v0    # "dtmfMessenger":Landroid/os/Messenger;
    :cond_9
    goto :goto_3

    .line 2760
    :catch_0
    move-exception v0

    .line 2762
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleMessage() : RemoteException for DTMF"

    invoke-static {v5, v6, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2765
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8502(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 2766
    goto/16 :goto_26

    .line 2525
    :pswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2526
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3002(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2530
    :cond_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3600(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2531
    goto/16 :goto_26

    .line 2487
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2489
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    move v10, v11

    :goto_4
    const-string v7, "handleMessage() : receive EVENT_SWAP_BEFORE_MERGE_RESULT"

    invoke-static {v6, v10, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2491
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_d

    .line 2492
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_26

    .line 2495
    :cond_d
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v6

    .line 2496
    .local v6, "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v6, :cond_e

    .line 2497
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "can\'t find this call callInfo"

    invoke-static {v5, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2498
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2499
    goto/16 :goto_26

    .line 2502
    :cond_e
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3300(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v7

    .line 2503
    .local v7, "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v7, :cond_f

    .line 2504
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "can\'t find this another call callInfo"

    invoke-static {v5, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2505
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    .line 2506
    goto/16 :goto_26

    .line 2509
    :cond_f
    iget-boolean v8, v6, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-eqz v8, :cond_10

    .line 2510
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : myCallI is conference, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2511
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2512
    .local v5, "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9, v7, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    goto :goto_5

    .line 2515
    .end local v5    # "result":Landroid/os/Message;
    :cond_10
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v9, "handleMessage() : bg conference is foreground now, merge normal call"

    invoke-static {v8, v9, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2516
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2517
    .restart local v5    # "result":Landroid/os/Message;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    iget-object v9, v7, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 2518
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2517
    invoke-interface {v8, v9, v6, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipantsByCallId(ILcom/mediatek/ims/ImsCallInfo;Landroid/os/Message;)V

    .line 2523
    .end local v5    # "result":Landroid/os/Message;
    .end local v6    # "myCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v7    # "beMergedCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :goto_5
    goto/16 :goto_26

    .line 2656
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateImsReasonInfo(Landroid/os/AsyncResult;)V

    .line 2657
    goto/16 :goto_26

    .line 2576
    :pswitch_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2578
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_11

    move v6, v10

    goto :goto_6

    :cond_11
    move v6, v11

    :goto_6
    const-string v8, "receive EVENT_REMOVE_CONFERENCE_RESULT"

    invoke-static {v0, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2581
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_12

    .line 2582
    goto/16 :goto_26

    .line 2585
    :cond_12
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v6, 0xcf

    if-nez v0, :cond_13

    .line 2586
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2587
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    .line 2588
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 2590
    :cond_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2591
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2592
    .local v0, "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7700(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2593
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7702(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2594
    goto/16 :goto_26

    .line 2596
    .end local v0    # "result":Landroid/os/Message;
    :cond_14
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2600
    :goto_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7408(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2601
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_15

    .line 2602
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2604
    .restart local v0    # "result":Landroid/os/Message;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2605
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2604
    invoke-interface {v6, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->removeParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2606
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_26

    .line 2607
    :cond_15
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2609
    :try_start_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2610
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_8

    .line 2612
    :cond_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRemoveParticipantsRequestDelivered()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2616
    :goto_8
    goto :goto_9

    .line 2614
    :catch_1
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionRemoveParticipantsRequest"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2618
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_17
    :goto_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2620
    goto/16 :goto_26

    .line 2533
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 2535
    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2536
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_68

    .line 2537
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_26

    .line 2540
    :cond_18
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-ne v0, v10, :cond_19

    .line 2541
    goto/16 :goto_26

    .line 2544
    :cond_19
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    .line 2545
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2546
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantComplete()V

    goto :goto_a

    .line 2548
    :cond_1a
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/DefaultConferenceHandler;->modifyParticipantFailed()V

    .line 2550
    :goto_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7408(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    .line 2552
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7500(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    if-ge v0, v7, :cond_1b

    .line 2553
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3400(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2554
    .local v0, "result":Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2555
    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    aget-object v7, v7, v8

    .line 2554
    invoke-virtual {v5, v7}, Lcom/mediatek/ims/DefaultConferenceHandler;->tryAddParticipant(Ljava/lang/String;)V

    .line 2556
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2557
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7600(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    aget-object v8, v8, v9

    .line 2556
    invoke-interface {v5, v7, v8, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->inviteParticipants(ILjava/lang/String;Landroid/os/Message;)V

    .line 2559
    .end local v0    # "result":Landroid/os/Message;
    goto/16 :goto_26

    .line 2560
    :cond_1b
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2562
    :try_start_3
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2563
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v5}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_b

    .line 2565
    :cond_1c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2569
    :goto_b
    goto :goto_c

    .line 2567
    :catch_2
    move-exception v0

    .line 2568
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionInviteParticipantsRequest"

    invoke-static {v5, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2571
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1d
    :goto_c
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2574
    goto/16 :goto_26

    .line 2473
    .end local v6    # "ar":Landroid/os/AsyncResult;
    :pswitch_15
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2475
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1e

    goto :goto_d

    :cond_1e
    move v10, v11

    :goto_d
    const-string v6, "handleMessage() : receive EVENT_MERGE_RESULT"

    invoke-static {v5, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2477
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 2478
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_68

    .line 2480
    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v6, "handleMessage() : ConfCreated failed"

    invoke-static {v5, v6, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2482
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->retrieveMergeFail()V

    goto/16 :goto_26

    .line 2458
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2460
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1f

    goto :goto_e

    :cond_1f
    move v10, v11

    :goto_e
    const-string v6, "handleMessage() : receive EVENT_RESUME_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2462
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 2463
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_68

    .line 2465
    :try_start_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    .line 2466
    :catch_3
    move-exception v0

    .line 2467
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "RuntimeException callSessionResumeFailed()"

    invoke-static {v6, v7, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2468
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_f
    goto/16 :goto_26

    .line 2432
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_17
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2434
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_20

    goto :goto_10

    :cond_20
    move v10, v11

    :goto_10
    const-string v6, "handleMessage() : receive EVENT_HOLD_RESULT"

    invoke-static {v0, v10, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7100(Lcom/mediatek/ims/ImsCallSessionProxy;ZLjava/lang/String;)V

    .line 2437
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 2438
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_68

    .line 2439
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .line 2440
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_21

    .line 2441
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    .line 2442
    .local v6, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_21

    .line 2443
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v8, 0x94

    invoke-direct {v7, v8, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v7

    .line 2445
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "Call hold failed by call terminated"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    move-object v6, v0

    goto :goto_11

    .line 2450
    .end local v6    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_21
    move-object v6, v0

    .end local v0    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    :try_start_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 2453
    goto :goto_12

    .line 2451
    :catch_4
    move-exception v0

    .line 2452
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v8, "RuntimeException callSessionHoldFailed()"

    invoke-static {v7, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2454
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_12
    goto/16 :goto_26

    .line 2826
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleImsConferenceIndication(Landroid/os/AsyncResult;)V

    .line 2827
    goto/16 :goto_26

    .line 2829
    :pswitch_19
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttCapabilityIndication(Landroid/os/AsyncResult;)V

    .line 2830
    goto/16 :goto_26

    .line 2803
    :pswitch_1a
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    iget-object v5, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2804
    invoke-static {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v6

    iget-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 2803
    invoke-interface {v0, v5, v6, v7}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleDeviceSwitchResult(Ljava/lang/String;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2805
    goto/16 :goto_26

    .line 2808
    :cond_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEctIndication(Landroid/os/AsyncResult;)V

    .line 2809
    goto/16 :goto_26

    .line 2702
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2703
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 2705
    .local v5, "videoCapabilityInfo":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2706
    .local v6, "lVideoCapability":I
    const/4 v7, 0x0

    .line 2707
    .local v7, "rVideoCapability":I
    if-eqz v5, :cond_68

    aget-object v9, v5, v11

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2708
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 2709
    aget-object v9, v5, v10

    if-eqz v9, :cond_24

    aget-object v9, v5, v10

    .line 2710
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 2711
    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2712
    if-ne v6, v10, :cond_23

    .line 2713
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_13

    .line 2715
    :cond_23
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v12, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2719
    :cond_24
    :goto_13
    aget-object v9, v5, v12

    if-eqz v9, :cond_26

    aget-object v9, v5, v12

    .line 2720
    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 2721
    aget-object v9, v5, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2722
    if-ne v7, v10, :cond_25

    .line 2723
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iput v8, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_14

    .line 2725
    :cond_25
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    iput v12, v8, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2729
    :cond_26
    :goto_14
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8100(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2732
    sget-object v8, Lcom/mediatek/ims/OperatorUtils$OPID;->OP07:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2733
    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v8

    .line 2735
    .local v8, "supportUpgradeWhenVoiceConf":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8200(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)Z

    move-result v9

    if-nez v9, :cond_27

    if-nez v8, :cond_27

    .line 2737
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 2740
    :cond_27
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8302(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2741
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2300(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget v10, v10, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$8402(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2742
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    .line 2745
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage() : local video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", remote video capability = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2748
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2749
    .end local v8    # "supportUpgradeWhenVoiceConf":Z
    goto/16 :goto_26

    .line 2659
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "videoCapabilityInfo":[Ljava/lang/String;
    .end local v6    # "lVideoCapability":I
    .end local v7    # "rVideoCapability":I
    :pswitch_1c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2660
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    .line 2665
    .local v5, "callModeInfo":[Ljava/lang/String;
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallModeChangeIndication([Ljava/lang/String;)V

    .line 2667
    if-eqz v5, :cond_68

    aget-object v7, v5, v11

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2669
    const/4 v7, 0x3

    .line 2670
    .local v7, "videoState":I
    aget-object v13, v5, v10

    if-eqz v13, :cond_28

    aget-object v13, v5, v10

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    .line 2671
    aget-object v13, v5, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2673
    :cond_28
    aget-object v13, v5, v12

    if-eqz v13, :cond_29

    aget-object v13, v5, v12

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    .line 2674
    aget-object v13, v5, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2678
    :cond_29
    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage() : mode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", video state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2681
    invoke-direct {v1, v3, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->isCallModeUpdated(II)Z

    move-result v12

    .line 2682
    .local v12, "isCallModeChanged":Z
    array-length v13, v5

    if-lt v13, v9, :cond_2a

    aget-object v8, v5, v8

    .line 2683
    invoke-direct {v1, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handlePauUpdate(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    move v8, v10

    goto :goto_15

    :cond_2a
    move v8, v11

    .line 2685
    .local v8, "isCallDisplayUpdated":Z
    :goto_15
    if-ne v3, v6, :cond_2b

    goto :goto_16

    :cond_2b
    move v10, v11

    :goto_16
    move v6, v10

    .line 2686
    .local v6, "shouldUpdateExtras":Z
    if-eqz v6, :cond_2c

    .line 2687
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "video_provider_id"

    invoke-virtual {v10, v13, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage() : setCallIDAsExtras video_provider_id = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2691
    :cond_2c
    if-nez v12, :cond_2d

    if-nez v8, :cond_2d

    if-eqz v6, :cond_2e

    .line 2692
    :cond_2d
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2693
    if-eqz v12, :cond_2e

    .line 2695
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2698
    :cond_2e
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->notifyMultipartyStateChanged(I)V

    .line 2699
    .end local v6    # "shouldUpdateExtras":Z
    .end local v7    # "videoState":I
    .end local v12    # "isCallModeChanged":Z
    goto/16 :goto_26

    .line 2622
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "callModeInfo":[Ljava/lang/String;
    .end local v8    # "isCallDisplayUpdated":Z
    :pswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2624
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    .line 2626
    .local v5, "sipCauseCode":I
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2f

    .line 2627
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_17

    .line 2629
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2f
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    if-eqz v6, :cond_30

    .line 2630
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : notify disconnect cause by mLocalTerminateReason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2631
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2630
    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2632
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v7

    invoke-direct {v6, v7, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_17

    .line 2641
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_30
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    if-nez v6, :cond_31

    .line 2642
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause from +CEER"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2644
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/LastCallFailCause;

    .line 2645
    .local v6, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    iget v7, v6, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    invoke-direct {v1, v7}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->imsReasonInfoCodeFromRilReasonCode(I)I

    move-result v5

    .line 2646
    new-instance v7, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v7, v5, v11}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v6, v7

    .line 2647
    .local v6, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_17

    .line 2648
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_31
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v7, "handleMessage() : get disconnect cause directly from +ESIPCPI"

    invoke-static {v6, v7, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2649
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1600(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v6

    .line 2653
    .restart local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :goto_17
    iget-object v7, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v7, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7900(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2654
    goto/16 :goto_26

    .line 2423
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "sipCauseCode":I
    .end local v6    # "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :pswitch_1e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2424
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleEconfIndication([Ljava/lang/String;)V

    .line 2425
    goto/16 :goto_26

    .line 2903
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_32
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9700(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2904
    goto/16 :goto_26

    .line 2900
    :cond_33
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$9600(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/os/AsyncResult;)V

    .line 2901
    goto/16 :goto_26

    .line 2429
    :cond_34
    :pswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleDialResult(Landroid/os/AsyncResult;)V

    .line 2430
    goto/16 :goto_26

    .line 2045
    :cond_35
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/AsyncResult;

    .line 2046
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 2047
    .local v13, "callInfo":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2048
    .local v0, "msgType":I
    const/4 v14, 0x0

    .line 2050
    .local v14, "isCallProfileUpdated":Z
    aget-object v15, v13, v10

    if-eqz v15, :cond_36

    aget-object v15, v13, v10

    const-string v7, ""

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 2051
    aget-object v7, v13, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_18

    .line 2054
    :cond_36
    move v7, v0

    .end local v0    # "msgType":I
    .local v7, "msgType":I
    :goto_18
    aget-object v0, v13, v9

    if-eqz v0, :cond_37

    aget-object v0, v13, v9

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2055
    aget-object v0, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2059
    :cond_37
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v15, v13, v11

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2063
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 2064
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CALL_INFO_INDICATION : mIsWaitingClose is "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2065
    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3800(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", count: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v10}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2064
    invoke-static {v0, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2067
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-ge v0, v9, :cond_38

    .line 2068
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3908(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    goto/16 :goto_26

    .line 2070
    :cond_38
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 2072
    goto/16 :goto_26

    .line 2075
    :cond_39
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    invoke-virtual {v0, v13, v15, v10}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2078
    :cond_3a
    const/4 v0, 0x0

    .line 2079
    .local v0, "isCallDisplayUpdated":Z
    const/4 v10, 0x0

    .line 2081
    .local v10, "isVideoCapUpdated":Z
    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v15

    const/16 v8, 0x82

    if-eqz v15, :cond_42

    aget-object v15, v13, v11

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 2082
    if-eq v7, v8, :cond_3b

    .line 2141
    goto/16 :goto_26

    .line 2084
    :cond_3b
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage() : conference assign call id = "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v13, v11

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2086
    new-instance v6, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 2088
    .local v6, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    aget-object v8, v13, v9

    if-eqz v8, :cond_3c

    aget-object v8, v13, v9

    const-string v15, ""

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 2089
    aget-object v8, v13, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2092
    :cond_3c
    const/16 v8, 0x15

    if-eq v3, v8, :cond_3e

    const/16 v8, 0x17

    if-eq v3, v8, :cond_3e

    const/16 v8, 0x19

    if-ne v3, v8, :cond_3d

    goto :goto_19

    .line 2096
    :cond_3d
    iput v12, v6, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_1a

    .line 2094
    :cond_3e
    :goto_19
    const/4 v8, 0x4

    iput v8, v6, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2099
    :goto_1a
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2101
    const/4 v8, 0x6

    aget-object v9, v13, v8

    if-eqz v9, :cond_3f

    aget-object v9, v13, v8

    const-string v15, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 2103
    aget-object v9, v13, v8

    const-string v15, "oi"

    invoke-virtual {v6, v15, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    aget-object v8, v13, v8

    const-string v9, "remote_uri"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    const-string v8, "oir"

    invoke-virtual {v6, v8, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1b

    .line 2114
    :cond_3f
    const-string v8, "oir"

    invoke-virtual {v6, v8, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2118
    :goto_1b
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    const-string v9, "CallRadioTech"

    invoke-virtual {v8, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2120
    .local v8, "radioTech":Ljava/lang/String;
    const-string v9, "CallRadioTech"

    invoke-virtual {v6, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v15, v13, v11

    invoke-static {v9, v6, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4100(Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V

    .line 2125
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v9

    if-eqz v9, :cond_40

    .line 2126
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v9

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v12

    invoke-virtual {v9, v13, v12, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1c

    .line 2127
    :cond_40
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v9

    if-eqz v9, :cond_41

    .line 2128
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v9

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4300(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v12

    invoke-virtual {v9, v13, v12, v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_1c

    .line 2130
    :cond_41
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v15, "handleMessage() : conference not create callSession"

    invoke-static {v9, v15, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2134
    :goto_1c
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4400(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 2135
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4402(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2136
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_26

    .line 2143
    .end local v6    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v8    # "radioTech":Ljava/lang/String;
    :cond_42
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x8

    if-eqz v6, :cond_61

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v13, v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 2144
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_CALL_INFO_INDICATION: msgType "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mCallNumber = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2145
    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4600(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2144
    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1300(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)V

    .line 2148
    sget-object v6, Lcom/mediatek/ims/OperatorUtils$OPID;->OP_VN:Lcom/mediatek/ims/OperatorUtils$OPID;

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-static {v6, v8}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 2149
    const/4 v6, 0x6

    aget-object v8, v13, v6

    if-eqz v8, :cond_43

    aget-object v8, v13, v6

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    .line 2150
    aget-object v8, v13, v6

    const-string v11, "+84"

    const-string v15, "0"

    invoke-virtual {v8, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v6

    .line 2152
    :cond_43
    aget-object v6, v13, v19

    if-eqz v6, :cond_44

    aget-object v6, v13, v19

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 2153
    aget-object v6, v13, v19

    const-string v8, "+84"

    const-string v11, "0"

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v19

    .line 2155
    :cond_44
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    const/4 v8, 0x6

    aget-object v11, v13, v8

    const-string v8, "oi"

    invoke-virtual {v6, v8, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    :cond_45
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4700(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    if-nez v6, :cond_46

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 2160
    :cond_46
    const/4 v6, 0x6

    aget-object v8, v13, v6

    if-eqz v8, :cond_47

    aget-object v8, v13, v6

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 2161
    aget-object v8, v13, v6

    const-string v6, "*31#"

    const-string v11, ""

    invoke-virtual {v8, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "#31#"

    const-string v11, ""

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 2162
    .local v6, "ecpiCallNumber":Ljava/lang/String;
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 2163
    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8, v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1102(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2167
    .end local v6    # "ecpiCallNumber":Ljava/lang/String;
    :cond_47
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2168
    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v13, v19

    invoke-direct {v1, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 2169
    .end local v0    # "isCallDisplayUpdated":Z
    .local v6, "isCallDisplayUpdated":Z
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v0

    aget-object v8, v13, v19

    invoke-direct {v1, v0, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v8

    .line 2171
    .local v8, "serviceId":I
    if-eqz v7, :cond_5d

    const/4 v0, 0x7

    if-eq v7, v12, :cond_5b

    const/4 v11, 0x6

    if-eq v7, v11, :cond_54

    if-eq v7, v0, :cond_52

    packed-switch v7, :pswitch_data_4

    packed-switch v7, :pswitch_data_5

    goto/16 :goto_24

    .line 2373
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->handleRttECCRedialEvent()V

    goto/16 :goto_24

    .line 2364
    :pswitch_21
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2365
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    .line 2366
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2367
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6500(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2368
    if-nez v6, :cond_48

    if-eqz v10, :cond_60

    .line 2369
    :cond_48
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_24

    .line 2354
    :pswitch_22
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2355
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    .line 2356
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    .line 2357
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2358
    if-nez v6, :cond_49

    if-eqz v10, :cond_60

    .line 2359
    :cond_49
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_24

    .line 2340
    :pswitch_23
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2342
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2343
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v0

    sget-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    const/4 v11, 0x1

    goto :goto_1d

    :cond_4a
    const/4 v11, 0x0

    :goto_1d
    move v0, v11

    .line 2344
    .local v0, "hasHoldCall":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v9

    if-eqz v9, :cond_4b

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v9, v9, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v9, :cond_4b

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2345
    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v9

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v11, v11, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    .line 2346
    invoke-virtual {v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3500(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v12

    .line 2345
    invoke-interface {v9, v11, v12, v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->handleCallStartFailed(Lcom/mediatek/ims/internal/IMtkImsCallSession;Ljava/lang/Object;Z)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4b

    .line 2347
    goto/16 :goto_24

    .line 2350
    :cond_4b
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 2351
    goto/16 :goto_24

    .line 2316
    .end local v0    # "hasHoldCall":Z
    :pswitch_24
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2317
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    .line 2319
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2320
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    const/4 v11, 0x4

    if-ne v0, v11, :cond_4d

    .line 2321
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6300(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2323
    :try_start_6
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2327
    goto :goto_1e

    .line 2324
    :catch_5
    move-exception v0

    .line 2325
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v12, "RuntimeException callSessionResumed()"

    invoke-static {v11, v12, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2330
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4c
    :goto_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2331
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v0

    const/16 v9, 0x84

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/internal/ImsVTProvider;->onReceiveCallSessionEvent(I)V

    goto/16 :goto_24

    .line 2333
    :cond_4d
    if-nez v6, :cond_4e

    if-eqz v10, :cond_60

    .line 2334
    :cond_4e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_24

    .line 2292
    :pswitch_25
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2293
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6000(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v10

    .line 2294
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v11

    if-eqz v11, :cond_60

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    if-eq v11, v0, :cond_60

    .line 2295
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2296
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6200(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2297
    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1400(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ext/OpImsCallSessionProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxy;->isDeviceSwitching()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2299
    :try_start_7
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1f

    .line 2300
    :catch_6
    move-exception v0

    .line 2301
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v12, "RuntimeException callSessionHeld()"

    invoke-static {v11, v12, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2302
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1f
    goto :goto_20

    .line 2304
    :cond_4f
    if-nez v6, :cond_50

    if-eqz v10, :cond_51

    .line 2305
    :cond_50
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2308
    :cond_51
    :goto_20
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2310
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6302(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    goto/16 :goto_24

    .line 2281
    :cond_52
    const/4 v0, 0x0

    .line 2282
    .local v0, "videoIbt":I
    aget-object v9, v13, v12

    if-eqz v9, :cond_53

    .line 2283
    aget-object v9, v13, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2285
    :cond_53
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "videoIbt= "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2286
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9, v3, v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5900(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2287
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2288
    goto/16 :goto_24

    .line 2228
    .end local v0    # "videoIbt":I
    :cond_54
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2229
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget-object v11, v11, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v12, 0x3

    iput v12, v11, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2232
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2234
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    if-eq v11, v0, :cond_57

    .line 2235
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2240
    :try_start_8
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2241
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget-object v11, v11, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v11}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2243
    :cond_55
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2247
    goto :goto_21

    .line 2244
    :catch_7
    move-exception v0

    .line 2245
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v12, "RuntimeException callSessionProgressing()/callSessionInitiated()"

    invoke-static {v11, v12, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2249
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_56
    :goto_21
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2252
    :cond_57
    const/4 v0, 0x0

    .line 2254
    .local v0, "notifyCallSessionUpdate":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    iget v9, v9, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 2255
    .local v9, "oldCallType":I
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v12

    invoke-static {v11, v3, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2258
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2260
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v11

    iget v11, v11, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-eq v11, v9, :cond_58

    .line 2261
    const/4 v0, 0x1

    .line 2264
    :cond_58
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v11

    if-eqz v11, :cond_59

    .line 2265
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2266
    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v12

    iget v12, v12, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v12}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v12

    .line 2265
    invoke-virtual {v11, v12}, Lcom/mediatek/ims/internal/ImsVTProvider;->onUpdateProfile(I)V

    .line 2269
    :cond_59
    if-eqz v0, :cond_5a

    .line 2270
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2274
    :cond_5a
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v12

    invoke-static {v11, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2277
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2278
    goto/16 :goto_24

    .line 2200
    .end local v0    # "notifyCallSessionUpdate":Z
    .end local v9    # "oldCallType":I
    :cond_5b
    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11, v13}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5300(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)I

    move-result v11

    .line 2202
    .local v11, "isIbt":I
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2205
    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v15, v3, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5400(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2209
    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v15, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2211
    iget-object v15, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v15}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v15

    if-eq v15, v0, :cond_60

    .line 2212
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2213
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 2215
    :try_start_9
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5500(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v0

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v12

    iget-object v12, v12, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v12}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 2218
    goto :goto_22

    .line 2216
    :catch_8
    move-exception v0

    .line 2217
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v15, "RuntimeException callSessionRemoveParticipantsRequestFailed()"

    invoke-static {v12, v15, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_5c
    :goto_22
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5602(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2222
    if-eqz v6, :cond_60

    .line 2223
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    goto/16 :goto_24

    .line 2173
    .end local v11    # "isIbt":I
    :cond_5d
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x3

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2174
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2175
    aget-object v0, v13, v9

    if-eqz v0, :cond_5e

    aget-object v0, v13, v9

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 2176
    aget-object v0, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2179
    :cond_5e
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v9

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v9

    const/4 v11, 0x0

    invoke-static {v0, v9, v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5000(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    .line 2180
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2400(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-static {v0, v3, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2500(Lcom/mediatek/ims/ImsCallSessionProxy;II)V

    .line 2182
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2184
    invoke-direct {v1, v3}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateMultipartyState(I)Z

    .line 2186
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5100(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2187
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v0, v0, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_23

    .line 2189
    :cond_5f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2190
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "android:imsCallID"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    const/4 v9, 0x6

    aget-object v9, v13, v9

    const-string v11, "android:imsDialString"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    const-string v9, "android:imsServiceId"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2194
    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v9

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    iget-object v12, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v12

    invoke-virtual {v9, v11, v12, v0}, Lcom/mediatek/ims/ImsService;->notifyIncomingCallSession(ILcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 2197
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_23
    iget-object v0, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5202(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2198
    nop

    .line 2377
    .end local v8    # "serviceId":I
    :cond_60
    :goto_24
    goto/16 :goto_26

    .end local v6    # "isCallDisplayUpdated":Z
    .local v0, "isCallDisplayUpdated":Z
    :cond_61
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_68

    const/16 v6, 0x82

    if-ne v7, v6, :cond_68

    .line 2379
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : receive 130 URC, assign call_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    aget-object v11, v13, v9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v12}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 2381
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$3200(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v9

    invoke-virtual {v6, v13, v8, v9}, Lcom/mediatek/ims/ImsServiceCallTracker;->processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2382
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    if-eqz v6, :cond_62

    .line 2383
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v6, Lcom/mediatek/ims/ImsCallSessionProxy;->mMtkImsCallSessionProxy:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionCalling()V

    .line 2386
    :cond_62
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2387
    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v13, v19

    invoke-direct {v1, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateCallDisplayFromNumberOrPau(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2388
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1100(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v6

    aget-object v8, v13, v19

    invoke-direct {v1, v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->updateOIR(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v6

    if-nez v6, :cond_63

    .line 2392
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsService;->getRatType(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5000(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    goto :goto_25

    .line 2391
    :cond_63
    const/4 v9, 0x0

    .line 2394
    :goto_25
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4802(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    .line 2395
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    aget-object v8, v13, v9

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1202(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 2397
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$4000(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2398
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 2399
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2800(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2400
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$2600(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v9}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1200(Lcom/mediatek/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    invoke-virtual {v6, v8, v9, v11}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V

    .line 2402
    :cond_64
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 2403
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 2404
    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6700(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {v9, v11}, Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    const/4 v11, 0x0

    aget-object v15, v13, v11

    iget-object v11, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v11}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v11

    .line 2403
    invoke-virtual {v6, v8, v9, v15, v11}, Lcom/mediatek/ims/DefaultConferenceHandler;->startConference(Landroid/content/Context;Lcom/mediatek/ims/DefaultConferenceHandler$Listener;Ljava/lang/String;I)V

    .line 2405
    invoke-static {}, Lcom/mediatek/ims/ImsConferenceHandler;->getInstance()Lcom/mediatek/ims/DefaultConferenceHandler;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6800(Lcom/mediatek/ims/ImsCallSessionProxy;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mediatek/ims/DefaultConferenceHandler;->addLocalCache([Ljava/lang/String;)V

    .line 2406
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6802(Lcom/mediatek/ims/ImsCallSessionProxy;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2411
    :cond_65
    if-nez v0, :cond_66

    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v6

    if-ne v6, v12, :cond_67

    .line 2412
    :cond_66
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$400(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2415
    :cond_67
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x3

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5700(Lcom/mediatek/ims/ImsCallSessionProxy;I)V

    .line 2416
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6900(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2417
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$6902(Lcom/mediatek/ims/ImsCallSessionProxy;Z)Z

    .line 2418
    iget-object v6, v1, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$7000(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 2909
    .end local v0    # "isCallDisplayUpdated":Z
    .end local v5    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "msgType":I
    .end local v10    # "isVideoCapUpdated":Z
    .end local v13    # "callInfo":[Ljava/lang/String;
    .end local v14    # "isCallProfileUpdated":Z
    :cond_68
    :goto_26
    return-void

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcb
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xdf
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x83
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x87
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public isAllowCNAP(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 3322
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$1000(Lcom/mediatek/ims/ImsCallSessionProxy;)Lcom/mediatek/ims/ImsService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3323
    .local v0, "subId":I
    nop

    .line 3324
    const-string v1, "carrier_config"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3325
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3326
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 3327
    .local v2, "config":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    const-string v3, "disable_cnap_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3328
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$MyHandler;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v5, 0x2

    const-string v6, "disable CNAP"

    invoke-static {v3, v6, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 3329
    return v4

    .line 3332
    .end local v2    # "config":Landroid/os/PersistableBundle;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
