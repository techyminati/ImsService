.class public Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
.super Ljava/lang/Object;
.source "MtkSuppServQueueHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SuppServQueueHelper"

.field private static instance:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

.field private static pausedSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

.field private mPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->instance:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->pausedSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 63
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->pausedSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mHandler:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;)[Lcom/android/internal/telephony/Phone;
    .registers 2
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V
    .registers 6
    .param p1, "ss"    # Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .param p2, "phoneId"    # I

    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mHandler:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

    if-eqz v0, :cond_d

    .line 343
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    .end local v0    # "msg":Landroid/os/Message;
    :cond_d
    return-void
.end method

.method public static makeSuppServQueueHelper(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phones"    # [Lcom/android/internal/telephony/Phone;

    .line 87
    if-eqz p0, :cond_2f

    if-nez p1, :cond_5

    goto :goto_2f

    .line 91
    :cond_5
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->instance:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    if-nez v0, :cond_28

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create MtkSuppServQueueHelper singleton instance, phones.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppServQueueHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->instance:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    goto :goto_2c

    .line 96
    :cond_28
    iput-object p0, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mContext:Landroid/content/Context;

    .line 97
    iput-object p1, v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 99
    :goto_2c
    sget-object v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->instance:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;

    return-object v0

    .line 88
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 109
    const-string v0, "SuppServQueueHelper"

    const-string v1, "dispose."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public getCallBarring(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V
    .registers 8
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .line 384
    const/16 v0, 0xa

    invoke-static {v0, p4}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 386
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    invoke-direct {p0, v0, p5}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 390
    return-void
.end method

.method public getCallForwardingOption(IILandroid/os/Message;I)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "withTimeSlot"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .line 418
    const/16 v0, 0x12

    invoke-static {v0, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 420
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    invoke-direct {p0, v0, p4}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 423
    return-void
.end method

.method public getCallForwardingOptionForServiceClass(IILandroid/os/Message;I)V
    .registers 7
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .line 350
    const/16 v0, 0xc

    invoke-static {v0, p3}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 352
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    invoke-direct {p0, v0, p4}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 355
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;I)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 370
    const/16 v0, 0xe

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 372
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 373
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;I)V
    .registers 4
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .line 404
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 406
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 407
    return-void
.end method

.method public init(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 103
    const-string v0, "SuppServQueueHelper"

    const-string v1, "Initialize SuppServQueueHelper!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;-><init>(Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->mHandler:Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper$SuppServQueueHelperHandler;

    .line 105
    return-void
.end method

.method public setCallBarring(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V
    .registers 9
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;
    .param p6, "phoneId"    # I

    .line 394
    const/16 v0, 0x9

    invoke-static {v0, p5}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 396
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-direct {p0, v0, p6}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 401
    return-void
.end method

.method public setCallForwardingOptionForServiceClass(IILjava/lang/String;IILandroid/os/Message;I)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "response"    # Landroid/os/Message;
    .param p7, "phoneId"    # I

    .line 359
    const/16 v0, 0xb

    invoke-static {v0, p6}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 361
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-direct {p0, v0, p7}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 367
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;I)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 376
    const/16 v0, 0xd

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 378
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-direct {p0, v0, p3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 380
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;I)V
    .registers 6
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 410
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    move-result-object v0

    .line 412
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iget-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-direct {p0, v0, p3}, Lcom/mediatek/internal/telephony/MtkSuppServQueueHelper;->addRequest(Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;I)V

    .line 414
    return-void
.end method
