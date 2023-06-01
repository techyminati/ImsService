.class public Lcom/mediatek/bt/BluetoothADieFactoryImpl;
.super Lcom/mediatek/bt/BluetoothADieFactory;
.source "BluetoothADieFactoryImpl.java"


# static fields
.field private static final COMMAND_BT_OFF:Ljava/lang/String; = "4w2T8M65K5?2af+a OFF"

.field private static final COMMAND_BT_ON:Ljava/lang/String; = "4w2T8M65K5?2af+a ON"

.field private static final COMMAND_READ_PIN:Ljava/lang/String; = "0x12 0x00 0x00"

.field private static final DRIVER_NODE:Ljava/lang/String; = "/proc/driver/bt_dbg"

.field private static final TAG:Ljava/lang/String; = "BluetoothADieFactoryImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothADieFactory;-><init>()V

    return-void
.end method

.method private readFromNode()Ljava/lang/String;
    .registers 8

    .line 88
    const-string v0, "BluetoothADieFactoryImpl"

    const/4 v1, 0x0

    .line 91
    .local v1, "contents":Ljava/lang/String;
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/driver/bt_dbg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "readFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 93
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v4, 0x1

    new-array v5, v4, [C
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_50

    .line 95
    .local v5, "evb":[C
    :try_start_e
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 96
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    if-lez v4, :cond_35

    .line 97
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    move-object v1, v4

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFromNode contents = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_35} :catch_3c
    .catchall {:try_start_e .. :try_end_35} :catchall_3a

    .line 104
    :cond_35
    nop

    .line 105
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_50

    goto :goto_48

    .line 104
    :catchall_3a
    move-exception v4

    goto :goto_49

    .line 100
    :catch_3c
    move-exception v4

    .line 101
    .local v4, "e":Ljava/io/IOException;
    :try_start_3d
    const-string v6, "IOException"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_3a

    .line 104
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_48

    .line 105
    goto :goto_36

    .line 111
    .end local v2    # "readFile":Ljava/io/File;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "evb":[C
    :cond_48
    :goto_48
    goto :goto_59

    .line 104
    .restart local v2    # "readFile":Ljava/io/File;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "evb":[C
    :goto_49
    if-eqz v3, :cond_4e

    .line 105
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 107
    :cond_4e
    nop

    .end local v1    # "contents":Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/bt/BluetoothADieFactoryImpl;
    throw v4
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_50

    .line 108
    .end local v2    # "readFile":Ljava/io/File;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "evb":[C
    .restart local v1    # "contents":Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/bt/BluetoothADieFactoryImpl;
    :catch_50
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_59
    return-object v1
.end method

.method private writeToNode(Ljava/lang/String;)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;

    .line 68
    const-string v0, "BluetoothADieFactoryImpl"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/driver/bt_dbg"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_2e

    .line 69
    .local v1, "writeFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 71
    .local v2, "fileWriter":Ljava/io/FileWriter;
    :try_start_a
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 72
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_1a
    .catchall {:try_start_a .. :try_end_13} :catchall_18

    .line 77
    nop

    .line 78
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_2e

    goto :goto_26

    .line 77
    :catchall_18
    move-exception v3

    goto :goto_27

    .line 73
    :catch_1a
    move-exception v3

    .line 74
    .local v3, "e":Ljava/io/IOException;
    :try_start_1b
    const-string v4, "IOException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_18

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_26

    .line 78
    goto :goto_14

    .line 84
    .end local v1    # "writeFile":Ljava/io/File;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    :cond_26
    :goto_26
    goto :goto_37

    .line 77
    .restart local v1    # "writeFile":Ljava/io/File;
    .restart local v2    # "fileWriter":Ljava/io/FileWriter;
    :goto_27
    if-eqz v2, :cond_2c

    .line 78
    :try_start_29
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 80
    :cond_2c
    nop

    .end local p0    # "this":Lcom/mediatek/bt/BluetoothADieFactoryImpl;
    .end local p1    # "str":Ljava/lang/String;
    throw v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_2e

    .line 81
    .end local v1    # "writeFile":Ljava/io/File;
    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    .restart local p0    # "this":Lcom/mediatek/bt/BluetoothADieFactoryImpl;
    .restart local p1    # "str":Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    return-void
.end method


# virtual methods
.method public isAdieFail()Z
    .registers 5

    .line 52
    const-string v0, "4w2T8M65K5?2af+a ON"

    invoke-direct {p0, v0}, Lcom/mediatek/bt/BluetoothADieFactoryImpl;->writeToNode(Ljava/lang/String;)V

    .line 53
    const-string v0, "0x12 0x00 0x00"

    invoke-direct {p0, v0}, Lcom/mediatek/bt/BluetoothADieFactoryImpl;->writeToNode(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/mediatek/bt/BluetoothADieFactoryImpl;->readFromNode()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "adieFlag":Ljava/lang/String;
    const-string v1, "4w2T8M65K5?2af+a OFF"

    if-eqz v0, :cond_1c

    .line 56
    invoke-direct {p0, v1}, Lcom/mediatek/bt/BluetoothADieFactoryImpl;->writeToNode(Ljava/lang/String;)V

    .line 57
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 59
    :cond_1c
    const-string v2, "BluetoothADieFactoryImpl"

    const-string v3, "read exception happen return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, v1}, Lcom/mediatek/bt/BluetoothADieFactoryImpl;->writeToNode(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method
