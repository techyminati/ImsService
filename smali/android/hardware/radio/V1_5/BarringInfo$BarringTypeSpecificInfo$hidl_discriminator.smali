.class public final Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final conditional:B = 0x1t

.field public static final noinit:B


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # B

    .line 592
    packed-switch p0, :pswitch_data_c

    .line 595
    const-string v0, "Unknown"

    return-object v0

    .line 594
    :pswitch_6
    const-string v0, "conditional"

    return-object v0

    .line 593
    :pswitch_9
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
