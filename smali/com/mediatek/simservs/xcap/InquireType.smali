.class public abstract Lcom/mediatek/simservs/xcap/InquireType;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "InquireType.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .line 48
    move-object/from16 v1, p0

    const-string v0, "\""

    const-string v2, "simservs.xml"

    const/4 v3, 0x0

    .line 49
    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v4, 0x0

    .line 50
    .local v4, "ret":Ljava/lang/String;
    const/4 v5, 0x0

    .line 51
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 52
    .local v6, "conn":Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/InquireType;->getNodeUri()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "nodeUri":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v9

    .line 58
    .local v9, "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableSimservQueryWhole()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 59
    const/4 v10, 0x1

    goto :goto_25

    :cond_23
    sget-boolean v10, Lcom/mediatek/simservs/client/SimServs;->sSimservQueryWhole:Z

    .line 60
    .local v10, "simservQueryWhole":Z
    :goto_25
    const/4 v12, 0x0

    if-eqz v10, :cond_36

    .line 61
    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v13, v2

    .line 61
    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 65
    :cond_36
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, "uri":Ljava/net/URI;
    invoke-static {}, Lcom/mediatek/simservs/client/SimServs;->getInstance()Lcom/mediatek/simservs/client/SimServs;

    move-result-object v13

    .line 68
    .local v13, "simSrv":Lcom/mediatek/simservs/client/SimServs;
    iget-object v14, v1, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    if-eqz v14, :cond_54

    .line 69
    new-instance v14, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v12, v1, Lcom/mediatek/simservs/xcap/InquireType;->mNetwork:Landroid/net/Network;

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v11

    invoke-direct {v14, v15, v12, v11}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;Landroid/net/Network;I)V

    move-object v3, v14

    .line 71
    goto :goto_62

    .line 75
    :cond_54
    new-instance v11, Lcom/mediatek/xcap/client/XcapClient;

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/SimServs;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v13}, Lcom/mediatek/simservs/client/SimServs;->getPhoneId()I

    move-result v14

    invoke-direct {v11, v12, v14}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/content/Context;I)V

    move-object v3, v11

    .line 78
    :goto_62
    iget-object v11, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    if-eqz v11, :cond_7f

    .line 79
    const-string v11, "X-3GPP-Intended-Identity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_7f
    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapDebugParam;->getDisableETag()Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    goto :goto_89

    :cond_87
    sget-boolean v0, Lcom/mediatek/simservs/client/SimServs;->sETagDisable:Z

    :goto_89
    move v11, v0

    .line 83
    .local v11, "disableETag":Z
    iget-object v0, v1, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    if-eqz v0, :cond_97

    if-nez v11, :cond_97

    .line 84
    const-string v0, "If-None-Match"

    iget-object v12, v1, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    invoke-interface {v7, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_97
    invoke-virtual {v3, v2, v7}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    move-object v6, v0

    .line 89
    if-eqz v6, :cond_128

    .line 90
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_a2} :catch_151
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_a2} :catch_12f
    .catchall {:try_start_f .. :try_end_a2} :catchall_12d

    move v12, v0

    .line 91
    .local v12, "responseCode":I
    const/16 v0, 0xc8

    if-eq v12, v0, :cond_f2

    const/16 v14, 0x130

    if-ne v12, v14, :cond_ac

    goto :goto_f2

    .line 118
    :cond_ac
    const/16 v14, 0x199

    if-ne v12, v14, :cond_eb

    .line 120
    const/4 v4, 0x0

    .line 121
    :try_start_b1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 123
    if-eqz v5, :cond_d2

    const-string v0, "true"

    const-string v15, "xcap.handl409"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 124
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    const-string v15, "phrase"

    invoke-virtual {v1, v15, v5}, Lcom/mediatek/simservs/xcap/InquireType;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "nodeUri":Ljava/lang/String;
    .end local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v10    # "simservQueryWhole":Z
    .end local v11    # "disableETag":Z
    .end local v12    # "responseCode":I
    .end local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v0

    .line 126
    .restart local v2    # "uri":Ljava/net/URI;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "nodeUri":Ljava/lang/String;
    .restart local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v10    # "simservQueryWhole":Z
    .restart local v11    # "disableETag":Z
    .restart local v12    # "responseCode":I
    .restart local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :cond_d2
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v0, v14}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "nodeUri":Ljava/lang/String;
    .end local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v10    # "simservQueryWhole":Z
    .end local v11    # "disableETag":Z
    .end local v12    # "responseCode":I
    .end local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v0
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_d8} :catch_da
    .catchall {:try_start_b1 .. :try_end_d8} :catchall_d8

    .line 132
    .restart local v2    # "uri":Ljava/net/URI;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "nodeUri":Ljava/lang/String;
    .restart local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v10    # "simservQueryWhole":Z
    .restart local v11    # "disableETag":Z
    .restart local v12    # "responseCode":I
    .restart local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :catchall_d8
    move-exception v0

    goto :goto_e4

    .line 128
    :catch_da
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    :try_start_db
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    new-instance v15, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v15, v14}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "nodeUri":Ljava/lang/String;
    .end local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v10    # "simservQueryWhole":Z
    .end local v11    # "disableETag":Z
    .end local v12    # "responseCode":I
    .end local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v15
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_d8

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "uri":Ljava/net/URI;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "nodeUri":Ljava/lang/String;
    .restart local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .restart local v10    # "simservQueryWhole":Z
    .restart local v11    # "disableETag":Z
    .restart local v12    # "responseCode":I
    .restart local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :goto_e4
    if-eqz v5, :cond_e9

    .line 133
    :try_start_e6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_e9
    nop

    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v0

    .line 137
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :cond_eb
    const/4 v4, 0x0

    .line 138
    new-instance v0, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v0, v12}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v0

    .line 92
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :cond_f2
    :goto_f2
    const-string v14, "ETag"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "etagValue":Ljava/lang/String;
    if-eqz v14, :cond_101

    .line 95
    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 96
    iput-object v14, v1, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    const/4 v15, 0x0

    goto :goto_107

    .line 98
    :cond_101
    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/mediatek/simservs/xcap/InquireType;->mEtag:Ljava/lang/String;

    .line 102
    :goto_107
    if-eqz v11, :cond_10b

    .line 103
    iput-boolean v15, v1, Lcom/mediatek/simservs/xcap/InquireType;->mIsSupportEtag:Z
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_10b} :catch_151
    .catch Ljava/net/URISyntaxException; {:try_start_e6 .. :try_end_10b} :catch_12f
    .catchall {:try_start_e6 .. :try_end_10b} :catchall_12d

    .line 106
    :cond_10b
    const/16 v0, 0xc8

    if-ne v12, v0, :cond_128

    .line 107
    const/4 v5, 0x0

    .line 109
    :try_start_110
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 111
    invoke-virtual {v1, v5}, Lcom/mediatek/simservs/xcap/InquireType;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_119
    .catchall {:try_start_110 .. :try_end_119} :catchall_120

    move-object v4, v0

    .line 113
    if-eqz v5, :cond_128

    .line 114
    :try_start_11c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_128

    .line 113
    :catchall_120
    move-exception v0

    if-eqz v5, :cond_126

    .line 114
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 116
    :cond_126
    nop

    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v0
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_128} :catch_151
    .catch Ljava/net/URISyntaxException; {:try_start_11c .. :try_end_128} :catch_12f
    .catchall {:try_start_11c .. :try_end_128} :catchall_12d

    .line 147
    .end local v2    # "uri":Ljava/net/URI;
    .end local v8    # "nodeUri":Ljava/lang/String;
    .end local v9    # "debugParam":Lcom/mediatek/xcap/client/XcapDebugParam;
    .end local v10    # "simservQueryWhole":Z
    .end local v11    # "disableETag":Z
    .end local v12    # "responseCode":I
    .end local v13    # "simSrv":Lcom/mediatek/simservs/client/SimServs;
    .end local v14    # "etagValue":Ljava/lang/String;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :cond_128
    :goto_128
    nop

    .line 148
    :goto_129
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_136

    .line 147
    :catchall_12d
    move-exception v0

    goto :goto_15b

    .line 144
    :catch_12f
    move-exception v0

    .line 145
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_130
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_12d

    .line 147
    .end local v0    # "e":Ljava/net/URISyntaxException;
    if-eqz v3, :cond_136

    .line 148
    goto :goto_129

    .line 152
    :cond_136
    :goto_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response XML:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/mediatek/simservs/client/SimServs;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XcapElement"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v4

    .line 141
    :catch_151
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    :try_start_152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    new-instance v2, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v2, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    throw v2
    :try_end_15b
    .catchall {:try_start_152 .. :try_end_15b} :catchall_12d

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v4    # "ret":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/mediatek/simservs/xcap/InquireType;
    :goto_15b
    if-eqz v3, :cond_160

    .line 148
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 150
    :cond_160
    throw v0
.end method
