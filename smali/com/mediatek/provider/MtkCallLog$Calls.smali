.class public Lcom/mediatek/provider/MtkCallLog$Calls;
.super Landroid/provider/CallLog$Calls;
.source "MtkCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/provider/MtkCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final CACHED_INDICATE_PHONE_SIM:Ljava/lang/String; = "indicate_phone_or_sim_contact"

.field public static final CACHED_IS_SDN_CONTACT:Ljava/lang/String; = "is_sdn_contact"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method
