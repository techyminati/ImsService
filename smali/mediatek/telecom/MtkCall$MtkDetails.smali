.class public Lmediatek/telecom/MtkCall$MtkDetails;
.super Ljava/lang/Object;
.source "MtkCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telecom/MtkCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtkDetails"
.end annotation


# static fields
.field public static final EVENT_VIDEO_RINGTONE_OPERATION:Ljava/lang/String; = "mediatek.telecom.event.CALL_EVENT_VIDEO_RINGTONE_OPERATION"

.field public static final MTK_CAPABILITY_AUDIO_RINGTONE:I = 0x40000000

.field private static final MTK_CAPABILITY_BASE:I = 0x10000000

.field public static final MTK_CAPABILITY_CALL_RECORDING:I = 0x10000000

.field public static final MTK_CAPABILITY_VIDEO_RINGTONE:I = 0x20000000

.field private static final MTK_PROPERTY_BASE:I = 0x10000

.field public static final MTK_PROPERTY_CDMA:I = 0x20000

.field public static final MTK_PROPERTY_VOICE_RECORDING:I = 0x40000

.field public static final MTK_PROPERTY_VOLTE:I = 0x10000

.field public static final PROPERTY_CONFERENCE_PARTICIPANT:I = 0x200000

.field public static final PROPERTY_GTT_LOCAL:I = 0x80000

.field public static final PROPERTY_GTT_REMOTE:I = 0x100000

.field public static final PROPERTY_RTT_SUPPORT_LOCAL:I = 0x800000

.field public static final PROPERTY_RTT_SUPPORT_REMOTE:I = 0x400000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static can(II)Z
    .registers 3
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 250
    invoke-static {p0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v0

    return v0
.end method

.method public static capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 3
    .param p0, "capabilities"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 109
    const-string v1, " hld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 112
    const-string v1, " sup_hld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_22
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 115
    const-string v1, " mrg_cnf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_2e
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 118
    const-string v1, " swp_cnf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3b
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 121
    const-string v1, " rsp_v_txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_48
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 124
    const-string v1, " mut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_55
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 127
    const-string v1, " mng_cnf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_62
    const/16 v1, 0x100

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 130
    const-string v1, " VTlrx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_6f
    const/16 v1, 0x200

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 133
    const-string v1, " VTltx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_7c
    const/16 v1, 0x400

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 136
    const-string v1, " VTrrx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_89
    const/16 v1, 0x800

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 139
    const-string v1, " VTrtx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_96
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 142
    const-string v1, " !v2a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_a3
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 145
    const-string v1, " spd_aud"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_b0
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 148
    const-string v1, " a2v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_bd
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 151
    const-string v1, " paus_VT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_ca
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 154
    const-string v1, " pull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_d7
    const/high16 v1, 0x10000000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 157
    const-string v1, " m_rcrd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_e4
    const/high16 v1, 0x20000000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 160
    const-string v1, " m_vt_tone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_f1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->can(II)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 163
    const-string v1, " m_ar_tone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_fe
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static deltaCapabilitiesToStringShort(II)Ljava/lang/String;
    .registers 7
    .param p0, "previousCap"    # I
    .param p1, "newCap"    # I

    .line 233
    xor-int v0, p0, p1

    .line 234
    .local v0, "xorProperties":I
    and-int v1, p1, v0

    .line 235
    .local v1, "addedProperties":I
    and-int v2, p0, v0

    .line 236
    .local v2, "removedProperties":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Delta Properties Added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmediatek/telecom/MtkCall$MtkDetails;->capabilitiesToStringShort(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v4, ", Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lmediatek/telecom/MtkCall$MtkDetails;->capabilitiesToStringShort(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static deltaPropertiesToStringShort(II)Ljava/lang/String;
    .registers 7
    .param p0, "previousProp"    # I
    .param p1, "newProp"    # I

    .line 223
    xor-int v0, p0, p1

    .line 224
    .local v0, "xorProperties":I
    and-int v1, p1, v0

    .line 225
    .local v1, "addedProperties":I
    and-int v2, p0, v0

    .line 226
    .local v2, "removedProperties":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Delta Properties Added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmediatek/telecom/MtkCall$MtkDetails;->propertiesToStringShort(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v4, ", Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lmediatek/telecom/MtkCall$MtkDetails;->propertiesToStringShort(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static hasProperty(II)Z
    .registers 3
    .param p0, "properties"    # I
    .param p1, "property"    # I

    .line 261
    invoke-static {p0, p1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v0

    return v0
.end method

.method public static propertiesToStringShort(I)Ljava/lang/String;
    .registers 3
    .param p0, "properties"    # I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 174
    const-string v1, " cnf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_16
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 177
    const-string v1, " gen_cnf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_22
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 180
    const-string v1, " wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_2f
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 183
    const-string v1, " HD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_3c
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 186
    const-string v1, " ecbm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_48
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 189
    const-string v1, " xtrnl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_55
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 192
    const-string v1, " priv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_62
    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 195
    const-string v1, " m_cdma"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_6f
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 198
    const-string v1, " m_rcrding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_7c
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 201
    const-string v1, " m_volte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_89
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 204
    const-string v1, " m_gtt_l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_96
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 207
    const-string v1, " m_gtt_r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_a3
    const/high16 v1, 0x200000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 210
    const-string v1, " m_cnf_chld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_b0
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 213
    const-string v1, " m_rtt_l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_bd
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Lmediatek/telecom/MtkCall$MtkDetails;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 216
    const-string v1, " m_rtt_r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_ca
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
