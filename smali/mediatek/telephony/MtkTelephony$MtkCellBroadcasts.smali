.class public Lmediatek/telephony/MtkTelephony$MtkCellBroadcasts;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkCellBroadcasts"
.end annotation


# static fields
.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 448
    const-string v0, "_id"

    const-string v1, "geo_scope"

    const-string v2, "plmn"

    const-string v3, "lac"

    const-string v4, "cid"

    const-string v5, "serial_number"

    const-string v6, "service_category"

    const-string v7, "language"

    const-string v8, "body"

    const-string v9, "date"

    const-string v10, "read"

    const-string v11, "format"

    const-string v12, "priority"

    const-string v13, "etws_warning_type"

    const-string v14, "cmas_message_class"

    const-string v15, "cmas_category"

    const-string v16, "cmas_response_type"

    const-string v17, "cmas_severity"

    const-string v18, "cmas_urgency"

    const-string v19, "cmas_certainty"

    const-string v20, "sub_id"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$MtkCellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
