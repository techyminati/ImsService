.class Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;
.super Landroid/os/UEventObserver;
.source "PowerHalWifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;


# direct methods
.method private constructor <init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;
    .param p2, "x1"    # Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$1;

    .line 118
    invoke-direct {p0, p1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;-><init>(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 121
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "value":Ljava/lang/String;
    const v1, 0x989680

    .line 123
    .local v1, "eventCode":I
    const-string v2, "PowerHalWifiMonitor"

    if-eqz v0, :cond_5a

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent, event value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUevent, event int code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor$MyUEventObserver;->this$0:Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;

    # invokes: Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->ueventCallback(I)V
    invoke-static {v3, v1}, Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;->access$100(Lcom/mediatek/powerhalservice/PowerHalWifiMonitor;I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_40

    goto :goto_59

    .line 129
    :catch_40
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DPP event wrong format:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_59
    goto :goto_5f

    .line 133
    :cond_5a
    const-string v3, "onUEvent, value is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_5f
    return-void
.end method
