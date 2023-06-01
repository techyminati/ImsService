.class Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;
.super Landroid/os/AsyncTask;
.source "MtkIncomingCallChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncBlockCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;
    .param p2, "context"    # Landroid/content/Context;

    .line 131
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .line 137
    const-string v0, ""

    .line 139
    .local v0, "number":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v1, "extras":Landroid/os/Bundle;
    array-length v2, p1

    if-lez v2, :cond_d

    .line 141
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 143
    :cond_d
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_20

    .line 144
    aget-object v2, p1, v3

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 144
    const-string v3, "extra_call_presentation"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    :cond_20
    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_33

    .line 148
    aget-object v2, p1, v3

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 148
    const-string v3, "extra_contact_exist"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 151
    :cond_33
    iget-object v2, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 127
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "isBlocked"    # Ljava/lang/Boolean;

    .line 156
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->this$0:Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker;->onBlockCheckComplete(Ljava/lang/Boolean;)V

    .line 157
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 127
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MtkIncomingCallChecker$AsyncBlockCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
