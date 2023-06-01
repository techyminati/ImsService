.class public interface abstract Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.super Ljava/lang/Object;
.source "ISelfActivation.java"


# static fields
.field public static final ACTION_ADD_DATA_SERVICE:I = 0x0

.field public static final ACTION_MO_CALL:I = 0x1

.field public static final ACTION_RESET_520_STATE:I = 0x2

.field public static final ADD_DATA_AGREE:I = 0x1

.field public static final ADD_DATA_DECLINE:I = 0x0

.field public static final CALL_TYPE_EMERGENCY:I = 0x1

.field public static final CALL_TYPE_NORMAL:I = 0x0

.field public static final EXTRA_KEY_ADD_DATA_OP:Ljava/lang/String; = "key_add_data_operation"

.field public static final EXTRA_KEY_MO_CALL_TYPE:Ljava/lang/String; = "key_mo_call_type"

.field public static final STATE_520_ACTIVATED:I = 0x1

.field public static final STATE_520_NONE:I = 0x0

.field public static final STATE_520_UNKNOWN:I = -0x1

.field public static final STATE_ACTIVATED:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NOT_ACTIVATED:I = 0x2

.field public static final STATE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract buildParams()Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method

.method public abstract getPCO520State()I
.end method

.method public abstract getSelfActivateState()I
.end method

.method public abstract selfActivationAction(ILandroid/os/Bundle;)I
.end method

.method public abstract setCommandsInterface(Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method

.method public abstract setContext(Landroid/content/Context;)Lcom/mediatek/internal/telephony/selfactivation/ISelfActivation;
.end method
