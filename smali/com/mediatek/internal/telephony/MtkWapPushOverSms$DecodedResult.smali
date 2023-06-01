.class final Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;
.super Ljava/lang/Object;
.source "MtkWapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodedResult"
.end annotation


# instance fields
.field contentType:Ljava/lang/String;

.field contentTypeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field header:[B

.field headerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field intentData:[B

.field mimeType:Ljava/lang/String;

.field parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field pduType:I

.field phoneId:I

.field statusCode:I

.field subId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

.field transactionId:I

.field wapAppId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;->this$0:Lcom/mediatek/internal/telephony/MtkWapPushOverSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/MtkWapPushOverSms;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/MtkWapPushOverSms$1;

    .line 403
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/MtkWapPushOverSms$DecodedResult;-><init>(Lcom/mediatek/internal/telephony/MtkWapPushOverSms;)V

    return-void
.end method
