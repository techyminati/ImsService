.class public Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
.super Ljava/lang/Object;
.source "ResolutionTunerAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    }
.end annotation


# static fields
.field private static final APP_LIST_PATH:Ljava/lang/String; = "system/etc/resolution_tuner_app_list.xml"

.field private static final APP_LIST_PATH_FOR_AIVRS:Ljava/lang/String; = "/vendor/etc/aivrs.ini"

.field private static final APP_LIST_PATH_FOR_GAISR:Ljava/lang/String; = "/vendor/etc/gaisr.ini"

.field private static final NODE_FILTERED_WINDOW:Ljava/lang/String; = "filteredwindow"

.field private static final NODE_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final NODE_SCALE:Ljava/lang/String; = "scale"

.field private static final NODE_SCALING_FLOW:Ljava/lang/String; = "flow"

.field private static final TAG:Ljava/lang/String; = "AppResolutionTuner"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final VALUE_SCALING_FLOW_SURFACEVIEW:Ljava/lang/String; = "surfaceview"

.field private static final VALUE_SCALING_FLOW_WMS:Ljava/lang/String; = "wms"

.field private static sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;


# instance fields
.field private mTunerAppCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .registers 1

    .line 65
    sget-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    invoke-direct {v0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;-><init>()V

    sput-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

    .line 68
    :cond_b
    sget-object v0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->sInstance:Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;

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
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 251
    const-string v0, "AppResolutionTuner"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    const/4 v2, 0x0

    .line 254
    .local v2, "document":Lorg/w3c/dom/Document;
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 255
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 256
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_14
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_14} :catch_bd
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_14} :catch_b6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_14} :catch_af

    move-object v2, v5

    .line 266
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 268
    const-string v3, "app"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 270
    .local v3, "appList":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_ae

    .line 271
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 272
    .local v5, "node_applic":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 273
    .local v6, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v7, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v7, p0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>(Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;)V

    .line 274
    .local v7, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_31
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_93

    .line 275
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 276
    .local v9, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packagename"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 277
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 279
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_90

    :cond_4f
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "scale"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 280
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "scale":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(F)V

    .line 282
    .end local v10    # "scale":Ljava/lang/String;
    goto :goto_90

    :cond_67
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "filteredwindow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 283
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 284
    .local v10, "filteredWindow":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->addFilteredWindow(Ljava/lang/String;)V

    .end local v10    # "filteredWindow":Ljava/lang/String;
    goto :goto_8f

    .line 285
    :cond_7b
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "flow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8f

    .line 286
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 287
    .local v10, "scalingFlow":Ljava/lang/String;
    invoke-virtual {v7, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScalingFlow(Ljava/lang/String;)V

    goto :goto_90

    .line 285
    .end local v10    # "scalingFlow":Ljava/lang/String;
    :cond_8f
    :goto_8f
    nop

    .line 274
    .end local v9    # "childNode":Lorg/w3c/dom/Node;
    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 290
    .end local v8    # "j":I
    :cond_93
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dom2xml: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v5    # "node_applic":Lorg/w3c/dom/Node;
    .end local v6    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v7    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    .line 293
    .end local v4    # "i":I
    :cond_ae
    return-object v1

    .line 263
    .end local v3    # "appList":Lorg/w3c/dom/NodeList;
    :catch_af
    move-exception v3

    .line 264
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "IOException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    return-object v1

    .line 260
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b6
    move-exception v3

    .line 261
    .local v3, "e":Lorg/xml/sax/SAXException;
    const-string v4, "dom2xml SAXException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    return-object v1

    .line 257
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_bd
    move-exception v3

    .line 258
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v4, "dom2xml ParserConfigurationException"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    return-object v1
.end method

.method private parseAppListFileForAIVRS(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "listFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 324
    const-string v0, "\""

    const-string v1, "="

    const-string v2, "AppResolutionTuner"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    :try_start_b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_99

    .line 327
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_88

    .line 328
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-lt v5, v7, :cond_15

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v7, :cond_30

    .line 329
    goto :goto_15

    .line 332
    :cond_30
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x46

    if-ge v7, v8, :cond_15

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_4d

    .line 334
    goto :goto_15

    .line 336
    :cond_4d
    const/4 v7, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "packageName":Ljava/lang/String;
    new-instance v8, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v8, p0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>(Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;)V

    .line 338
    .local v8, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 339
    const/high16 v9, 0x3fc00000    # 1.5f

    invoke-virtual {v8, v9}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(F)V

    .line 340
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseAppListFileForAIVRS  packageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    nop

    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    goto :goto_15

    .line 344
    :cond_88
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catchall {:try_start_15 .. :try_end_8b} :catchall_8f

    .line 345
    .end local v6    # "line":Ljava/lang/String;
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_99

    .line 347
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_ae

    .line 325
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_8f
    move-exception v0

    :try_start_90
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v1

    :try_start_95
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .end local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_98
    throw v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_99

    .line 345
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .restart local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_99
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read app list for resolution tuner app list "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ae
    return-object v3
.end method

.method private parseAppListFileForGAISR(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 14
    .param p1, "listFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;",
            ">;"
        }
    .end annotation

    .line 297
    const-string v0, " "

    const-string v1, "="

    const-string v2, "AppResolutionTuner"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    :try_start_b
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_92

    .line 300
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_15
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_81

    .line 301
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_2a

    .line 302
    goto :goto_15

    .line 305
    :cond_2a
    const/4 v5, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "packageName":Ljava/lang/String;
    const-string v8, "\""

    .line 307
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 308
    .local v8, "width":F
    nop

    .line 309
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 310
    .local v7, "height":F
    new-instance v9, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    invoke-direct {v9, p0}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;-><init>(Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;)V

    .line 311
    .local v9, "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setPackageName(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v9, v8, v7}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->setScale(FF)V

    .line 313
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseAppListFileForGAISR  packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    nop

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "height":F
    .end local v8    # "width":F
    .end local v9    # "applic":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    goto :goto_15

    .line 316
    :cond_81
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catchall {:try_start_15 .. :try_end_84} :catchall_88

    .line 317
    .end local v6    # "line":Ljava/lang/String;
    :try_start_84
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_92

    .line 319
    .end local v4    # "br":Ljava/io/BufferedReader;
    goto :goto_a7

    .line 298
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_88
    move-exception v0

    :try_start_89
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v1

    :try_start_8e
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .end local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .end local p1    # "listFile":Ljava/io/File;
    :goto_91
    throw v0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_92

    .line 317
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;>;"
    .restart local p0    # "this":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;
    .restart local p1    # "listFile":Ljava/io/File;
    :catch_92
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read app list for resolution tuner app list "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a7
    return-object v3
.end method


# virtual methods
.method public getScaleHeight(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 169
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 170
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScaleHeight()F

    move-result v0

    return v0

    .line 172
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 174
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getScaleValue(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 147
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 148
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScale()F

    move-result v0

    return v0

    .line 150
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 152
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getScaleWidth(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 158
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 159
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScaleWidth()F

    move-result v0

    return v0

    .line 161
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_23
    goto :goto_8

    .line 163
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isScaledBySurfaceView(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 135
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 136
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_2c
    goto :goto_8

    .line 141
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public isScaledByWMS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;

    .line 120
    .local v1, "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 121
    invoke-virtual {v1}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->getScalingFlow()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 122
    invoke-virtual {v1, p2}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;->isFiltered(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 124
    .end local v1    # "app":Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList$Applic;
    :cond_31
    goto :goto_8

    .line 126
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public loadTunerAppList()V
    .registers 8

    .line 75
    const-string v0, "close failed.."

    const-string v1, "loadTunerAppList - "

    const-string v2, "AppResolutionTuner"

    const-string v3, "loadTunerAppList + "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "target":Ljava/io/File;
    const/4 v4, 0x0

    .line 79
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_d
    const-string v5, "1"

    const-string v6, "ro.vendor.game_aisr_enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 80
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/etc/aivrs.ini"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 82
    invoke-direct {p0, v3}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFileForAIVRS(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2f} :catch_b4
    .catchall {:try_start_d .. :try_end_2f} :catchall_b2

    .line 106
    if-eqz v4, :cond_3a

    :try_start_31
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3a

    .line 107
    :catch_35
    move-exception v5

    .line 108
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_3a
    nop

    .line 110
    :goto_3b
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_3f
    :try_start_3f
    const-string v5, "Target file doesn\'t exist: /vendor/etc/aivrs.ini"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v5, Ljava/io/File;

    const-string v6, "/vendor/etc/gaisr.ini"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 89
    invoke-direct {p0, v3}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFileForGAISR(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_58} :catch_b4
    .catchall {:try_start_3f .. :try_end_58} :catchall_b2

    .line 106
    if-eqz v4, :cond_63

    :try_start_5a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_63

    .line 107
    :catch_5e
    move-exception v5

    .line 108
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :cond_63
    :goto_63
    nop

    .line 110
    :goto_64
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_68
    :try_start_68
    const-string v5, "Target file doesn\'t exist: /vendor/etc/gaisr.ini"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_b4
    .catchall {:try_start_68 .. :try_end_6d} :catchall_b2

    .line 106
    if-eqz v4, :cond_78

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_78

    .line 107
    :catch_73
    move-exception v5

    .line 108
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_79

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    nop

    .line 110
    :goto_79
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 95
    :cond_7d
    :try_start_7d
    new-instance v5, Ljava/io/File;

    const-string v6, "system/etc/resolution_tuner_app_list.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a0

    .line 97
    const-string v5, "Target file doesn\'t exist: system/etc/resolution_tuner_app_list.xml"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_90} :catch_b4
    .catchall {:try_start_7d .. :try_end_90} :catchall_b2

    .line 106
    if-eqz v4, :cond_9b

    :try_start_92
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_9b

    .line 107
    :catch_96
    move-exception v5

    .line 108
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9c

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9b
    :goto_9b
    nop

    .line 110
    :goto_9c
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_a0
    :try_start_a0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 101
    invoke-direct {p0, v4}, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/appresolutiontuner/ResolutionTunerAppList;->mTunerAppCache:Ljava/util/ArrayList;
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_ac} :catch_b4
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_b2

    .line 106
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_c5

    .line 107
    :catch_b0
    move-exception v5

    goto :goto_c1

    .line 105
    :catchall_b2
    move-exception v5

    goto :goto_cb

    .line 102
    :catch_b4
    move-exception v5

    .line 103
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_b5
    const-string v6, "IOException"

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_b2

    .line 106
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_c5

    :try_start_bc
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_c5

    .line 107
    :catch_c0
    move-exception v5

    .line 108
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_c1
    invoke-static {v2, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c6

    .line 109
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c5
    :goto_c5
    nop

    .line 110
    :goto_c6
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    nop

    .line 112
    return-void

    .line 106
    :goto_cb
    if-eqz v4, :cond_d6

    :try_start_cd
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d6

    .line 107
    :catch_d1
    move-exception v6

    .line 108
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d7

    .line 109
    .end local v6    # "e":Ljava/io/IOException;
    :cond_d6
    :goto_d6
    nop

    .line 110
    :goto_d7
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    throw v5
.end method
