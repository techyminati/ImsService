.class public final Lcom/mediatek/provider/MtkContactsContract$Aas;
.super Ljava/lang/Object;
.source "MtkContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Aas"
.end annotation


# static fields
.field public static final AAS_METHOD:Ljava/lang/String; = "get_aas"

.field public static final ENCODE_SYMBOL:Ljava/lang/String; = "-"

.field public static final KEY_AAS:Ljava/lang/String; = "aas"

.field public static final LABEL_EMPTY:Ljava/lang/String; = ""

.field public static final PHONE_TYPE_AAS:I = 0x65

.field public static final PHONE_TYPE_EMPTY:I = 0x66


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildIndicator(II)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # I
    .param p1, "indexInSim"    # I

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    return-object v0
.end method

.method public static getLabel(Landroid/content/ContentResolver;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "indicator"    # Ljava/lang/CharSequence;

    .line 317
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 318
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    const-string v2, "get_aas"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .local v0, "response":Landroid/os/Bundle;
    const-string v1, ""

    if-eqz v0, :cond_18

    .line 320
    const-string v2, "aas"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 322
    :cond_18
    return-object v1
.end method
