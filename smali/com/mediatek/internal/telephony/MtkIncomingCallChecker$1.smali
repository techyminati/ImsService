.class Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;
.super Ljava/lang/Object;
.source "MtkIncomingCallChecker.java"

# interfaces
.implements Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->startIncomingCallNumberCheck(Landroid/content/Context;ILjava/lang/String;Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$OnCheckCompleteListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    .line 73
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;->this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/telecom/CallerInfo;)V
    .registers 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "info"    # Landroid/telecom/CallerInfo;

    .line 76
    const/4 v0, 0x0

    if-nez p3, :cond_5

    move v1, v0

    goto :goto_7

    :cond_5
    iget-boolean v1, p3, Landroid/telecom/CallerInfo;->contactExists:Z

    .line 77
    .local v1, "contactExists":Z
    :goto_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;->this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    iget-object v2, v2, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->blockChecker:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$1;->val$number:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 77
    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method
