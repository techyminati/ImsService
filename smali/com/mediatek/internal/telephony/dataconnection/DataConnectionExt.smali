.class public Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;
.super Ljava/lang/Object;
.source "DataConnectionExt.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/dataconnection/IDataConnectionExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DataConnectionExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getIsPcoAllowedDefault()Z
    .registers 2

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public getPcoActionByApnType(Lcom/android/internal/telephony/dataconnection/ApnContext;Landroid/telephony/PcoData;)I
    .registers 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "pcoData"    # Landroid/telephony/PcoData;

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public handlePcoDataAfterAttached(Landroid/os/AsyncResult;Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncResult;",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p3, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    return-void
.end method

.method public ignoreDataRoaming(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 156
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreDataRoaming, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreDefaultDataUnselected(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apnType"    # Ljava/lang/String;

    .line 138
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 139
    const-string v0, "emergency"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 140
    const-string v0, "xcap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 141
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 145
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_23
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreDefaultDataUnselected, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isDataAllowedAsOff(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apnType"    # Ljava/lang/String;

    .line 87
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 88
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 89
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 90
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 93
    :cond_21
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public isDomesticRoamingEnabled()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isFdnEnableSupport()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isMeteredApnType(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isRoaming"    # Z

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMeteredApnType, apnType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataConnectionExt;->log(Ljava/lang/String;)V

    .line 185
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 186
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 187
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 188
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    .line 191
    :cond_3d
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    return v0
.end method

.method public isMeteredApnTypeByLoad()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanentCause(I)Z
    .registers 3
    .param p1, "cause"    # I

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 128
    const-string v0, "DataConnectionExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public onDcActivated([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "apnTypes"    # [Ljava/lang/String;
    .param p2, "ifc"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public onDcDeactivated([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "apnTypes"    # [Ljava/lang/String;
    .param p2, "ifc"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setIsPcoAllowedDefault(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .line 223
    return-void
.end method
