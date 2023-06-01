.class public Lcom/mediatek/simservs/xcap/XcapException;
.super Ljava/lang/Exception;
.source "XcapException.java"


# static fields
.field public static final AUTHENTICATION_EXCEPTION:I = 0x9

.field public static final AUTH_CHALLENGE_EXCEPTION:I = 0x6

.field public static final CONNECTION_POOL_TIMEOUT_EXCEPTION:I = 0x1

.field public static final CONNECT_TIMEOUT_EXCEPTION:I = 0x2

.field public static final CREDENTIALS_NOT_AVAILABLE_EXCEPTION:I = 0x7

.field public static final HTTP_EXCEPTION:I = 0xe

.field public static final HTTP_RECOVERABL_EEXCEPTION:I = 0x4

.field public static final INVALID_CREDENTIALS_EXCEPTION:I = 0x8

.field public static final MALFORMED_CHALLENGE_EXCEPTION:I = 0x5

.field public static final MALFORMED_COOKIE_EXCEPTION:I = 0xa

.field public static final NO_EXCEPTION:I = 0x0

.field public static final NO_HTTP_RESPONSE_EXCEPTION:I = 0x3

.field public static final PROTOCOL_EXCEPTION:I = 0xd

.field public static final REDIRECT_EXCEPTION:I = 0xb

.field public static final URI_EXCEPTION:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExceptionCode:I

.field private mHttpErrorCode:I

.field private mIsConnectionError:Z

.field private mXcapErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "httpErrorCode"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 31
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 41
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "httpErrorCode"    # I
    .param p2, "xcapErrorMessage"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 31
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 51
    iput p1, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 52
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapException;->mXcapErrorMessage:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 4
    .param p1, "httpException"    # Ljava/io/IOException;

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 31
    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 61
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBA hit HTTP 403 Forbidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 62
    const/16 v0, 0x193

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 63
    return-void

    .line 64
    :cond_1b
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBA hit HTTP 400 Bad Request"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 65
    const-string v0, "XcapException"

    const-string v1, "IOException 400 bad request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 v0, 0x190

    iput v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    .line 67
    return-void

    .line 70
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mXcapErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionCodeCode()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mExceptionCode:I

    return v0
.end method

.method public getHttpErrorCode()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mHttpErrorCode:I

    return v0
.end method

.method public isConnectionError()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/mediatek/simservs/xcap/XcapException;->mIsConnectionError:Z

    return v0
.end method
