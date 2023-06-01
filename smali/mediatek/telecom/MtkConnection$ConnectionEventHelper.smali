.class public Lmediatek/telecom/MtkConnection$ConnectionEventHelper;
.super Ljava/lang/Object;
.source "MtkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionEventHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParamsFor3GVtStatusChanged(I)Landroid/os/Bundle;
    .registers 3
    .param p0, "status"    # I

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.3G_VT_STATUS"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    return-object v0
.end method

.method public static buildParamsForIncomingInfoUpdated(ILjava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p0, "type"    # I
    .param p1, "alphaid"    # Ljava/lang/String;
    .param p2, "cliValidity"    # I

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_ALPHAID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_CLI_VALIDITY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    return-object v0
.end method

.method public static buildParamsForNumberUpdated(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p0, "number"    # Ljava/lang/String;

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.NEW_NUMBER"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-object v0
.end method

.method public static buildParamsForOperationFailed(I)Landroid/os/Bundle;
    .registers 3
    .param p0, "operation"    # I

    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.FAILED_OPERATION"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    return-object v0
.end method

.method public static buildParamsForPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)Landroid/os/Bundle;
    .registers 3
    .param p0, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    return-object v0
.end method

.method public static buildParamsForSsNotification(IIILjava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p0, "notiType"    # I
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "index"    # I

    .line 341
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_NOTITYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_NUMBER"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_INDEX"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    return-object v0
.end method
