.class public Lcom/mediatek/omadm/FotaApnSettings;
.super Ljava/lang/Object;
.source "FotaApnSettings.java"


# static fields
.field private static final APNPROJ:[Ljava/lang/String;

.field private static final FIELD_PORT:I = 0xd

.field private static final FIELD_PROXY:I = 0xc

.field private static final FIELD_SERVER:I = 0xe

.field private static final FIELD_TYPE:I = 0x0

.field private static final mAdmApnType:Ljava/lang/String; = "fota"


# instance fields
.field private final mProxyAddr:Ljava/lang/String;

.field private final mProxyPort:I

.field private final mSrvUrl:Ljava/lang/String;

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 67
    const-string v0, "type"

    const-string v1, "mmsc"

    const-string v2, "mmsproxy"

    const-string v3, "mmsport"

    const-string v4, "name"

    const-string v5, "apn"

    const-string v6, "bearer_bitmask"

    const-string v7, "protocol"

    const-string v8, "roaming_protocol"

    const-string v9, "authtype"

    const-string v10, "mvno_type"

    const-string v11, "mvno_match_data"

    const-string v12, "proxy"

    const-string v13, "port"

    const-string v14, "server"

    const-string v15, "user"

    const-string v16, "password"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/FotaApnSettings;->APNPROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "srvUrl"    # Ljava/lang/String;
    .param p2, "proxyAddr"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "debugText"    # Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/mediatek/omadm/FotaApnSettings;->mSrvUrl:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/mediatek/omadm/FotaApnSettings;->mProxyAddr:Ljava/lang/String;

    .line 204
    iput p3, p0, Lcom/mediatek/omadm/FotaApnSettings;->mProxyPort:I

    .line 205
    iput-object p4, p0, Lcom/mediatek/omadm/FotaApnSettings;->mText:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private static checkApnType(Ljava/lang/String;)Z
    .registers 7
    .param p0, "types"    # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 110
    return v1

    .line 113
    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_10
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 114
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string v5, "fota"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 116
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v4    # "type":Ljava/lang/String;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 120
    :cond_25
    return v1
.end method

.method private static getText(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "APN ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 92
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "val":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 96
    goto :goto_32

    .line 98
    :cond_20
    if-lez v1, :cond_27

    .line 99
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 104
    .end local v1    # "i":I
    :cond_35
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Z)Lcom/mediatek/omadm/FotaApnSettings;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "chCurr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/omadm/FotaException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load APN name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v0, "selBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 135
    .local v1, "selArgs":[Ljava/lang/String;
    if-eqz p4, :cond_26

    .line 136
    const-string v2, "current"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IS NOT NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_26
    invoke-static {p1}, Lcom/mediatek/omadm/FotaApnSettings;->valueNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 142
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3c
    const-string v2, "apn"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    move-object v1, v2

    .line 148
    :cond_4c
    const/4 v2, 0x0

    .line 150
    .local v2, "cur":Landroid/database/Cursor;
    nop

    .line 152
    :try_start_4e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/subId/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/mediatek/omadm/FotaApnSettings;->APNPROJ:[Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    .line 150
    move-object v4, p0

    move-object v9, v1

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v2, v4

    .line 159
    if-eqz v2, :cond_114

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, "ser_url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 162
    .local v5, "proxy_addr":Ljava/lang/String;
    const/16 v6, 0x50

    .line 164
    .local v6, "proxy_port":I
    :cond_7d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 165
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/omadm/FotaApnSettings;->checkApnType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 166
    const/16 v3, 0xe

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/omadm/FotaApnSettings;->valueNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .end local v4    # "ser_url":Ljava/lang/String;
    .local v3, "ser_url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c0

    .line 168
    invoke-static {v3}, Lcom/android/net/module/util/Inet4AddressUtils;->trimAddressZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a1
    .catchall {:try_start_4e .. :try_end_a1} :catchall_121

    move-object v3, v4

    .line 170
    :try_start_a2
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/net/URISyntaxException; {:try_start_a2 .. :try_end_a7} :catch_a8
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_121

    .line 173
    goto :goto_c0

    .line 171
    :catch_a8
    move-exception v4

    .line 172
    .local v4, "e":Ljava/net/URISyntaxException;
    :try_start_a9
    new-instance v7, Lcom/mediatek/omadm/FotaException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid Server url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mediatek/omadm/FotaException;-><init>(Ljava/lang/String;)V

    .end local v0    # "selBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "selArgs":[Ljava/lang/String;
    .end local v2    # "cur":Landroid/database/Cursor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "apnName":Ljava/lang/String;
    .end local p2    # "subId":I
    .end local p3    # "logTag":Ljava/lang/String;
    .end local p4    # "chCurr":Z
    throw v7

    .line 175
    .end local v4    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "selBuilder":Ljava/lang/StringBuilder;
    .restart local v1    # "selArgs":[Ljava/lang/String;
    .restart local v2    # "cur":Landroid/database/Cursor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "apnName":Ljava/lang/String;
    .restart local p2    # "subId":I
    .restart local p3    # "logTag":Ljava/lang/String;
    .restart local p4    # "chCurr":Z
    :cond_c0
    :goto_c0
    const/16 v4, 0xc

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/omadm/FotaApnSettings;->valueNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .end local v5    # "proxy_addr":Ljava/lang/String;
    .local v4, "proxy_addr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_105

    .line 177
    invoke-static {v4}, Lcom/android/net/module/util/Inet4AddressUtils;->trimAddressZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 178
    const/16 v5, 0xd

    .line 179
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/omadm/FotaApnSettings;->valueNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    .local v5, "portString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_e3
    .catchall {:try_start_a9 .. :try_end_e3} :catchall_121

    if-nez v7, :cond_105

    .line 182
    :try_start_e5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_e9} :catch_eb
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_121

    move v6, v7

    .line 185
    goto :goto_105

    .line 183
    :catch_eb
    move-exception v7

    .line 184
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_ec
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", use 80"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v5    # "portString":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_105
    :goto_105
    new-instance v5, Lcom/mediatek/omadm/FotaApnSettings;

    invoke-static {v2}, Lcom/mediatek/omadm/FotaApnSettings;->getText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/mediatek/omadm/FotaApnSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_ec .. :try_end_10e} :catchall_121

    .line 194
    if-eqz v2, :cond_113

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_113
    return-object v5

    .line 194
    .end local v3    # "ser_url":Ljava/lang/String;
    .end local v4    # "proxy_addr":Ljava/lang/String;
    .end local v6    # "proxy_port":I
    :cond_114
    if-eqz v2, :cond_119

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_119
    new-instance v3, Lcom/mediatek/omadm/FotaException;

    const-string v4, "Can not find valid APN"

    invoke-direct {v3, v4}, Lcom/mediatek/omadm/FotaException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :catchall_121
    move-exception v3

    if-eqz v2, :cond_127

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_127
    throw v3
.end method

.method private static valueNullCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 124
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/mediatek/omadm/FotaApnSettings;->mText:Ljava/lang/String;

    return-object v0
.end method
