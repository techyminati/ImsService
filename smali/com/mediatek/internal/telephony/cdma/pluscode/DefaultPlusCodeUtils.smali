.class public Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;
.super Ljava/lang/Object;
.source "DefaultPlusCodeUtils.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/pluscode/IPlusCodeUtils;


# static fields
.field public static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPlusCodeUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .line 95
    sget-boolean v0, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->DBG:Z

    if-eqz v0, :cond_9

    .line 96
    const-string v0, "DefaultPlusCodeUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_9
    return-void
.end method


# virtual methods
.method public canFormatPlusCodeForSms()Z
    .registers 2

    .line 66
    const-string v0, "canFormatPlusCodeForSms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public canFormatPlusToIddNdd()Z
    .registers 2

    .line 60
    const-string v0, "canFormatPlusToIddNdd"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMccBySidLtmOff mccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 55
    return-object p1
.end method

.method public removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeIddNddAddPlusCode number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultPlusCodeUtils"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 91
    return-object p1
.end method

.method public removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeIddNddAddPlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultPlusCodeUtils"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 85
    return-object p1
.end method

.method public replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replacePlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultPlusCodeUtils"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 79
    return-object p1
.end method

.method public replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replacePlusCodeWithIddNdd number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DefaultPlusCodeUtils"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/pluscode/DefaultPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 73
    return-object p1
.end method
