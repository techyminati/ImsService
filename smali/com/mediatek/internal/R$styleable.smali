.class public final Lcom/mediatek/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BladeView:[I

.field public static final BladeView_bladeIndicator:I = 0x6

.field public static final BladeView_bladeIndicatorHeight:I = 0xa

.field public static final BladeView_bladeIndicatorWidth:I = 0x9

.field public static final BladeView_disablePromptColor:I = 0xe

.field public static final BladeView_disableSectionColor:I = 0xc

.field public static final BladeView_enablePromptColor:I = 0xd

.field public static final BladeView_enableSectionColor:I = 0xb

.field public static final BladeView_fullSectionsId:I = 0x3

.field public static final BladeView_indicatorTopsId:I = 0x7

.field public static final BladeView_promptAnimationDuration:I = 0x8

.field public static final BladeView_promptHorzOffset:I = 0x0

.field public static final BladeView_promptVertOffset:I = 0x1

.field public static final BladeView_replacedSectionsId:I = 0x4

.field public static final BladeView_sectionBaselinesId:I = 0x5

.field public static final BladeView_sectionFontSize:I = 0x2

.field public static final BookmarkView:[I

.field public static final BookmarkView_dotGap:I = 0x3

.field public static final BookmarkView_imageDispHeight:I = 0x1

.field public static final BookmarkView_imageDispWidth:I = 0x0

.field public static final BookmarkView_imageReflection:I = 0x4

.field public static final BookmarkView_infoColor:I = 0x7

.field public static final BookmarkView_maxZoomOut:I = 0x5

.field public static final BookmarkView_spaceBetweenItems:I = 0x2

.field public static final BookmarkView_titleColor:I = 0x6

.field public static final DecelerateInterpolatorEx:[I

.field public static final DecelerateInterpolatorEx_factor:I = 0x0

.field public static final DecelerateInterpolatorEx_scale:I = 0x1

.field public static final ImageSwitch:[I

.field public static final ImageSwitch_android_switchMinWidth:I = 0x3

.field public static final ImageSwitch_android_textOff:I = 0x1

.field public static final ImageSwitch_android_textOn:I = 0x0

.field public static final ImageSwitch_android_thumb:I = 0x2

.field public static final ImageSwitch_android_thumbTextPadding:I = 0x4

.field public static final MTKAppWidgetProviderInfo:[I

.field public static final MTKAppWidgetProviderInfo_hasUsedCustomerView:I

.field public static final TextView:[I

.field public static final TextView_smartFit:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1874
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BladeView:[I

    .line 2083
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/mediatek/internal/R$styleable;->BookmarkView:[I

    .line 2192
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/mediatek/internal/R$styleable;->DecelerateInterpolatorEx:[I

    .line 2232
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/mediatek/internal/R$styleable;->ImageSwitch:[I

    .line 2305
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8010011

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/mediatek/internal/R$styleable;->MTKAppWidgetProviderInfo:[I

    .line 2329
    new-array v0, v0, [I

    const v1, 0x801001a

    aput v1, v0, v3

    sput-object v0, Lcom/mediatek/internal/R$styleable;->TextView:[I

    return-void

    nop

    :array_38
    .array-data 4
        0x8010000
        0x8010001
        0x8010002
        0x8010003
        0x8010004
        0x8010005
        0x8010006
        0x8010007
        0x8010008
        0x8010009
        0x801000a
        0x801000b
        0x801000c
        0x801000d
        0x801000e
    .end array-data

    :array_5a
    .array-data 4
        0x8010012
        0x8010013
        0x8010014
        0x8010015
        0x8010016
        0x8010017
        0x8010018
        0x8010019
    .end array-data

    :array_6e
    .array-data 4
        0x801000f
        0x8010010
    .end array-data

    :array_76
    .array-data 4
        0x1010124
        0x1010125
        0x1010142
        0x1010370
        0x1010372
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
