.class public Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
.super Ljava/lang/Object;
.source "MtkSuppSrvRequest.java"


# static fields
.field public static final SUPP_SRV_REQ_CFU_QUERY:I = 0x12

.field public static final SUPP_SRV_REQ_GET_CB:I = 0xa

.field public static final SUPP_SRV_REQ_GET_CF:I = 0xc

.field public static final SUPP_SRV_REQ_GET_CF_IN_TIME_SLOT:I = 0x10

.field public static final SUPP_SRV_REQ_GET_CLIP:I = 0x2

.field public static final SUPP_SRV_REQ_GET_CLIR:I = 0x4

.field public static final SUPP_SRV_REQ_GET_COLP:I = 0x6

.field public static final SUPP_SRV_REQ_GET_COLR:I = 0x8

.field public static final SUPP_SRV_REQ_GET_CW:I = 0xe

.field public static final SUPP_SRV_REQ_MMI_CODE:I = 0xf

.field public static final SUPP_SRV_REQ_SET_CB:I = 0x9

.field public static final SUPP_SRV_REQ_SET_CF:I = 0xb

.field public static final SUPP_SRV_REQ_SET_CF_IN_TIME_SLOT:I = 0x11

.field public static final SUPP_SRV_REQ_SET_CLIP:I = 0x1

.field public static final SUPP_SRV_REQ_SET_CLIR:I = 0x3

.field public static final SUPP_SRV_REQ_SET_COLP:I = 0x5

.field public static final SUPP_SRV_REQ_SET_COLR:I = 0x7

.field public static final SUPP_SRV_REQ_SET_CW:I = 0xd


# instance fields
.field public mParcel:Landroid/os/Parcel;

.field mRequestCode:I

.field mResultCallback:Landroid/os/Message;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static obtain(ILandroid/os/Message;)Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    .registers 4
    .param p0, "request"    # I
    .param p1, "resultCallback"    # Landroid/os/Message;

    .line 79
    new-instance v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;-><init>()V

    .line 81
    .local v0, "ss":Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;
    iput p0, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mRequestCode:I

    .line 82
    iput-object p1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mResultCallback:Landroid/os/Message;

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mParcel:Landroid/os/Parcel;

    .line 85
    return-object v0
.end method


# virtual methods
.method public getRequestCode()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mRequestCode:I

    return v0
.end method

.method public getResultCallback()Landroid/os/Message;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mResultCallback:Landroid/os/Message;

    return-object v0
.end method

.method public setResultCallback(Landroid/os/Message;)V
    .registers 2
    .param p1, "resultCallback"    # Landroid/os/Message;

    .line 96
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppSrvRequest;->mResultCallback:Landroid/os/Message;

    .line 97
    return-void
.end method
