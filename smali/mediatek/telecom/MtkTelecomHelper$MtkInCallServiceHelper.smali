.class public Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper;
.super Ljava/lang/Object;
.source "MtkTelecomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkTelecomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkInCallServiceHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
    }
.end annotation


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "key_action"

.field private static final PARAM_INT_TYPE:Ljava/lang/String; = "param_int_type"

.field private static final PARAM_STRING_ARRAY_CALL_IDS:Ljava/lang/String; = "param_string_array_call_ids"

.field private static final PARAM_STRING_PHONE_NUMBER:Ljava/lang/String; = "param_string_phone_number"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParamsForSetSortedIncomingCallList(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 53
    .local p0, "callIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper;->obtainBuilder()Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;

    move-result-object v0

    .line 54
    const-string v1, "param_string_array_call_ids"

    invoke-virtual {v0, v1, p0}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->putStringArrayListParam(Ljava/lang/String;Ljava/util/ArrayList;)Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method private static obtainBuilder()Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;
    .registers 1

    .line 60
    new-instance v0, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;

    invoke-direct {v0}, Lmediatek/telecom/MtkTelecomHelper$MtkInCallServiceHelper$Builder;-><init>()V

    return-object v0
.end method
