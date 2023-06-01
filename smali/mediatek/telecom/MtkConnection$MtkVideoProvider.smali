.class public Lmediatek/telecom/MtkConnection$MtkVideoProvider;
.super Ljava/lang/Object;
.source "MtkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkVideoProvider"
.end annotation


# static fields
.field private static final MTK_SESSION_MODIFY_BASE:I = 0xc8

.field public static final SESSION_EVENT_ERROR_CAMERA_CRASHED:I = 0x1f43

.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL:I = 0xc8

.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL_AUTO_DOWNGRADE:I = 0xc9

.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL_REMOTE_REJECT_UPGRADE:I = 0xca


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
