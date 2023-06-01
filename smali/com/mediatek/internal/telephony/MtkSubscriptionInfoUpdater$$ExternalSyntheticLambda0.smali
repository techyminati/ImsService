.class public final synthetic Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/telephony/SubscriptionInfoUpdater$UpdateEmbeddedSubsCallback;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .registers 3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionInfoUpdater;->lambda$handleSimReady$0$MtkSubscriptionInfoUpdater(Z)V

    return-void
.end method
