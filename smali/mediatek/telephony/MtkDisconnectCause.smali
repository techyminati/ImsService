.class public Lmediatek/telephony/MtkDisconnectCause;
.super Ljava/lang/Object;
.source "MtkDisconnectCause.java"


# static fields
.field public static final CAUSE_ADDRESS_INCOMPLETE:I = 0x5f4

.field public static final CAUSE_AMBIGUOUS:I = 0x5f5

.field public static final CAUSE_BAD_EXTENSION:I = 0x5ed

.field public static final CAUSE_BAD_GATEWAY:I = 0x5fb

.field public static final CAUSE_BAD_REQUEST:I = 0x5dd

.field public static final CAUSE_BUSY_EVERYWHERE:I = 0x600

.field public static final CAUSE_BUSY_HERE:I = 0x5f6

.field public static final CAUSE_CALL_TRANSACTION_NOT_EXIST:I = 0x5f1

.field public static final CAUSE_CONFLICT:I = 0x5e6

.field public static final CAUSE_DECLINE:I = 0x601

.field public static final CAUSE_DOES_NOT_EXIST_ANYWHERE:I = 0x602

.field public static final CAUSE_EXTENSION_REQUIRED:I = 0x5ee

.field public static final CAUSE_FORBIDDEN:I = 0x5e0

.field public static final CAUSE_GATEWAY_TIMEOUT:I = 0x5fd

.field public static final CAUSE_GONE:I = 0x5e7

.field public static final CAUSE_INTERVAL_TOO_BRIEF:I = 0x5ef

.field public static final CAUSE_LENGTH_REQUIRED:I = 0x5e8

.field public static final CAUSE_LOOP_DETECTED:I = 0x5f2

.field public static final CAUSE_MESSAGE_TOO_LONG:I = 0x5ff

.field public static final CAUSE_METHOD_NOT_ALLOWED:I = 0x5e2

.field public static final CAUSE_MOVED_PERMANENTLY:I = 0x5dc

.field public static final CAUSE_NOT_ACCEPTABLE:I = 0x5e3

.field public static final CAUSE_NOT_ACCEPTABLE_HERE:I = 0x5f8

.field public static final CAUSE_NOT_FOUND:I = 0x5e1

.field public static final CAUSE_NOT_IMPLEMENTED:I = 0x5fa

.field public static final CAUSE_PAYMENT_REQUIRED:I = 0x5df

.field public static final CAUSE_PROXY_AUTHENTICATION_REQUIRED:I = 0x5e4

.field public static final CAUSE_REQUEST_ENTRY_TOO_LONG:I = 0x5e9

.field public static final CAUSE_REQUEST_TERMINATED:I = 0x5f7

.field public static final CAUSE_REQUEST_TIMEOUT:I = 0x5e5

.field public static final CAUSE_REQUEST_URI_TOO_LONG:I = 0x5ea

.field public static final CAUSE_SERVER_INTERNAL_ERROR:I = 0x5f9

.field public static final CAUSE_SERVICE_UNAVAILABLE:I = 0x5fc

.field public static final CAUSE_SESSION_NOT_ACCEPTABLE:I = 0x603

.field public static final CAUSE_TEMPORARILY_UNAVAILABLE:I = 0x5f0

.field public static final CAUSE_TOO_MANY_HOPS:I = 0x5f3

.field public static final CAUSE_UNAUTHORIZED:I = 0x5de

.field public static final CAUSE_UNSUPPORTED_MEDIA_TYPE:I = 0x5eb

.field public static final CAUSE_UNSUPPORTED_URI_SCHEME:I = 0x5ec

.field public static final CAUSE_VERSION_NOT_SUPPORTED:I = 0x5fe

.field public static final ECC_OVER_WIFI_UNSUPPORTED:I = 0x3ea

.field public static final IMS_EMERGENCY_REREG:I = 0x17c

.field public static final INCOMING_REJECTED_FORWARD:I = 0x3f0

.field public static final INCOMING_REJECTED_LOW_BATTERY:I = 0x3f2

.field public static final INCOMING_REJECTED_NO_COVERAGE:I = 0x3f1

.field public static final INCOMING_REJECTED_NO_FORWARD:I = 0x3ef

.field public static final INCOMING_REJECTED_SPECIAL_HANGUP:I = 0x3f3

.field public static final MTK_DISCONNECTED_CAUSE_BASE:I = 0x3e8

.field public static final OUTGOING_CANCELED_BY_SERVICE:I = 0x3e9

.field public static final VOLTE_SS_DATA_OFF:I = 0x3ec

.field public static final WFC_CALL_DROP_BACKHAUL_CONGESTION:I = 0x3ee

.field public static final WFC_CALL_DROP_BAD_RSSI:I = 0x3ed

.field public static final WFC_HANDOVER_LTE_FAIL:I = 0x193

.field public static final WFC_HANDOVER_WIFI_FAIL:I = 0x192

.field public static final WFC_ISP_PROBLEM:I = 0x191

.field public static final WFC_UNAVAILABLE_IN_CURRENT_LOCATION:I = 0x3eb

.field public static final WFC_WIFI_SIGNAL_LOST:I = 0x190


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cause"    # I

    .line 130
    sparse-switch p0, :sswitch_data_a0

    .line 242
    const-string v0, "UNKNOWN"

    return-object v0

    .line 227
    :sswitch_6
    const-string v0, "CAUSE_SESSION_NOT_ACCEPTABLE"

    return-object v0

    .line 225
    :sswitch_9
    const-string v0, "CAUSE_DOES_NOT_EXIST_ANYWHERE"

    return-object v0

    .line 223
    :sswitch_c
    const-string v0, "CAUSE_DECLINE"

    return-object v0

    .line 221
    :sswitch_f
    const-string v0, "CAUSE_BUSY_EVERYWHERE"

    return-object v0

    .line 219
    :sswitch_12
    const-string v0, "CAUSE_MESSAGE_TOO_LONG"

    return-object v0

    .line 217
    :sswitch_15
    const-string v0, "CAUSE_VERSION_NOT_SUPPORTED"

    return-object v0

    .line 215
    :sswitch_18
    const-string v0, "CAUSE_GATEWAY_TIMEOUT"

    return-object v0

    .line 213
    :sswitch_1b
    const-string v0, "CAUSE_SERVICE_UNAVAILABLE"

    return-object v0

    .line 211
    :sswitch_1e
    const-string v0, "CAUSE_BAD_GATEWAY"

    return-object v0

    .line 209
    :sswitch_21
    const-string v0, "CAUSE_NOT_IMPLEMENTED"

    return-object v0

    .line 207
    :sswitch_24
    const-string v0, "CAUSE_SERVER_INTERNAL_ERROR"

    return-object v0

    .line 205
    :sswitch_27
    const-string v0, "CAUSE_NOT_ACCEPTABLE_HERE"

    return-object v0

    .line 203
    :sswitch_2a
    const-string v0, "CAUSE_REQUEST_TERMINATED"

    return-object v0

    .line 201
    :sswitch_2d
    const-string v0, "CAUSE_BUSY_HERE"

    return-object v0

    .line 199
    :sswitch_30
    const-string v0, "CAUSE_AMBIGUOUS"

    return-object v0

    .line 197
    :sswitch_33
    const-string v0, "CAUSE_ADDRESS_INCOMPLETE"

    return-object v0

    .line 195
    :sswitch_36
    const-string v0, "CAUSE_TOO_MANY_HOPS"

    return-object v0

    .line 193
    :sswitch_39
    const-string v0, "CAUSE_LOOP_DETECTED"

    return-object v0

    .line 191
    :sswitch_3c
    const-string v0, "CAUSE_CALL_TRANSACTION_NOT_EXIST"

    return-object v0

    .line 189
    :sswitch_3f
    const-string v0, "CAUSE_TEMPORARILY_UNAVAILABLE"

    return-object v0

    .line 187
    :sswitch_42
    const-string v0, "CAUSE_INTERVAL_TOO_BRIEF"

    return-object v0

    .line 185
    :sswitch_45
    const-string v0, "CAUSE_EXTENSION_REQUIRED"

    return-object v0

    .line 183
    :sswitch_48
    const-string v0, "CAUSE_BAD_EXTENSION"

    return-object v0

    .line 181
    :sswitch_4b
    const-string v0, "CAUSE_UNSUPPORTED_URI_SCHEME"

    return-object v0

    .line 179
    :sswitch_4e
    const-string v0, "CAUSE_UNSUPPORTED_MEDIA_TYPE"

    return-object v0

    .line 177
    :sswitch_51
    const-string v0, "CAUSE_REQUEST_URI_TOO_LONG"

    return-object v0

    .line 175
    :sswitch_54
    const-string v0, "CAUSE_REQUEST_ENTRY_TOO_LONG"

    return-object v0

    .line 173
    :sswitch_57
    const-string v0, "CAUSE_LENGTH_REQUIRED"

    return-object v0

    .line 171
    :sswitch_5a
    const-string v0, "CAUSE_GONE"

    return-object v0

    .line 169
    :sswitch_5d
    const-string v0, "CAUSE_CONFLICT"

    return-object v0

    .line 167
    :sswitch_60
    const-string v0, "CAUSE_REQUEST_TIMEOUT"

    return-object v0

    .line 165
    :sswitch_63
    const-string v0, "CAUSE_PROXY_AUTHENTICATION_REQUIRED"

    return-object v0

    .line 163
    :sswitch_66
    const-string v0, "CAUSE_NOT_ACCEPTABLE"

    return-object v0

    .line 161
    :sswitch_69
    const-string v0, "CAUSE_METHOD_NOT_ALLOWED"

    return-object v0

    .line 159
    :sswitch_6c
    const-string v0, "CAUSE_NOT_FOUND"

    return-object v0

    .line 157
    :sswitch_6f
    const-string v0, "CAUSE_FORBIDDEN"

    return-object v0

    .line 155
    :sswitch_72
    const-string v0, "CAUSE_PAYMENT_REQUIRED"

    return-object v0

    .line 153
    :sswitch_75
    const-string v0, "CAUSE_UNAUTHORIZED"

    return-object v0

    .line 151
    :sswitch_78
    const-string v0, "CAUSE_BAD_REQUEST"

    return-object v0

    .line 149
    :sswitch_7b
    const-string v0, "CAUSE_MOVED_PERMANENTLY"

    return-object v0

    .line 239
    :sswitch_7e
    const-string v0, "INCOMING_REJECTED_SPECIAL_HANGUP"

    return-object v0

    .line 237
    :sswitch_81
    const-string v0, "INCOMING_REJECTED_LOW_BATTERY"

    return-object v0

    .line 235
    :sswitch_84
    const-string v0, "INCOMING_REJECTED_NO_COVERAGE"

    return-object v0

    .line 233
    :sswitch_87
    const-string v0, "INCOMING_REJECTED_FORWARD"

    return-object v0

    .line 231
    :sswitch_8a
    const-string v0, "INCOMING_REJECTED_NO_FORWARD"

    return-object v0

    .line 140
    :sswitch_8d
    const-string v0, "WFC_CALL_DROP_BACKHAUL_CONGESTION"

    return-object v0

    .line 142
    :sswitch_90
    const-string v0, "WFC_CALL_DROP_BAD_RSSI"

    return-object v0

    .line 145
    :sswitch_93
    const-string v0, "VOLTE_SS_DATA_OFF"

    return-object v0

    .line 138
    :sswitch_96
    const-string v0, "WFC_UNAVAILABLE_IN_CURRENT_LOCATION"

    return-object v0

    .line 136
    :sswitch_99
    const-string v0, "ECC_OVER_WIFI_UNSUPPORTED"

    return-object v0

    .line 133
    :sswitch_9c
    const-string v0, "OUTGOING_CANCELED_BY_SERVICE"

    return-object v0

    nop

    :sswitch_data_a0
    .sparse-switch
        0x3e9 -> :sswitch_9c
        0x3ea -> :sswitch_99
        0x3eb -> :sswitch_96
        0x3ec -> :sswitch_93
        0x3ed -> :sswitch_90
        0x3ee -> :sswitch_8d
        0x3ef -> :sswitch_8a
        0x3f0 -> :sswitch_87
        0x3f1 -> :sswitch_84
        0x3f2 -> :sswitch_81
        0x3f3 -> :sswitch_7e
        0x5dc -> :sswitch_7b
        0x5dd -> :sswitch_78
        0x5de -> :sswitch_75
        0x5df -> :sswitch_72
        0x5e0 -> :sswitch_6f
        0x5e1 -> :sswitch_6c
        0x5e2 -> :sswitch_69
        0x5e3 -> :sswitch_66
        0x5e4 -> :sswitch_63
        0x5e5 -> :sswitch_60
        0x5e6 -> :sswitch_5d
        0x5e7 -> :sswitch_5a
        0x5e8 -> :sswitch_57
        0x5e9 -> :sswitch_54
        0x5ea -> :sswitch_51
        0x5eb -> :sswitch_4e
        0x5ec -> :sswitch_4b
        0x5ed -> :sswitch_48
        0x5ee -> :sswitch_45
        0x5ef -> :sswitch_42
        0x5f0 -> :sswitch_3f
        0x5f1 -> :sswitch_3c
        0x5f2 -> :sswitch_39
        0x5f3 -> :sswitch_36
        0x5f4 -> :sswitch_33
        0x5f5 -> :sswitch_30
        0x5f6 -> :sswitch_2d
        0x5f7 -> :sswitch_2a
        0x5f8 -> :sswitch_27
        0x5f9 -> :sswitch_24
        0x5fa -> :sswitch_21
        0x5fb -> :sswitch_1e
        0x5fc -> :sswitch_1b
        0x5fd -> :sswitch_18
        0x5fe -> :sswitch_15
        0x5ff -> :sswitch_12
        0x600 -> :sswitch_f
        0x601 -> :sswitch_c
        0x602 -> :sswitch_9
        0x603 -> :sswitch_6
    .end sparse-switch
.end method
