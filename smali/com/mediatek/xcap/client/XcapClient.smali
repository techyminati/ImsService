.class public Lcom/mediatek/xcap/client/XcapClient;
.super Ljava/lang/Object;
.source "XcapClient.java"


# static fields
.field private static final AUTH_HDR:Ljava/lang/String; = "WWW-Authenticate"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tag.tel_dbg"

.field private static final RETRY_COUNT_AUTH:I = 0x3

.field private static final RETRY_COUNT_SS:I = 0x3

.field private static final SENLOG:Z

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static final SOCKET_READ_OPERATION_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "XcapClient"

.field private static final TELDBG:Z

.field protected static final hexArray:[C

.field private static mNafFqdnCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestCount:I


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;

.field private mContext:Landroid/content/Context;

.field private mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private mGbaManager:Lcom/mediatek/gba/GbaManager;

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mIsHttps:Z

.field private mNetwork:Landroid/net/Network;

.field private mPhoneId:I

.field private mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 100
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    .line 101
    const-string v0, "persist.vendor.log.tag.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    sput-boolean v2, Lcom/mediatek/xcap/client/XcapClient;->TELDBG:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/xcap/client/XcapClient;->mNafFqdnCache:Ljava/util/Map;

    .line 120
    sput v1, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    .line 153
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/xcap/client/XcapClient;->hexArray:[C

    .line 155
    const-string v0, "vendor.gsm.sim.ril.testsim"

    const-string v1, "vendor.gsm.sim.ril.testsim.2"

    const-string v2, "vendor.gsm.sim.ril.testsim.3"

    const-string v3, "vendor.gsm.sim.ril.testsim.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/xcap/client/XcapClient;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 116
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v2, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 142
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 168
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 169
    iput p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    .line 170
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XcapClient context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "phoneId"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 116
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v2, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 142
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 196
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 197
    iput p3, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XcapClient context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz p2, :cond_4b

    .line 201
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 203
    :cond_4b
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 116
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v2, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 142
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 182
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 183
    iput p3, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    .line 184
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XcapClient context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "network"    # Landroid/net/Network;
    .param p4, "phoneId"    # I

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 116
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v2, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    .line 142
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 214
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 215
    iput p4, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    .line 216
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XcapClient context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p3, :cond_4a

    .line 220
    iput-object p3, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 222
    :cond_4a
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 223
    return-void
.end method

.method private addExtraHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p2, "rawHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 257
    return-void

    .line 260
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    .local v1, "headerName":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string v3, "XcapClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v1    # "headerName":Ljava/lang/String;
    goto :goto_b

    .line 265
    :cond_49
    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .registers 8
    .param p1, "bytes"    # [B

    .line 377
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 379
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_24

    .line 380
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 381
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/mediatek/xcap/client/XcapClient;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 382
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 379
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 385
    .end local v1    # "j":I
    :cond_24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private composeUserAgent()V
    .registers 5

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isGbaEnabled":Z
    const-string v1, "GbaService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 228
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_11

    .line 229
    const-string v2, "XcapClient"

    const-string v3, "GbaService Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x1

    .line 233
    :cond_11
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 234
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    goto :goto_48

    .line 236
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XCAP Client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3d

    const-string v3, " 3gpp-gba"

    goto :goto_3f

    :cond_3d
    const-string v3, ""

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 238
    :goto_48
    return-void
.end method

.method public static encryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 738
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 739
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/4 v1, 0x0

    .line 742
    .local v1, "textByte":[B
    if-nez p0, :cond_a

    :try_start_7
    const-string v2, "null"

    return-object v2

    .line 744
    :cond_a
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    move-object v1, v2

    .line 748
    goto :goto_17

    .line 745
    :catch_12
    move-exception v2

    .line 746
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 747
    const/4 v1, 0x0

    .line 750
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_17
    if-nez v1, :cond_1c

    const-string v2, ""

    return-object v2

    .line 752
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "encryptedString":Ljava/lang/String;
    return-object v2
.end method

.method private execute(Ljava/net/URL;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 28
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "xml"    # [B
    .param p5, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    .local p4, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "retry once"

    const-string v6, "InterruptedException"

    const/4 v7, 0x3

    .line 445
    .local v7, "tryCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, "protocol":Ljava/lang/String;
    const/4 v9, 0x0

    .line 447
    .local v9, "success":Z
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableXcapTrustAll()Z

    move-result v10

    .line 448
    .local v10, "isTrustAll":Z
    const/4 v11, 0x0

    .line 449
    .local v11, "authCount":I
    const/4 v12, 0x0

    .line 451
    .local v12, "isAuth":Z
    const-string v0, "https"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    .line 454
    const-string v13, "XcapClient"

    if-eqz v10, :cond_5a

    .line 457
    :try_start_26
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 458
    .local v0, "sc":Ljavax/net/ssl/SSLContext;
    iget-object v15, v1, Lcom/mediatek/xcap/client/XcapClient;->mTrustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V
    :try_end_33
    .catch Ljava/security/GeneralSecurityException; {:try_start_26 .. :try_end_33} :catch_4e

    move/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "tryCount":I
    .local v16, "tryCount":I
    :try_start_36
    invoke-virtual {v0, v7, v15, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 459
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 461
    iget-object v7, v1, Lcom/mediatek/xcap/client/XcapClient;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v7}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 462
    const-string v7, "set SSL"

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/security/GeneralSecurityException; {:try_start_36 .. :try_end_4a} :catch_4c

    .line 466
    nop

    .end local v0    # "sc":Ljavax/net/ssl/SSLContext;
    goto :goto_5c

    .line 463
    :catch_4c
    move-exception v0

    goto :goto_51

    .end local v16    # "tryCount":I
    .restart local v7    # "tryCount":I
    :catch_4e
    move-exception v0

    move/from16 v16, v7

    .line 464
    .end local v7    # "tryCount":I
    .local v0, "se":Ljava/security/GeneralSecurityException;
    .restart local v16    # "tryCount":I
    :goto_51
    const-string v7, "Execute TrustAll exception"

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_5c

    .line 454
    .end local v0    # "se":Ljava/security/GeneralSecurityException;
    .end local v16    # "tryCount":I
    .restart local v7    # "tryCount":I
    :cond_5a
    move/from16 v16, v7

    .line 469
    .end local v7    # "tryCount":I
    .restart local v16    # "tryCount":I
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "execute M:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " :"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget v0, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    sput v0, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    .line 473
    :goto_86
    if-lez v16, :cond_376

    if-nez v9, :cond_376

    .line 475
    :try_start_8a
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;
    :try_end_8c
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_8c} :catch_346
    .catch Ljava/net/ProtocolException; {:try_start_8a .. :try_end_8c} :catch_333
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8c} :catch_2b5
    .catchall {:try_start_8a .. :try_end_8c} :catchall_2a9

    if-eqz v0, :cond_be

    .line 476
    move-object/from16 v14, p1

    :try_start_90
    invoke-virtual {v0, v14}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_98
    .catch Ljava/net/MalformedURLException; {:try_start_90 .. :try_end_98} :catch_b5
    .catch Ljava/net/ProtocolException; {:try_start_90 .. :try_end_98} :catch_ac
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_98} :catch_a3
    .catchall {:try_start_90 .. :try_end_98} :catchall_99

    goto :goto_c8

    .line 594
    :catchall_99
    move-exception v0

    move-object/from16 v15, p4

    move-object v2, v0

    move-object/from16 v19, v8

    move/from16 v21, v10

    goto/16 :goto_359

    .line 571
    :catch_a3
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v19, v8

    move/from16 v21, v10

    goto/16 :goto_2be

    .line 567
    :catch_ac
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v19, v8

    move/from16 v21, v10

    goto/16 :goto_33c

    .line 563
    :catch_b5
    move-exception v0

    move-object/from16 v15, p4

    move-object/from16 v19, v8

    move/from16 v21, v10

    goto/16 :goto_34f

    .line 478
    :cond_be
    move-object/from16 v14, p1

    :try_start_c0
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 481
    :goto_c8
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 482
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 483
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const v15, 0xea60

    invoke-virtual {v0, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 484
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 486
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_e1
    .catch Ljava/net/MalformedURLException; {:try_start_c0 .. :try_end_e1} :catch_2a6
    .catch Ljava/net/ProtocolException; {:try_start_c0 .. :try_end_e1} :catch_2a3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_e1} :catch_2a1
    .catchall {:try_start_c0 .. :try_end_e1} :catchall_29f

    move-object/from16 v15, p4

    :try_start_e3
    invoke-direct {v1, v0, v15}, Lcom/mediatek/xcap/client/XcapClient;->addExtraHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 488
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string v7, "User-Agent"
    :try_end_ea
    .catch Ljava/net/MalformedURLException; {:try_start_e3 .. :try_end_ea} :catch_29c
    .catch Ljava/net/ProtocolException; {:try_start_e3 .. :try_end_ea} :catch_299
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ea} :catch_297
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_295

    move-object/from16 v19, v8

    .end local v8    # "protocol":Ljava/lang/String;
    .local v19, "protocol":Ljava/lang/String;
    :try_start_ec
    iget-object v8, v1, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string v7, "Accept-Encoding"

    const-string v8, "*"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string v7, "Accept"

    const-string v8, "*/*"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/net/MalformedURLException; {:try_start_ec .. :try_end_103} :catch_290
    .catch Ljava/net/ProtocolException; {:try_start_ec .. :try_end_103} :catch_28b
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_103} :catch_287
    .catchall {:try_start_ec .. :try_end_103} :catchall_281

    .line 495
    if-eqz v4, :cond_122

    .line 496
    :try_start_105
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string v7, "Content-Type"

    invoke-virtual {v0, v7, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/net/MalformedURLException; {:try_start_105 .. :try_end_10c} :catch_11d
    .catch Ljava/net/ProtocolException; {:try_start_105 .. :try_end_10c} :catch_118
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_113
    .catchall {:try_start_105 .. :try_end_10c} :catchall_10d

    goto :goto_122

    .line 594
    :catchall_10d
    move-exception v0

    move-object v2, v0

    move/from16 v21, v10

    goto/16 :goto_359

    .line 571
    :catch_113
    move-exception v0

    move/from16 v21, v10

    goto/16 :goto_2be

    .line 567
    :catch_118
    move-exception v0

    move/from16 v21, v10

    goto/16 :goto_33c

    .line 563
    :catch_11d
    move-exception v0

    move/from16 v21, v10

    goto/16 :goto_34f

    .line 500
    :cond_122
    :goto_122
    const-string v0, ""

    if-nez v3, :cond_128

    move-object v7, v0

    goto :goto_12d

    :cond_128
    :try_start_128
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    .line 501
    .local v7, "content":Ljava/lang/String;
    :goto_12d
    iget-object v8, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-direct {v1, v8, v2, v7}, Lcom/mediatek/xcap/client/XcapClient;->getAkaDigestAuth(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/auth/AkaDigestAuth;

    move-result-object v8

    .line 503
    .local v8, "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    if-eqz v8, :cond_14c

    .line 504
    invoke-virtual {v8}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->calculateRequestDigest()Ljava/lang/String;

    .line 505
    iget-object v4, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v7

    .end local v7    # "content":Ljava/lang/String;
    .local v20, "content":Ljava/lang/String;
    const-string v7, "Authorization"
    :try_end_142
    .catch Ljava/net/MalformedURLException; {:try_start_128 .. :try_end_142} :catch_290
    .catch Ljava/net/ProtocolException; {:try_start_128 .. :try_end_142} :catch_28b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_142} :catch_287
    .catchall {:try_start_128 .. :try_end_142} :catchall_281

    .line 506
    move/from16 v21, v10

    .end local v10    # "isTrustAll":Z
    .local v21, "isTrustAll":Z
    :try_start_144
    invoke-virtual {v8}, Lcom/mediatek/xcap/auth/AkaDigestAuth;->createAuthorHeaderValue()Ljava/lang/String;

    move-result-object v10

    .line 505
    invoke-virtual {v4, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 503
    .end local v20    # "content":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .restart local v7    # "content":Ljava/lang/String;
    .restart local v10    # "isTrustAll":Z
    :cond_14c
    move-object/from16 v20, v7

    move/from16 v21, v10

    .line 510
    .end local v7    # "content":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .restart local v20    # "content":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    :goto_150
    iget-object v4, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v4}, Lcom/mediatek/xcap/client/XcapClient;->logRequestHeaders(Ljava/net/HttpURLConnection;)V

    .line 514
    const-string v4, "PUT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_191

    if-eqz v3, :cond_191

    .line 515
    iget-object v4, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_165
    .catch Ljava/net/MalformedURLException; {:try_start_144 .. :try_end_165} :catch_27e
    .catch Ljava/net/ProtocolException; {:try_start_144 .. :try_end_165} :catch_27b
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_165} :catch_279
    .catchall {:try_start_144 .. :try_end_165} :catchall_330

    .line 516
    const/4 v4, 0x0

    .line 519
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_166
    new-instance v10, Ljava/io/BufferedOutputStream;

    iget-object v7, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v10

    .line 520
    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 521
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_178} :catch_17f
    .catchall {:try_start_166 .. :try_end_178} :catchall_17d

    .line 527
    nop

    .line 528
    :try_start_179
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_17c
    .catch Ljava/net/MalformedURLException; {:try_start_179 .. :try_end_17c} :catch_27e
    .catch Ljava/net/ProtocolException; {:try_start_179 .. :try_end_17c} :catch_27b
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_279
    .catchall {:try_start_179 .. :try_end_17c} :catchall_330

    goto :goto_191

    .line 527
    :catchall_17d
    move-exception v0

    goto :goto_18a

    .line 522
    :catch_17f
    move-exception v0

    .line 523
    .local v0, "e":Ljava/io/IOException;
    :try_start_180
    const-string v7, "IOException"

    invoke-static {v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 525
    nop

    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v8    # "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v20    # "content":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0
    :try_end_18a
    .catchall {:try_start_180 .. :try_end_18a} :catchall_17d

    .line 527
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v8    # "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v20    # "content":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :goto_18a
    if-eqz v4, :cond_18f

    .line 528
    :try_start_18c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 530
    :cond_18f
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0

    .line 534
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :cond_191
    :goto_191
    iget-object v4, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 535
    .local v4, "responseCode":I
    iget-object v7, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 537
    .local v7, "responseMessage":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message :"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object v2, v0

    .line 543
    .local v2, "cipher":Ljava/lang/String;
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v0}, Lcom/mediatek/xcap/client/XcapClient;->logResponseHeaders(Ljava/net/HttpURLConnection;)V
    :try_end_1cd
    .catch Ljava/net/MalformedURLException; {:try_start_18c .. :try_end_1cd} :catch_27e
    .catch Ljava/net/ProtocolException; {:try_start_18c .. :try_end_1cd} :catch_27b
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_1cd} :catch_279
    .catchall {:try_start_18c .. :try_end_1cd} :catchall_330

    .line 545
    const/16 v0, 0xc8

    if-eq v4, v0, :cond_25a

    const/16 v0, 0x193

    if-eq v4, v0, :cond_25a

    const/16 v0, 0x130

    if-eq v4, v0, :cond_25a

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_25a

    const/16 v0, 0xc9

    if-ne v4, v0, :cond_1e3

    goto/16 :goto_25a

    .line 549
    :cond_1e3
    const/16 v0, 0x199

    if-ne v4, v0, :cond_205

    .line 550
    const/4 v9, 0x1

    .line 594
    if-nez v9, :cond_201

    if-nez v12, :cond_201

    .line 596
    add-int/lit8 v16, v16, -0x1

    .line 597
    if-lez v16, :cond_201

    .line 598
    const-wide/16 v17, 0x1388

    :try_start_1f2
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    .line 599
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f8
    .catch Ljava/lang/InterruptedException; {:try_start_1f2 .. :try_end_1f8} :catch_1f9

    goto :goto_201

    .line 601
    :catch_1f9
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 605
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_201
    :goto_201
    if-eqz v12, :cond_37e

    .line 606
    goto/16 :goto_276

    .line 552
    :cond_205
    const/16 v0, 0x191

    if-ne v4, v0, :cond_229

    .line 553
    :try_start_209
    const-string v0, "HTTP status code is 401. Force to run GBA"

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "gba.auth"

    const-string v10, "401"

    invoke-static {v0, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    add-int/lit8 v11, v11, 0x1

    .line 556
    const/4 v0, 0x3

    if-gt v11, v0, :cond_23d

    .line 557
    const/4 v12, 0x1

    .line 558
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    const-string v10, "WWW-Authenticate"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v10, v1, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    invoke-direct {v1, v0, v10, v2}, Lcom/mediatek/xcap/client/XcapClient;->handle401Exception(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_23d

    .line 561
    :cond_229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HTTP status code is (not 200 or 403 or 409)"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23d
    .catch Ljava/net/MalformedURLException; {:try_start_209 .. :try_end_23d} :catch_27e
    .catch Ljava/net/ProtocolException; {:try_start_209 .. :try_end_23d} :catch_27b
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_23d} :catch_279
    .catchall {:try_start_209 .. :try_end_23d} :catchall_330

    .line 594
    .end local v2    # "cipher":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v7    # "responseMessage":Ljava/lang/String;
    .end local v8    # "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .end local v20    # "content":Ljava/lang/String;
    :cond_23d
    :goto_23d
    if-nez v9, :cond_256

    if-nez v12, :cond_256

    .line 596
    add-int/lit8 v16, v16, -0x1

    .line 597
    if-lez v16, :cond_256

    .line 598
    const-wide/16 v7, 0x1388

    :try_start_247
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 599
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catch Ljava/lang/InterruptedException; {:try_start_247 .. :try_end_24d} :catch_24e

    goto :goto_256

    .line 601
    :catch_24e
    move-exception v0

    .line 602
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 605
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_256
    :goto_256
    if-eqz v12, :cond_2eb

    .line 606
    goto/16 :goto_2e9

    .line 547
    .restart local v2    # "cipher":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v7    # "responseMessage":Ljava/lang/String;
    .restart local v8    # "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .restart local v20    # "content":Ljava/lang/String;
    :cond_25a
    :goto_25a
    const/4 v9, 0x1

    .line 594
    if-nez v9, :cond_274

    if-nez v12, :cond_274

    .line 596
    add-int/lit8 v16, v16, -0x1

    .line 597
    if-lez v16, :cond_274

    .line 598
    const-wide/16 v17, 0x1388

    :try_start_265
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V

    .line 599
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26b
    .catch Ljava/lang/InterruptedException; {:try_start_265 .. :try_end_26b} :catch_26c

    goto :goto_274

    .line 601
    :catch_26c
    move-exception v0

    .line 602
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 605
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_274
    :goto_274
    if-eqz v12, :cond_37e

    .line 606
    :goto_276
    const/4 v12, 0x0

    goto/16 :goto_37e

    .line 571
    .end local v2    # "cipher":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v7    # "responseMessage":Ljava/lang/String;
    .end local v8    # "akaDigestAuth":Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .end local v20    # "content":Ljava/lang/String;
    :catch_279
    move-exception v0

    goto :goto_2be

    .line 567
    :catch_27b
    move-exception v0

    goto/16 :goto_33c

    .line 563
    :catch_27e
    move-exception v0

    goto/16 :goto_34f

    .line 594
    .end local v21    # "isTrustAll":Z
    .restart local v10    # "isTrustAll":Z
    :catchall_281
    move-exception v0

    move/from16 v21, v10

    move-object v2, v0

    .end local v10    # "isTrustAll":Z
    .restart local v21    # "isTrustAll":Z
    goto/16 :goto_359

    .line 571
    .end local v21    # "isTrustAll":Z
    .restart local v10    # "isTrustAll":Z
    :catch_287
    move-exception v0

    move/from16 v21, v10

    .end local v10    # "isTrustAll":Z
    .restart local v21    # "isTrustAll":Z
    goto :goto_2be

    .line 567
    .end local v21    # "isTrustAll":Z
    .restart local v10    # "isTrustAll":Z
    :catch_28b
    move-exception v0

    move/from16 v21, v10

    .end local v10    # "isTrustAll":Z
    .restart local v21    # "isTrustAll":Z
    goto/16 :goto_33c

    .line 563
    .end local v21    # "isTrustAll":Z
    .restart local v10    # "isTrustAll":Z
    :catch_290
    move-exception v0

    move/from16 v21, v10

    .end local v10    # "isTrustAll":Z
    .restart local v21    # "isTrustAll":Z
    goto/16 :goto_34f

    .line 594
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .local v8, "protocol":Ljava/lang/String;
    .restart local v10    # "isTrustAll":Z
    :catchall_295
    move-exception v0

    goto :goto_2ae

    .line 571
    :catch_297
    move-exception v0

    goto :goto_2ba

    .line 567
    :catch_299
    move-exception v0

    goto/16 :goto_338

    .line 563
    :catch_29c
    move-exception v0

    goto/16 :goto_34b

    .line 594
    :catchall_29f
    move-exception v0

    goto :goto_2ac

    .line 571
    :catch_2a1
    move-exception v0

    goto :goto_2b8

    .line 567
    :catch_2a3
    move-exception v0

    goto/16 :goto_336

    .line 563
    :catch_2a6
    move-exception v0

    goto/16 :goto_349

    .line 594
    :catchall_2a9
    move-exception v0

    move-object/from16 v14, p1

    :goto_2ac
    move-object/from16 v15, p4

    :goto_2ae
    move-object/from16 v19, v8

    move/from16 v21, v10

    move-object v2, v0

    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    goto/16 :goto_359

    .line 571
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "isTrustAll":Z
    :catch_2b5
    move-exception v0

    move-object/from16 v14, p1

    :goto_2b8
    move-object/from16 v15, p4

    :goto_2ba
    move-object/from16 v19, v8

    move/from16 v21, v10

    .line 572
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    :goto_2be
    :try_start_2be
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 574
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2f8

    .line 575
    add-int/lit8 v2, v16, -0x1

    if-lez v2, :cond_2f6

    .line 576
    const-string v2, "SocketTimeoutException: wait for retry."

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ce
    .catchall {:try_start_2be .. :try_end_2ce} :catchall_330

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    if-nez v9, :cond_2e7

    if-nez v12, :cond_2e7

    .line 596
    add-int/lit8 v16, v16, -0x1

    .line 597
    if-lez v16, :cond_2e7

    .line 598
    const-wide/16 v7, 0x1388

    :try_start_2d8
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 599
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2de
    .catch Ljava/lang/InterruptedException; {:try_start_2d8 .. :try_end_2de} :catch_2df

    goto :goto_2e7

    .line 601
    :catch_2df
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 605
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2e7
    :goto_2e7
    if-eqz v12, :cond_2eb

    .line 606
    :goto_2e9
    const/4 v0, 0x0

    move v12, v0

    .line 608
    :cond_2eb
    move-object/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v8, v19

    move/from16 v10, v21

    const/4 v7, 0x1

    goto/16 :goto_86

    .line 578
    .local v0, "e":Ljava/io/IOException;
    :cond_2f6
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    :try_start_2f7
    throw v0

    .line 580
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :cond_2f8
    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_328

    .line 584
    const-string v2, "HTTP 403 Forbidden"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31f

    .line 587
    const-string v2, "HTTP 400 Bad Request"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31d

    .line 588
    const/4 v9, 0x1

    .line 589
    new-instance v2, Ljava/io/IOException;

    const-string v4, "GBA hit HTTP 400 Bad Request"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v2

    .line 591
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :cond_31d
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0

    .line 585
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :cond_31f
    const/4 v9, 0x1

    .line 586
    new-instance v2, Ljava/io/IOException;

    const-string v4, "GBA hit HTTP 403 Forbidden"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v2

    .line 581
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :cond_328
    const/4 v9, 0x1

    .line 582
    const-string v2, "Throw UnknownHostException"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0

    .line 594
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :catchall_330
    move-exception v0

    move-object v2, v0

    goto :goto_359

    .line 567
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "isTrustAll":Z
    :catch_333
    move-exception v0

    move-object/from16 v14, p1

    :goto_336
    move-object/from16 v15, p4

    :goto_338
    move-object/from16 v19, v8

    move/from16 v21, v10

    .line 568
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .local v0, "e":Ljava/net/ProtocolException;
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    :goto_33c
    const-string v2, "ProtocolException"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 570
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0

    .line 563
    .end local v0    # "e":Ljava/net/ProtocolException;
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v9    # "success":Z
    .restart local v10    # "isTrustAll":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :catch_346
    move-exception v0

    move-object/from16 v14, p1

    :goto_349
    move-object/from16 v15, p4

    :goto_34b
    move-object/from16 v19, v8

    move/from16 v21, v10

    .line 564
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    :goto_34f
    const-string v2, "MalformedURLException"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 566
    nop

    .end local v9    # "success":Z
    .end local v11    # "authCount":I
    .end local v12    # "isAuth":Z
    .end local v16    # "tryCount":I
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .end local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "xml":[B
    .end local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p5    # "mimetype":Ljava/lang/String;
    throw v0
    :try_end_359
    .catchall {:try_start_2f7 .. :try_end_359} :catchall_330

    .line 594
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v9    # "success":Z
    .restart local v11    # "authCount":I
    .restart local v12    # "isAuth":Z
    .restart local v16    # "tryCount":I
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    .restart local p0    # "this":Lcom/mediatek/xcap/client/XcapClient;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "xml":[B
    .restart local p4    # "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p5    # "mimetype":Ljava/lang/String;
    :goto_359
    if-nez v9, :cond_372

    if-nez v12, :cond_372

    .line 596
    add-int/lit8 v16, v16, -0x1

    .line 597
    if-lez v16, :cond_372

    .line 598
    const-wide/16 v7, 0x1388

    :try_start_363
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 599
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_369
    .catch Ljava/lang/InterruptedException; {:try_start_363 .. :try_end_369} :catch_36a

    goto :goto_372

    .line 601
    :catch_36a
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    nop

    .line 605
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_372
    :goto_372
    if-eqz v12, :cond_375

    .line 606
    const/4 v12, 0x0

    .line 608
    :cond_375
    throw v2

    .line 473
    .end local v19    # "protocol":Ljava/lang/String;
    .end local v21    # "isTrustAll":Z
    .restart local v8    # "protocol":Ljava/lang/String;
    .restart local v10    # "isTrustAll":Z
    :cond_376
    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-object/from16 v19, v8

    move/from16 v21, v10

    .line 611
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v10    # "isTrustAll":Z
    .restart local v19    # "protocol":Ljava/lang/String;
    .restart local v21    # "isTrustAll":Z
    :cond_37e
    :goto_37e
    iget-object v0, v1, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private getAkaDigestAuth(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/auth/AkaDigestAuth;
    .registers 24
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 390
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 391
    .local v1, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    const/4 v2, 0x0

    .line 392
    .local v2, "wwwAuthHeader":Lcom/mediatek/xcap/header/WwwAuthHeader;
    sget-object v3, Lcom/mediatek/xcap/client/XcapClient;->mNafFqdnCache:Ljava/util/Map;

    iget v4, v0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "nafFqdn":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez p1, :cond_16

    .line 395
    return-object v4

    .line 398
    :cond_16
    iget-boolean v5, v0, Lcom/mediatek/xcap/client/XcapClient;->mIsHttps:Z

    const-string v6, ""

    invoke-direct {v0, v5, v6}, Lcom/mediatek/xcap/client/XcapClient;->getNafSecureProtocolId(ZLjava/lang/String;)[B

    move-result-object v5

    .line 400
    .local v5, "uaId":[B
    const-string v6, "XcapClient"

    if-eqz v5, :cond_14c

    array-length v7, v5

    if-nez v7, :cond_27

    goto/16 :goto_14c

    .line 404
    :cond_27
    sget-boolean v7, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_60

    .line 405
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2e
    array-length v10, v5

    if-ge v7, v10, :cond_60

    .line 406
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uaId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v11, v9, [Ljava/lang/Object;

    aget-byte v12, v5, v7

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v11, v8

    const-string v12, "0x%02x"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 409
    .end local v7    # "j":I
    :cond_60
    iget v7, v0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 412
    .local v7, "subId":I
    sget-object v10, Lcom/mediatek/xcap/client/XcapClient;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    iget v11, v0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    aget-object v10, v10, v11

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_84

    sget v10, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    if-le v10, v9, :cond_84

    .line 414
    const-string v8, "getAkaDigestAuth: force to run gba"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-object v4

    .line 418
    :cond_84
    const-string v10, "[hidden]"

    if-eqz v3, :cond_e4

    .line 419
    iget-object v11, v0, Lcom/mediatek/xcap/client/XcapClient;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    invoke-virtual {v11, v3, v5, v7}, Lcom/mediatek/gba/GbaManager;->getCachedKey(Ljava/lang/String;[BI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v1

    .line 420
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAkaDigestAuth: nafFqdn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v12, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    if-nez v12, :cond_9e

    move-object v13, v3

    goto :goto_9f

    :cond_9e
    move-object v13, v10

    :goto_9f
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", mPhoneId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "nafSessionKey="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    if-nez v12, :cond_b5

    move-object v12, v1

    goto :goto_b6

    :cond_b5
    move-object v12, v10

    :goto_b6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 420
    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getAuthHeader()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e4

    .line 424
    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getAuthHeader()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/xcap/header/WwwAuthHeader;->parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-result-object v2

    .line 425
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAkaDigestAuth: wwwAuthHeader="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_e4
    if-eqz v1, :cond_14b

    if-nez v2, :cond_e9

    goto :goto_14b

    .line 433
    :cond_e9
    nop

    .line 434
    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v4

    const/4 v11, 0x2

    invoke-static {v4, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 433
    invoke-direct {v0, v4}, Lcom/mediatek/xcap/client/XcapClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "password":Ljava/lang/String;
    new-array v9, v9, [Ljava/lang/Object;

    sget v11, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    const-string v8, "%08x"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, "nc":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAkaDigestAuth: password="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", nc="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", url="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    sget-boolean v11, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    if-nez v11, :cond_129

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    :cond_129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v6, Lcom/mediatek/xcap/auth/AkaDigestAuth;

    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object v11, v6

    move-object v12, v2

    move-object v15, v4

    move-object/from16 v17, v8

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    invoke-direct/range {v11 .. v19}, Lcom/mediatek/xcap/auth/AkaDigestAuth;-><init>(Lcom/mediatek/xcap/header/WwwAuthHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-object v6

    .line 430
    .end local v4    # "password":Ljava/lang/String;
    .end local v8    # "nc":Ljava/lang/String;
    :cond_14b
    :goto_14b
    return-object v4

    .line 401
    .end local v7    # "subId":I
    :cond_14c
    :goto_14c
    const-string v7, "uaId is invalid!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v4
.end method

.method private getNafSecureProtocolId(ZLjava/lang/String;)[B
    .registers 5
    .param p1, "isTlsEnabled"    # Z
    .param p2, "cipher"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNafSecureProtocolId: protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "https"

    goto :goto_11

    :cond_f
    const-string v1, "http"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isTlsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cipher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/gba/GbaManager;->getNafSecureProtocolId(ZLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private handle401Exception(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 15
    .param p1, "auth_header"    # Ljava/lang/String;
    .param p2, "isHttps"    # Z
    .param p3, "cipher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, "wwwAuthHeader":Lcom/mediatek/xcap/header/WwwAuthHeader;
    const/4 v1, 0x1

    sput v1, Lcom/mediatek/xcap/client/XcapClient;->mRequestCount:I

    .line 312
    const-string v2, "XcapClient"

    if-eqz p1, :cond_20

    .line 313
    invoke-static {p1}, Lcom/mediatek/xcap/header/WwwAuthHeader;->parse(Ljava/lang/String;)Lcom/mediatek/xcap/header/WwwAuthHeader;

    move-result-object v0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle401Exception: wwwAuthHeader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_20
    if-eqz p1, :cond_137

    if-nez v0, :cond_26

    goto/16 :goto_137

    .line 322
    :cond_26
    invoke-direct {p0, p2, p3}, Lcom/mediatek/xcap/client/XcapClient;->getNafSecureProtocolId(ZLjava/lang/String;)[B

    move-result-object v3

    .line 324
    .local v3, "uaId":[B
    sget-boolean v4, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    const/4 v5, 0x0

    if-nez v4, :cond_62

    .line 325
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_30
    array-length v6, v3

    if-ge v4, v6, :cond_62

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uaId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v1, [Ljava/lang/Object;

    aget-byte v8, v3, v4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "0x%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 330
    .end local v4    # "j":I
    :cond_62
    const/4 v4, 0x0

    .line 331
    .local v4, "nafFqdn":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mediatek/xcap/header/WwwAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "realm":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_131

    .line 333
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "segments":[Ljava/lang/String;
    aget-object v8, v7, v5

    aget-object v5, v7, v5

    const-string v9, "@"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handle401Exception: nafFqdn="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    const-string v9, "[hidden]"

    if-nez v8, :cond_94

    move-object v10, v4

    goto :goto_95

    :cond_94
    move-object v10, v9

    :goto_95
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", mPhoneId="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v5, Lcom/mediatek/xcap/client/XcapClient;->mNafFqdnCache:Ljava/util/Map;

    iget v10, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .end local v7    # "segments":[Ljava/lang/String;
    nop

    .line 342
    iget v5, p0, Lcom/mediatek/xcap/client/XcapClient;->mPhoneId:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 343
    .local v5, "subId":I
    iget-object v7, p0, Lcom/mediatek/xcap/client/XcapClient;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    invoke-virtual {v7, v4, v3, v1, v5}, Lcom/mediatek/gba/GbaManager;->runGbaAuthentication(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v1

    .line 345
    .local v1, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    if-eqz v1, :cond_ea

    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v7

    if-nez v7, :cond_ca

    goto :goto_ea

    .line 362
    :cond_ca
    invoke-virtual {v1, p1}, Lcom/mediatek/gba/NafSessionKey;->setAuthHeader(Ljava/lang/String;)V

    .line 363
    iget-object v7, p0, Lcom/mediatek/xcap/client/XcapClient;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    invoke-virtual {v7, v4, v3, v5, v1}, Lcom/mediatek/gba/GbaManager;->updateCachedKey(Ljava/lang/String;[BILcom/mediatek/gba/NafSessionKey;)V

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handle401Exception: nafSessionKey="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    if-nez v8, :cond_df

    move-object v9, v1

    :cond_df
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 346
    :cond_ea
    :goto_ea
    const-string v7, "handle401Exception: nafSessionKey Error!"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v1, :cond_130

    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_130

    .line 348
    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/IllegalStateException;

    if-eqz v7, :cond_130

    .line 349
    invoke-virtual {v1}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v7

    check-cast v7, Ljava/lang/IllegalStateException;

    .line 350
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "msg":Ljava/lang/String;
    const-string v8, "HTTP 403 Forbidden"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_125

    .line 355
    const-string v8, "HTTP 400 Bad Request"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11a

    goto :goto_130

    .line 356
    :cond_11a
    const-string v9, "GBA hit 400"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_125
    const-string v9, "GBA hit 403"

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    .end local v7    # "msg":Ljava/lang/String;
    :cond_130
    :goto_130
    return-void

    .line 339
    .end local v1    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v5    # "subId":I
    :cond_131
    const-string v1, "handle401Exception: realm is empty string !!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 318
    .end local v3    # "uaId":[B
    .end local v4    # "nafFqdn":Ljava/lang/String;
    .end local v6    # "realm":Ljava/lang/String;
    :cond_137
    :goto_137
    const-string v1, "handle401Exception: authentication header has something wrong"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private initialize()V
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/gba/GbaManager;->getDefaultGbaManager(Landroid/content/Context;)Lcom/mediatek/gba/GbaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mGbaManager:Lcom/mediatek/gba/GbaManager;

    .line 242
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v0}, Lcom/mediatek/xcap/client/XcapDebugParam;->load()V

    .line 243
    return-void
.end method

.method private logRequestHeaders(Ljava/net/HttpURLConnection;)V
    .registers 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 268
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    .line 270
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "XcapClient"

    const-string v2, "Request Headers:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 273
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 275
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_5d

    .line 276
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 277
    .local v7, "value":Ljava/lang/String;
    sget-boolean v8, Lcom/mediatek/xcap/client/XcapClient;->SENLOG:Z

    if-nez v8, :cond_5c

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v7    # "value":Ljava/lang/String;
    :cond_5c
    goto :goto_31

    .line 282
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d
    goto :goto_13

    .line 283
    :cond_5e
    return-void
.end method

.method private logResponseHeaders(Ljava/net/HttpURLConnection;)V
    .registers 12
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 286
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 288
    .local v0, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "XcapClient"

    const-string v2, "Response Headers:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 291
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 292
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 293
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_59

    .line 294
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    .local v7, "value":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_31

    .line 298
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_59
    goto :goto_13

    .line 299
    :cond_5a
    return-void
.end method


# virtual methods
.method public delete(Ljava/net/URI;)Ljava/net/HttpURLConnection;
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 11
    .param p1, "uri"    # Ljava/net/URI;
    .param p3, "eTag"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    const-string v2, "DELETE"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 9
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 12
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 13
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    .local p4, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 15
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    .local p4, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PUT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/mediatek/xcap/client/XcapClient;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XcapClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 13
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    .local p4, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    const-string v2, "PUT"

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/xcap/client/XcapClient;->execute(Ljava/net/URL;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    .line 250
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mConnection:Ljava/net/HttpURLConnection;

    .line 253
    :cond_a
    return-void
.end method
