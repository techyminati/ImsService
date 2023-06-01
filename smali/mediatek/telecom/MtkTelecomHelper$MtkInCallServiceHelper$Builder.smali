.class Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
.super Ljava/lang/Object;
.source "MtkTelecomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->mBundle:Landroid/os/Bundle;

    .line 68
    return-void
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .registers 2

    .line 86
    iget-object v0, p0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method putIntParam(Ljava/lang/String;I)Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 81
    iget-object v0, p0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    return-object p0
.end method

.method putStringArrayListParam(Ljava/lang/String;Ljava/util/ArrayList;)Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;"
        }
    .end annotation

    .line 76
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    return-object p0
.end method

.method putStringParam(Ljava/lang/String;Ljava/lang/String;)Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0
.end method
