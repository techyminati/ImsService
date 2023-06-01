.class synthetic Lcom/mediatek/internal/telephony/MtkSuppServConf$2;
.super Ljava/lang/Object;
.source "MtkSuppServConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$internal$telephony$MtkSuppServContants$CUSTOMIZATION_ITEM:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 662
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;->values()[Lcom/mediatek/internal/telephony/MtkSuppServContants$CUSTOMIZATION_ITEM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/MtkSuppServConf$2;->$SwitchMap$com$mediatek$internal$telephony$MtkSuppServContants$CUSTOMIZATION_ITEM:[I

    return-void
.end method
