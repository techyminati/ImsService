.class public Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;
.super Ljava/lang/Object;
.source "MtkFileSystemProviderHelper.java"


# static fields
.field private static final BASE_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final LOG_INOTIFY:Z = false

.field private static final MIMETYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIMETYPE_JPG:Ljava/lang/String; = "image/jpg"

.field private static final MIMETYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final TAG:Ljava/lang/String; = "FileSystemProvider"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 44
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 45
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 46
    const-string v1, "com.android.externalstorage.documents"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->BASE_URI:Landroid/net/Uri;

    .line 54
    const-string v1, "document_id"

    const-string v2, "mime_type"

    const-string v3, "_display_name"

    const-string v4, "last_modified"

    const-string v5, "flags"

    const-string v6, "_size"

    const-string v7, "_data"

    const-string v8, "is_drm"

    const-string v9, "drm_method"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private getTypeForDrmFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 168
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "client":Landroid/drm/DrmManagerClient;
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "rawFile":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 174
    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 176
    :cond_17
    const-string v2, "application/octet-stream"

    return-object v2
.end method

.method public static isMtkDrmApp()Z
    .registers 2

    .line 77
    const-string v0, "ro.vendor.mtk_oma_drm_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefaultProjection()[Ljava/lang/String;
    .registers 2

    .line 180
    sget-object v0, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTypeForNameMtk(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 144
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 145
    .local v0, "lastDot":I
    if-ltz v0, :cond_2a

    .line 146
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "extension":Ljava/lang/String;
    const-string v2, "dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->getTypeForDrmFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    :cond_1f
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "mime":Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 152
    return-object v2

    .line 157
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_2a
    invoke-static {p2}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "mime":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 159
    return-object v1

    .line 162
    :cond_31
    const-string v2, "application/octet-stream"

    return-object v2
.end method

.method public supportDRM(Ljava/io/File;Landroid/database/MatrixCursor$RowBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "row"    # Landroid/database/MatrixCursor$RowBuilder;
    .param p3, "docId"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "visibleFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 84
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->isMtkDrmApp()Z

    move-result v0

    const-string v3, "mime_type"

    if-eqz v0, :cond_be

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_be

    .line 88
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 89
    .local v4, "lastDot":I
    const/4 v0, 0x0

    .line 90
    .local v0, "extension":Ljava/lang/String;
    if-ltz v4, :cond_29

    .line 91
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_2a

    .line 90
    :cond_29
    move-object v5, v0

    .line 94
    .end local v0    # "extension":Ljava/lang/String;
    .local v5, "extension":Ljava/lang/String;
    :goto_2a
    if-eqz v5, :cond_be

    const-string v0, "dcf"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 96
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 98
    .local v12, "fileUri":Landroid/net/Uri;
    const-string v13, "_data = ?"

    .line 99
    .local v13, "whereClause":Ljava/lang/String;
    const-string v0, "is_drm"

    const-string v14, "drm_method"

    filled-new-array {v0, v14, v3}, [Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "projection":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 107
    .local v15, "drmCursor":Landroid/database/Cursor;
    move-object/from16 v16, p5

    .line 108
    .end local p1    # "file":Ljava/io/File;
    .local v16, "file":Ljava/io/File;
    if-eqz v16, :cond_a0

    .line 111
    move-object/from16 v11, p0

    :try_start_4b
    iget-object v6, v11, Lcom/mediatek/internal/content/MtkFileSystemProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 112
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v7

    const/16 v17, 0x0

    .line 111
    move-object v7, v12

    move-object v9, v13

    move-object/from16 v11, v17

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v15, v6

    .line 114
    if-eqz v15, :cond_9d

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 115
    nop

    .line 116
    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 117
    .local v6, "isDrm":I
    nop

    .line 118
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 119
    .local v7, "drmMethod":I
    nop

    .line 120
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_89
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_89} :catch_b8
    .catchall {:try_start_4b .. :try_end_89} :catchall_af

    .line 121
    .end local p4    # "mimeType":Ljava/lang/String;
    .local v9, "mimeType":Ljava/lang/String;
    :try_start_89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 122
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v14, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_97
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_97} :catch_9b
    .catchall {:try_start_89 .. :try_end_97} :catchall_99

    .line 125
    nop

    .end local v6    # "isDrm":I
    .end local v7    # "drmMethod":I
    goto :goto_a9

    .line 133
    :catchall_99
    move-exception v0

    goto :goto_b2

    .line 129
    :catch_9b
    move-exception v0

    goto :goto_bb

    .line 133
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p4    # "mimeType":Ljava/lang/String;
    :cond_9d
    move-object/from16 v9, p4

    goto :goto_a9

    .line 127
    :cond_a0
    :try_start_a0
    const-string v0, "FileSystemProvider"

    const-string v6, "VisibleFile is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_a7} :catch_b8
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_af

    move-object/from16 v9, p4

    .line 133
    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :goto_a9
    if-eqz v15, :cond_c2

    .line 134
    :goto_ab
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_c2

    .line 133
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p4    # "mimeType":Ljava/lang/String;
    :catchall_af
    move-exception v0

    move-object/from16 v9, p4

    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :goto_b2
    if-eqz v15, :cond_b7

    .line 134
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_b7
    throw v0

    .line 129
    .end local v9    # "mimeType":Ljava/lang/String;
    .restart local p4    # "mimeType":Ljava/lang/String;
    :catch_b8
    move-exception v0

    move-object/from16 v9, p4

    .line 133
    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :goto_bb
    if-eqz v15, :cond_c2

    .line 134
    goto :goto_ab

    .line 139
    .end local v4    # "lastDot":I
    .end local v5    # "extension":Ljava/lang/String;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v12    # "fileUri":Landroid/net/Uri;
    .end local v13    # "whereClause":Ljava/lang/String;
    .end local v15    # "drmCursor":Landroid/database/Cursor;
    .end local v16    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p4    # "mimeType":Ljava/lang/String;
    :cond_be
    move-object/from16 v16, p1

    move-object/from16 v9, p4

    .end local p1    # "file":Ljava/io/File;
    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    .restart local v16    # "file":Ljava/io/File;
    :cond_c2
    :goto_c2
    invoke-virtual {v1, v3, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 140
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_data"

    invoke-virtual {v1, v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 141
    return-void
.end method
