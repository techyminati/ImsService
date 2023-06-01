.class Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VsimIoThread"
.end annotation


# static fields
.field private static final MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

.field private mInput:Ljava/io/DataInputStream;

.field private mIsContinue:Z

.field private mName:Ljava/lang/String;

.field private mOutput:Ljava/io/DataOutputStream;

.field private mServerName:Ljava/lang/String;

.field private readBuffer:[B

.field final synthetic this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;)V
    .registers 8
    .param p1, "this$0"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "eventHandler"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 905
    iput-object p1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 891
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 893
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mIsContinue:Z

    .line 894
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 895
    iput-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 896
    iput-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 897
    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 899
    iput-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 906
    iput-object p2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 907
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 908
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 909
    iput-object p5, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    .line 910
    const-string v0, "VsimIoThread constructor is called."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method private dumpEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 1072
    # getter for: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->ENG:Z
    invoke-static {}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1300()Z

    move-result v0

    const-string v1, ", data_len:"

    const-string v2, ", slot_id:"

    const-string v3, ", message_id:"

    const-string v4, "dumpEvent: transaction_id: "

    if-eqz v0, :cond_57

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->truncateString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$1200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    goto :goto_8b

    .line 1079
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 1084
    :goto_8b
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSimMgr"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method private readEvent()Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    const-string v0, "readEvent Enter"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v0

    .line 1036
    .local v0, "transaction_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v1

    .line 1037
    .local v1, "msg_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v2

    .line 1038
    .local v2, "slot_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v3

    .line 1039
    .local v3, "data_len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readEvent transaction_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msgId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", slot_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 1042
    const/16 v4, 0x10d

    if-gt v3, v4, :cond_74

    .line 1047
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 1049
    const/4 v4, 0x0

    .line 1050
    .local v4, "offset":I
    move v5, v3

    .line 1053
    .local v5, "remaining":I
    :cond_4b
    iget-object v6, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    iget-object v7, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v6, v7, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 1055
    .local v6, "countRead":I
    if-ltz v6, :cond_67

    .line 1060
    add-int/2addr v4, v6

    .line 1061
    sub-int/2addr v5, v6

    .line 1062
    .end local v6    # "countRead":I
    if-gtz v5, :cond_4b

    .line 1064
    new-instance v6, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 1065
    .local v6, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    iget-object v7, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v6, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 1067
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 1068
    return-object v6

    .line 1056
    .local v6, "countRead":I
    :cond_67
    const-string v7, "readEvent(), fail to read and throw exception"

    invoke-direct {p0, v7}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->loge(Ljava/lang/String;)V

    .line 1057
    new-instance v7, Ljava/io/IOException;

    const-string v8, "fail to read"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1043
    .end local v4    # "offset":I
    .end local v5    # "remaining":I
    .end local v6    # "countRead":I
    :cond_74
    const-string v4, "readEvent(), data_len large than 269"

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->loge(Ljava/lang/String;)V

    .line 1044
    new-instance v4, Ljava/io/IOException;

    const-string v5, "unreasonable data length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1020
    .local v1, "tempBuf":[B
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 1021
    .local v2, "readCount":I
    if-ltz v2, :cond_29

    .line 1026
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr v0, v4

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    return v0

    .line 1022
    :cond_29
    const-string v0, "readInt(), fail to read and throw exception"

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->loge(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/io/IOException;

    const-string v3, "fail to read"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBytes([BI)V
    .registers 5
    .param p1, "value"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 974
    return-void
.end method

.method private writeInt(I)V
    .registers 5
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    .line 978
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 980
    .end local v0    # "i":I
    :cond_12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 919
    const-string v0, "VsimIoThread running."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 920
    :goto_5
    iget-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mIsContinue:Z

    if-eqz v0, :cond_97

    .line 923
    :try_start_9
    invoke-direct {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->readEvent()Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    move-result-object v0

    .line 925
    .local v0, "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    if-eqz v0, :cond_25

    .line 926
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 927
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 928
    iget-object v2, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    goto :goto_25

    .line 965
    .end local v0    # "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_1c
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VsimIoThread Exception."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logw(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    :goto_25
    goto :goto_5

    .line 933
    :catch_26
    move-exception v0

    .line 934
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "VsimIoThread IOException."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logw(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 937
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_25

    .line 941
    :cond_3a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_88

    .line 942
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "vendor.gsm.external.sim.enabled"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, "enabled":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v4, "vendor.gsm.external.sim.inserted"

    invoke-static {v1, v4, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, "insert":Ljava/lang/String;
    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_85

    .line 950
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 952
    if-eqz v4, :cond_6f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_71

    .line 953
    :cond_6f
    const-string v4, "0"

    .line 956
    :cond_71
    iget-object v3, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendDisableEvent(II)V

    .line 958
    const-string v3, "Disable VSIM and reset modem since socket disconnected."

    invoke-direct {p0, v3}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logi(Ljava/lang/String;)V

    .line 941
    .end local v2    # "enabled":Ljava/lang/String;
    .end local v4    # "insert":Ljava/lang/String;
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 961
    .end local v1    # "i":I
    :cond_88
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;

    const/4 v2, 0x0

    # invokes: Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->sendExternalSimConnectedEvent(I)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;->access$300(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager;I)V

    .line 962
    const-string v1, "Socket disconnected and vsim is disabled."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logw(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->terminate()V

    goto :goto_25

    .line 970
    .end local v0    # "e":Ljava/io/IOException;
    :cond_97
    return-void
.end method

.method public terminate()V
    .registers 2

    .line 914
    const-string v0, "VsimIoThread terminate."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mIsContinue:Z

    .line 916
    return-void
.end method

.method public writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)I
    .registers 3
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;

    .line 983
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)I

    move-result v0

    return v0
.end method

.method public writeEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;Z)I
    .registers 6
    .param p1, "event"    # Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .param p2, "isBigEndian"    # Z

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeEvent Enter, isBigEndian:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->logd(Ljava/lang/String;)V

    .line 988
    const/4 v0, -0x1

    .line 990
    .local v0, "ret":I
    :try_start_15
    monitor-enter p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_56

    .line 991
    :try_start_16
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_4b

    .line 992
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;)V

    .line 994
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 995
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 997
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 998
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 999
    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->writeBytes([BI)V

    .line 1000
    iget-object v1, p0, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1001
    const/4 v0, 0x0

    goto :goto_50

    .line 1003
    :cond_4b
    const-string v1, "mOut is null, socket is not setup"

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->loge(Ljava/lang/String;)V

    .line 1005
    :goto_50
    monitor-exit p0

    .line 1010
    nop

    .line 1012
    return v0

    .line 1005
    :catchall_53
    move-exception v1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_53

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .end local p1    # "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .end local p2    # "isBigEndian":Z
    :try_start_55
    throw v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    .line 1006
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;
    .restart local p1    # "event":Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimEvent;
    .restart local p2    # "isBigEndian":Z
    :catch_56
    move-exception v1

    .line 1007
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "writeEvent Exception"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/internal/telephony/vsim/ExternalSimManager$VsimIoThread;->loge(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1009
    const/4 v2, -0x1

    return v2
.end method
