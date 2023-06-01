.class public Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;
.super Ljava/lang/Object;
.source "OpenMsyncAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
    }
.end annotation


# static fields
.field private static final APP_LIST_PATH:Ljava/lang/String; = "system/etc/open_msync_app_list.xml"

.field private static final NODE_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final TAG:Ljava/lang/String; = "OpenMsyncAppList"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static sInstance:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;


# instance fields
.field private isRead:Z

.field private mMsyncAppCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->isRead:Z

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;
    .registers 1

    .line 56
    sget-object v0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->sInstance:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    invoke-direct {v0}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;-><init>()V

    sput-object v0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->sInstance:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    .line 59
    :cond_b
    sget-object v0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->sInstance:Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;

    return-object v0
.end method

.method private parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 125
    const-string v0, "OpenMsyncAppList"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;>;"
    const/4 v2, 0x0

    .line 128
    .local v2, "document":Lorg/w3c/dom/Document;
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 129
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 130
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_14} :catch_7a
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_14} :catch_73
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_6c

    move-object v2, v5

    .line 140
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 142
    const-string v3, "app"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 144
    .local v3, "appList":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 145
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 146
    .local v5, "node_applic":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 147
    .local v6, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v7, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;

    invoke-direct {v7, p0}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;-><init>(Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;)V

    .line 148
    .local v7, "applic":Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_31
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_51

    .line 149
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 150
    .local v9, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packagename"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 151
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 148
    .end local v9    # "childNode":Lorg/w3c/dom/Node;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 155
    .end local v8    # "j":I
    :cond_51
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dom2xml: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v5    # "node_applic":Lorg/w3c/dom/Node;
    .end local v6    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "applic":Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 158
    .end local v4    # "i":I
    :cond_6b
    return-object v1

    .line 137
    .end local v3    # "appList":Lorg/w3c/dom/NodeList;
    :catch_6c
    move-exception v3

    .line 138
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "IOException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    return-object v1

    .line 134
    .end local v3    # "e":Ljava/io/IOException;
    :catch_73
    move-exception v3

    .line 135
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "dom2xml SAXException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    return-object v1

    .line 131
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_7a
    move-exception v3

    .line 132
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "dom2xml ParserConfigurationException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return-object v1
.end method


# virtual methods
.method public isRead()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->isRead:Z

    return v0
.end method

.method public isScaledBySurfaceView(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->mMsyncAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;

    .line 101
    .local v1, "app":Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/OpenMsyncAppList$Applic;
    :cond_20
    goto :goto_8

    .line 106
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public loadOpenMsyncAppList()V
    .registers 7

    .line 70
    const-string v0, "close failed.."

    const-string v1, "OpenMsyncAppList"

    const-string v2, "loadTunerAppList + "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, "target":Ljava/io/File;
    const/4 v3, 0x0

    .line 74
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_b
    new-instance v4, Ljava/io/File;

    const-string v5, "system/etc/open_msync_app_list.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 76
    const-string v4, "Target file doesn\'t exist: system/etc/open_msync_app_list.xml"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_45
    .catchall {:try_start_b .. :try_end_1e} :catchall_43

    .line 86
    if-eqz v3, :cond_29

    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_29

    .line 87
    :catch_24
    move-exception v4

    .line 88
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 89
    .end local v4    # "e":Ljava/io/IOException;
    :cond_29
    :goto_29
    nop

    .line 77
    :goto_2a
    return-void

    .line 79
    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 80
    invoke-direct {p0, v3}, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->mMsyncAppCache:Ljava/util/ArrayList;

    .line 81
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/appresolutiontuner/OpenMsyncAppList;->isRead:Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3a} :catch_45
    .catchall {:try_start_2b .. :try_end_3a} :catchall_43

    .line 86
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 89
    :cond_3d
    :goto_3d
    goto :goto_51

    .line 87
    :catch_3e
    move-exception v4

    .line 88
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_51

    .line 85
    :catchall_43
    move-exception v4

    goto :goto_57

    .line 82
    :catch_45
    move-exception v4

    .line 83
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_46
    const-string v5, "IOException"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 86
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3d

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3e

    goto :goto_3d

    .line 91
    :goto_51
    const-string v0, "loadTunerAppList - "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 86
    :goto_57
    if-eqz v3, :cond_62

    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_62

    .line 87
    :catch_5d
    move-exception v5

    .line 88
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 89
    .end local v5    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    nop

    .line 90
    :goto_63
    throw v4
.end method
