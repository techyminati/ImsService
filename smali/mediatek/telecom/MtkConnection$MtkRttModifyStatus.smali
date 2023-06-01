.class public final Lmediatek/telecom/MtkConnection$MtkRttModifyStatus;
.super Ljava/lang/Object;
.source "MtkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtkRttModifyStatus"
.end annotation


# static fields
.field private static final MTK_SESSION_STATUS_CODE_BASE:I = 0x64

.field public static final SESSION_DOWNGRADED_BY_REMOTE:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
