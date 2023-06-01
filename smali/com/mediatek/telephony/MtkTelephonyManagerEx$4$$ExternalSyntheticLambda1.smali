.class public final synthetic Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;

    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/telephony/MtkTelephonyManagerEx$4;->lambda$onError$1(Lcom/mediatek/telephony/MtkTelephonyManagerEx$OemHookCallback;Ljava/lang/String;)V

    return-void
.end method
