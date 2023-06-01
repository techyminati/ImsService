.class synthetic Lcom/mediatek/internal/telephony/cat/MtkCatService$3;
.super Ljava/lang/Object;
.source "MtkCatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/MtkCatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$cat$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 934
    invoke-static {}, Lcom/android/internal/telephony/cat/ResultCode;->values()[Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v2, 0x2

    :try_start_15
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    const/4 v3, 0x3

    :try_start_22
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    const/4 v4, 0x4

    :try_start_2f
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    const/4 v5, 0x5

    :try_start_3c
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    const/4 v6, 0x6

    :try_start_49
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    const/4 v7, 0x7

    :try_start_56
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    const/16 v8, 0x8

    :try_start_64
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    const/16 v9, 0x9

    :try_start_72
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    const/16 v10, 0xa

    :try_start_80
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v11, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    const/16 v11, 0xb

    :try_start_8e
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    const/16 v12, 0xc

    :try_start_9c
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v13, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v13}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    const/16 v13, 0xd

    :try_start_aa
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v14, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    const/16 v14, 0xe

    :try_start_b8
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v15, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    const/16 v15, 0xf

    :try_start_c6
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v16, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    const/16 v16, 0x10

    :try_start_d4
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v17, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v17

    aput v16, v0, v17
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    const/16 v17, 0x11

    :try_start_e2
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v18, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v18

    aput v17, v0, v18
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    const/16 v18, 0x12

    :try_start_f0
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v19, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v19

    aput v18, v0, v19
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    const/16 v19, 0x13

    :try_start_fe
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    sget-object v20, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v20

    aput v19, v0, v20
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_108} :catch_109

    goto :goto_10a

    :catch_109
    move-exception v0

    .line 225
    :goto_10a
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    :try_start_113
    sget-object v20, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11b} :catch_11c

    goto :goto_11d

    :catch_11c
    move-exception v0

    :goto_11d
    :try_start_11d
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_127} :catch_128

    goto :goto_129

    :catch_128
    move-exception v0

    :goto_129
    :try_start_129
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_134

    goto :goto_135

    :catch_134
    move-exception v0

    :goto_135
    :try_start_135
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_135 .. :try_end_13f} :catch_140

    goto :goto_141

    :catch_140
    move-exception v0

    :goto_141
    :try_start_141
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_14b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_141 .. :try_end_14b} :catch_14c

    goto :goto_14d

    :catch_14c
    move-exception v0

    :goto_14d
    :try_start_14d
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_157
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14d .. :try_end_157} :catch_158

    goto :goto_159

    :catch_158
    move-exception v0

    :goto_159
    :try_start_159
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_163} :catch_164

    goto :goto_165

    :catch_164
    move-exception v0

    :goto_165
    :try_start_165
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_170

    goto :goto_171

    :catch_170
    move-exception v0

    :goto_171
    :try_start_171
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_171 .. :try_end_17b} :catch_17c

    goto :goto_17d

    :catch_17c
    move-exception v0

    :goto_17d
    :try_start_17d
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_187
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_187} :catch_188

    goto :goto_189

    :catch_188
    move-exception v0

    :goto_189
    :try_start_189
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_193
    .catch Ljava/lang/NoSuchFieldError; {:try_start_189 .. :try_end_193} :catch_194

    goto :goto_195

    :catch_194
    move-exception v0

    :goto_195
    :try_start_195
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_1a0

    goto :goto_1a1

    :catch_1a0
    move-exception v0

    :goto_1a1
    :try_start_1a1
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_1ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a1 .. :try_end_1ab} :catch_1ac

    goto :goto_1ad

    :catch_1ac
    move-exception v0

    :goto_1ad
    :try_start_1ad
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_1b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ad .. :try_end_1b7} :catch_1b8

    goto :goto_1b9

    :catch_1b8
    move-exception v0

    :goto_1b9
    :try_start_1b9
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v15, v0, v1
    :try_end_1c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b9 .. :try_end_1c3} :catch_1c4

    goto :goto_1c5

    :catch_1c4
    move-exception v0

    :goto_1c5
    :try_start_1c5
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c5 .. :try_end_1cf} :catch_1d0

    goto :goto_1d1

    :catch_1d0
    move-exception v0

    :goto_1d1
    :try_start_1d1
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_1db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1db} :catch_1dc

    goto :goto_1dd

    :catch_1dc
    move-exception v0

    :goto_1dd
    :try_start_1dd
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_1e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dd .. :try_end_1e7} :catch_1e8

    goto :goto_1e9

    :catch_1e8
    move-exception v0

    :goto_1e9
    :try_start_1e9
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aput v19, v0, v1
    :try_end_1f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e9 .. :try_end_1f3} :catch_1f4

    goto :goto_1f5

    :catch_1f4
    move-exception v0

    :goto_1f5
    :try_start_1f5
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_201
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f5 .. :try_end_201} :catch_202

    goto :goto_203

    :catch_202
    move-exception v0

    :goto_203
    :try_start_203
    sget-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatService$3;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_20f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20f} :catch_210

    goto :goto_211

    :catch_210
    move-exception v0

    :goto_211
    return-void
.end method
