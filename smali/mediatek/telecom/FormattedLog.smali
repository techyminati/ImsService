.class public Lmediatek/telecom/FormattedLog;
.super Ljava/lang/Object;
.source "FormattedLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmediatek/telecom/FormattedLog$Builder;,
        Lmediatek/telecom/FormattedLog$OpType;
    }
.end annotation


# instance fields
.field private mLogString:Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    if-eqz p2, :cond_12

    :try_start_5
    array-length v0, p2

    if-nez v0, :cond_9

    goto :goto_12

    .line 294
    :cond_9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 295
    :catch_10
    move-exception v0

    goto :goto_16

    .line 293
    :cond_12
    :goto_12
    move-object v0, p1

    .line 294
    :goto_13
    iput-object v0, p0, Lmediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;
    :try_end_15
    .catch Ljava/util/IllegalFormatException; {:try_start_5 .. :try_end_15} :catch_10

    .line 297
    goto :goto_29

    .line 296
    .local v0, "ife":Ljava/util/IllegalFormatException;
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;

    .line 298
    .end local v0    # "ife":Ljava/util/IllegalFormatException;
    :goto_29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lmediatek/telecom/FormattedLog$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [Ljava/lang/Object;
    .param p3, "x2"    # Lmediatek/telecom/FormattedLog$1;

    .line 53
    invoke-direct {p0, p1, p2}, Lmediatek/telecom/FormattedLog;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lmediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmediatek/telecom/FormattedLog$OpType;

    .line 53
    invoke-static {p0}, Lmediatek/telecom/FormattedLog;->opTypeToString(Lmediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static opTypeToString(Lmediatek/telecom/FormattedLog$OpType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Lmediatek/telecom/FormattedLog$OpType;

    .line 64
    sget-object v0, Lmediatek/telecom/FormattedLog$1;->$SwitchMap$mediatek$telecom$FormattedLog$OpType:[I

    invoke-virtual {p0}, Lmediatek/telecom/FormattedLog$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_d
    const-string v0, "Dump"

    return-object v0

    .line 68
    :pswitch_10
    const-string v0, "Notify"

    return-object v0

    .line 66
    :pswitch_13
    const-string v0, "OP"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Lmediatek/telecom/FormattedLog;->mLogString:Ljava/lang/String;

    return-object v0
.end method
