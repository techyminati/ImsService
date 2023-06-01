.class Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;
.super Ljava/lang/Object;
.source "MtkRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DtmfQueueHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    }
.end annotation


# instance fields
.field private final DTMF_STATUS_START:Z

.field private final DTMF_STATUS_STOP:Z

.field public final MAXIMUM_DTMF_REQUEST:I

.field private mDtmfQueue:Ljava/util/Vector;

.field private mDtmfStatus:Z

.field private mIsSendChldRequest:Z

.field private mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkRIL;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkRIL;)V
    .registers 5
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkRIL;

    .line 334
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/16 v0, 0x20

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->MAXIMUM_DTMF_REQUEST:I

    .line 392
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->DTMF_STATUS_START:Z

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->DTMF_STATUS_STOP:Z

    .line 395
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 396
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 399
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 335
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 336
    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;)Ljava/util/Vector;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;

    .line 323
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .registers 3
    .param p1, "o"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public buildDtmfQueueRR(Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .registers 6
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;
    .param p2, "param"    # [Ljava/lang/Object;

    .line 402
    if-nez p1, :cond_4

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DtmfQueueHandler.buildDtmfQueueRR build (["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 409
    new-instance v0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;-><init>(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;Lcom/android/internal/telephony/RILRequest;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public get()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    return-object v0
.end method

.method public getPendingRequest()Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;
    .registers 2

    .line 375
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    return-object v0
.end method

.method public hasSendChldRequest()Z
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->this$0:Lcom/mediatek/internal/telephony/MtkRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSendChldRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkRIL;->mtkRiljLog(Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    return v0
.end method

.method public isStart()Z
    .registers 3

    .line 347
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public remove(I)V
    .registers 3
    .param p1, "idx"    # I

    .line 359
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 360
    return-void
.end method

.method public remove(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .registers 3
    .param p1, "o"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 355
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public resetSendChldRequest()V
    .registers 2

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 384
    return-void
.end method

.method public setPendingRequest(Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;)V
    .registers 2
    .param p1, "r"    # Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 371
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mPendingCHLDRequest:Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler$DtmfQueueRR;

    .line 372
    return-void
.end method

.method public setSendChldRequest()V
    .registers 2

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mIsSendChldRequest:Z

    .line 380
    return-void
.end method

.method public size()I
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 2

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 340
    return-void
.end method

.method public stop()V
    .registers 2

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkRIL$DtmfQueueHandler;->mDtmfStatus:Z

    .line 344
    return-void
.end method
