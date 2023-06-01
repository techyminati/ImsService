.class public final enum Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
.super Ljava/lang/Enum;
.source "MtkIccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkIccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_EXCEL_GG_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum LOCKED_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

.field public static final enum UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 230
    new-instance v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v1, "UIM_CARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 231
    new-instance v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v4, "SIM_CARD"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 232
    new-instance v4, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v6, "UIM_SIM_CARD"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 233
    new-instance v6, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v8, "UNKNOW_CARD"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 234
    new-instance v8, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v10, "CT_3G_UIM_CARD"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_3G_UIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 235
    new-instance v10, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v12, "CT_UIM_SIM_CARD"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_UIM_SIM_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 236
    new-instance v12, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v14, "PIN_LOCK_CARD"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->PIN_LOCK_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 237
    new-instance v14, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v13, "CT_4G_UICC_CARD"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 238
    new-instance v13, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v15, "NOT_CT_UICC_CARD"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 239
    new-instance v15, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v11, "CT_EXCEL_GG_CARD"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_EXCEL_GG_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 240
    new-instance v11, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v9, "LOCKED_CARD"

    const/16 v5, 0x12

    invoke-direct {v11, v9, v7, v5}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->LOCKED_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 241
    new-instance v5, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    const-string v9, "CARD_NOT_INSERTED"

    const/16 v7, 0xb

    const/16 v3, 0xff

    invoke-direct {v5, v9, v7, v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CARD_NOT_INSERTED:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 228
    const/16 v3, 0xc

    new-array v3, v3, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    aput-object v5, v3, v7

    sput-object v3, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 278
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->mValue:I

    .line 279
    return-void
.end method

.method public static getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .registers 5
    .param p0, "cardTypeInt"    # I

    .line 256
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->UNKNOW_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    .line 257
    .local v0, "cardType":Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    invoke-static {}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    move-result-object v1

    .line 258
    .local v1, "cardTypes":[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    if-eqz v1, :cond_1a

    .line 259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 260
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_17

    .line 261
    aget-object v0, v1, v2

    .line 262
    goto :goto_1a

    .line 259
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 266
    .end local v2    # "i":I
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 228
    const-class v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;
    .registers 1

    .line 228
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->$VALUES:[Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    invoke-virtual {v0}, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 246
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->mValue:I

    return v0
.end method

.method public is4GCard()Z
    .registers 2

    .line 274
    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->CT_4G_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;->NOT_CT_UICC_CARD:Lcom/mediatek/internal/telephony/MtkIccCardConstants$CardType;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
