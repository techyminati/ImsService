.class public final Lmediatek/telephony/MtkTelephony$SmsCb$Intents;
.super Ljava/lang/Object;
.source "MtkTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony$SmsCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsCbMessage;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 417
    const-string v0, "message"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 418
    .local v0, "messages":[Landroid/os/Parcelable;
    if-nez v0, :cond_a

    .line 419
    const/4 v1, 0x0

    return-object v1

    .line 422
    :cond_a
    array-length v1, v0

    new-array v1, v1, [Landroid/telephony/SmsCbMessage;

    .line 424
    .local v1, "msgs":[Landroid/telephony/SmsCbMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_1a

    .line 425
    aget-object v3, v0, v2

    check-cast v3, Landroid/telephony/SmsCbMessage;

    aput-object v3, v1, v2

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 427
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method
