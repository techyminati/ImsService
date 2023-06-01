.class public final synthetic Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;IJLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iput p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iget v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->lambda$onAtCmdResp$0(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;IJLjava/lang/String;)V

    return-void
.end method
