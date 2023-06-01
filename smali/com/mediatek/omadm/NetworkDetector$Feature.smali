.class Lcom/mediatek/omadm/NetworkDetector$Feature;
.super Ljava/lang/Object;
.source "NetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/omadm/NetworkDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Feature"
.end annotation


# instance fields
.field public status:Z

.field public type:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/mediatek/omadm/NetworkDetector$Feature;->type:I

    .line 148
    iput-boolean p2, p0, Lcom/mediatek/omadm/NetworkDetector$Feature;->status:Z

    .line 149
    return-void
.end method

.method public static getFeature(Landroid/net/NetworkInfo;I)Lcom/mediatek/omadm/NetworkDetector$Feature;
    .registers 7
    .param p0, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p1, "phoneType"    # I

    .line 152
    const/4 v0, 0x0

    const-string v1, "NetworkDetector"

    if-nez p0, :cond_b

    .line 153
    const-string v2, "networkInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v0

    .line 156
    :cond_b
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 157
    .local v2, "type":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Network type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " NetworkInfo content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    packed-switch v2, :pswitch_data_58

    goto :goto_57

    .line 173
    :pswitch_3b
    new-instance v0, Lcom/mediatek/omadm/NetworkDetector$Feature;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/mediatek/omadm/NetworkDetector$Feature;-><init>(IZ)V

    return-object v0

    .line 163
    :pswitch_46
    packed-switch p1, :pswitch_data_60

    goto :goto_56

    .line 166
    :pswitch_4a
    goto :goto_56

    .line 168
    :pswitch_4b
    new-instance v0, Lcom/mediatek/omadm/NetworkDetector$Feature;

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/mediatek/omadm/NetworkDetector$Feature;-><init>(IZ)V

    .line 168
    return-object v0

    .line 171
    :goto_56
    nop

    .line 175
    :goto_57
    return-object v0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3b
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
    .end packed-switch
.end method
