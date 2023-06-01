.class public Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
.super Lcom/android/internal/telephony/cat/IconLoader;
.source "MtkIconLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkIconLoader"


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_e4

    const-string v1, "MtkIconLoader"

    packed-switch v0, :pswitch_data_f2

    .line 112
    goto/16 :goto_e0

    .line 88
    :pswitch_9
    :try_start_9
    const-string v0, "load icon done"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 90
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 91
    .local v2, "rawData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load icon CODING_SCHEME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v4, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_66

    .line 94
    array-length v1, v2

    invoke-static {v2, v1}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 95
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    goto :goto_7c

    .line 97
    :cond_66
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v3, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_74

    .line 98
    iput-object v2, p0, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->mIconData:[B

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->readClut()V

    goto :goto_7c

    .line 101
    :cond_74
    const-string v3, "else  /postIcon "

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    .line 104
    :goto_7c
    return-void

    .line 72
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rawData":[B
    :pswitch_7d
    const-string v0, "load EFimg done"

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_8c

    .line 74
    const-string v0, "msg.obj is null."

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.obj is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 80
    .restart local v2    # "rawData":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFimg raw data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->handleImageDescriptor([B)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->readIconData()V

    .line 86
    return-void

    .line 84
    :cond_d8
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Unable to parse image descriptor"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
    .end local p1    # "msg":Landroid/os/Message;
    throw v1
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e0} :catch_e4

    .line 113
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "rawData":[B
    .restart local p0    # "this":Lcom/mediatek/internal/telephony/cat/MtkIconLoader;
    .restart local p1    # "msg":Landroid/os/Message;
    :goto_e0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->handleMessage(Landroid/os/Message;)V

    .line 114
    return-void

    .line 106
    :catch_e4
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Icon load failed"

    invoke-static {p0, v1}, Lcom/mediatek/internal/telephony/cat/MtkCatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/cat/MtkIconLoader;->postIcon()V

    .line 111
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_9
    .end packed-switch
.end method
