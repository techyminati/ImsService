.class public Lcom/mediatek/omadm/Apns;
.super Ljava/lang/Object;
.source "Apns.java"


# static fields
.field private static final APN_CLASS_1:I = 0x1

.field private static final APN_CLASS_2:I = 0x2

.field private static final APN_CLASS_3:I = 0x3

.field private static final APN_CLASS_4:I = 0x4

.field private static final APN_CLASS_5:I = 0x5

.field private static final CLASSES_TYPES:[Ljava/lang/String;

.field private static final CLASS_TYPE_1:Ljava/lang/String; = "\'%ims%\'"

.field private static final CLASS_TYPE_2:Ljava/lang/String; = "\'%fota%\'"

.field private static final CLASS_TYPE_3:Ljava/lang/String; = "\'%default%\'"

.field private static final CLASS_TYPE_4:Ljava/lang/String; = "\'%cbs,mms%\'"

.field private static final CLASS_TYPE_5:Ljava/lang/String; = "\'%800%\'"

.field public static DEBUG:Z = false

.field private static final IPV4V6_MASK:I = 0x3

.field private static final IPV4_MASK:I = 0x1

.field private static final IPV6_MASK:I = 0x2

.field private static final PROJECT_APN:[Ljava/lang/String;

.field private static final PROJECT_CENABLED:[Ljava/lang/String;

.field private static final PROJECT_CIDS:[Ljava/lang/String;

.field private static final PROJECT_PROT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    .line 50
    const-class v0, Lcom/mediatek/omadm/Apns;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "protocol"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->PROJECT_PROT:[Ljava/lang/String;

    .line 69
    const-string v0, "\'%ims%\'"

    const-string v1, "\'%fota%\'"

    const-string v2, "\'%default%\'"

    const-string v3, "\'%cbs,mms%\'"

    const-string v4, "\'%800%\'"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->CLASSES_TYPES:[Ljava/lang/String;

    .line 77
    const-string v0, "apn"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->PROJECT_APN:[Ljava/lang/String;

    .line 81
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->PROJECT_CIDS:[Ljava/lang/String;

    .line 85
    const-string v0, "carrier_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/omadm/Apns;->PROJECT_CENABLED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createApnClsSelect(I)Ljava/lang/String;
    .registers 5
    .param p0, "apnCls"    # I

    .line 90
    const/4 v0, 0x1

    if-lt p0, v0, :cond_42

    const/4 v0, 0x5

    if-le p0, v0, :cond_7

    goto :goto_42

    .line 94
    :cond_7
    sget-object v1, Lcom/mediatek/omadm/Apns;->CLASSES_TYPES:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    .line 95
    .local v1, "classTypes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "sel":Ljava/lang/StringBuilder;
    const-string v3, " like "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    if-ge p0, v0, :cond_3d

    .line 100
    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "numeric"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, "=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 91
    .end local v1    # "classTypes":Ljava/lang/String;
    .end local v2    # "sel":Ljava/lang/StringBuilder;
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public static enable(Landroid/content/Context;II)I
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I
    .param p2, "enable"    # I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "err":I
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "sel":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v2, :cond_27

    sget-object v2, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnabled.selection["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_27
    if-nez v1, :cond_2d

    .line 117
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 120
    :cond_2d
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 121
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "carrier_enabled"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 126
    .local v4, "numRows":I
    if-ge v4, v3, :cond_4a

    .line 127
    const/4 v0, 0x7

    .line 130
    :cond_4a
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 132
    return v0
.end method

.method public static getId(Landroid/content/Context;I)I
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I

    .line 166
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    if-le p1, v0, :cond_a

    .line 167
    :cond_6
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 170
    :cond_a
    if-ne v0, p1, :cond_f

    .line 171
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 174
    :cond_f
    return p1
.end method

.method public static getIpVersions(Landroid/content/Context;I)I
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "ipVMask":I
    const/4 v1, 0x0

    .line 180
    .local v1, "ipVStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, "err":I
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, "sel":Ljava/lang/String;
    sget-boolean v3, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v3, :cond_29

    sget-object v3, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIpVersions.selection["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_29
    if-nez v9, :cond_2f

    .line 185
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 188
    :cond_2f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/mediatek/omadm/Apns;->PROJECT_PROT:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 191
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_50

    .line 192
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 193
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 195
    :cond_4c
    const/4 v2, 0x7

    .line 197
    :goto_4d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_50
    const-string v4, "IPVersions["

    if-eqz v1, :cond_94

    .line 200
    sget-boolean v5, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v5, :cond_74

    sget-object v5, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "].string = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_74
    const-string v4, "IP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 202
    or-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 204
    :cond_7f
    const-string v4, "V4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 205
    or-int/lit8 v0, v0, 0x1

    .line 207
    :cond_89
    const-string v4, "V6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 208
    or-int/lit8 v0, v0, 0x2

    goto :goto_b3

    .line 211
    :cond_94
    sget-boolean v5, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v5, :cond_b3

    .line 212
    sget-object v5, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = null"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v2, 0xa

    .line 216
    :cond_b3
    :goto_b3
    invoke-static {v2}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 217
    return v0
.end method

.method public static getName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "err":I
    const/4 v1, 0x0

    .line 223
    .local v1, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "sel":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    const-string v9, "] = "

    if-eqz v2, :cond_28

    sget-object v2, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getName.selection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_28
    if-nez v8, :cond_2e

    .line 226
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 229
    :cond_2e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/omadm/Apns;->PROJECT_APN:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 232
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_50

    .line 233
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 234
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    .line 236
    :cond_4b
    const/16 v0, 0xa

    .line 238
    :goto_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_50
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 242
    sget-boolean v3, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v3, :cond_73

    sget-object v3, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_73
    return-object v1
.end method

.method public static isEnabled(Landroid/content/Context;I)I
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "err":I
    const/4 v1, -0x1

    .line 138
    .local v1, "enabled":I
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "sel":Ljava/lang/String;
    if-nez v8, :cond_11

    .line 141
    const/4 v0, 0x7

    .line 142
    sget-object v2, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    const-string v3, "isEnabled.selection is NULL!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 145
    :cond_11
    sget-object v2, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnabled.selection["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_2f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/omadm/Apns;->PROJECT_CENABLED:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 151
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_57

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 153
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_54

    .line 155
    :cond_4c
    const/4 v0, 0x7

    .line 156
    sget-object v3, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    const-string v4, "isEnabledValue got invalid content"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_57
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 162
    return v1
.end method

.method public static setIpVersions(Landroid/content/Context;II)I
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I
    .param p2, "ipvFlags"    # I

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "err":I
    const/4 v1, 0x0

    .line 249
    .local v1, "ipVMask":I
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "sel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 252
    .local v3, "ipvStr":Ljava/lang/String;
    if-nez v2, :cond_d

    .line 253
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 256
    :cond_d
    sget-boolean v4, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIpVersions.selection["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2f
    packed-switch p2, :pswitch_data_5c

    goto :goto_3c

    .line 268
    :pswitch_33
    const-string v3, "IPV4V6"

    .line 269
    goto :goto_3c

    .line 264
    :pswitch_36
    const-string v3, "IPV6"

    .line 265
    goto :goto_3c

    .line 260
    :pswitch_39
    const-string v3, "IP"

    .line 261
    nop

    .line 274
    :goto_3c
    if-eqz v3, :cond_58

    .line 275
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 276
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v6, "protocol"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v2, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 279
    .local v6, "numRows":I
    if-ge v6, v5, :cond_58

    .line 280
    const/16 v0, 0xa

    .line 284
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "numRows":I
    :cond_58
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 285
    return v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
    .end packed-switch
.end method

.method public static setName(Landroid/content/Context;ILjava/lang/String;)I
    .registers 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "apnCls"    # I
    .param p2, "apnName"    # Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "err":I
    const/4 v1, 0x0

    .line 291
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 292
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v4, "apn"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {p1}, Lcom/mediatek/omadm/Apns;->createApnClsSelect(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "sel":Ljava/lang/String;
    sget-boolean v5, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    const-string v6, "] = "

    if-eqz v5, :cond_33

    sget-object v5, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setName.selection["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_33
    if-nez v4, :cond_39

    .line 297
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 300
    :cond_39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v2, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 303
    .local v5, "rows":I
    sget-boolean v7, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v7, :cond_6c

    sget-object v7, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", rows = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_6c
    sget-boolean v7, Lcom/mediatek/omadm/Apns;->DEBUG:Z

    if-eqz v7, :cond_90

    .line 305
    invoke-static {p0, p1}, Lcom/mediatek/omadm/Apns;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 306
    sget-object v7, Lcom/mediatek/omadm/Apns;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check.setName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_90
    if-ge v5, v3, :cond_94

    .line 310
    const/16 v0, 0xa

    .line 313
    :cond_94
    invoke-static {v0}, Lcom/mediatek/omadm/PalConstDefs;->throwEcxeption(I)V

    .line 314
    return v0
.end method
