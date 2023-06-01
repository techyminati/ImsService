.class public Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;
.super Lcom/android/internal/telephony/cat/CatCmdMessage;
.source "MtkCatCmdMessage.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .registers 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 59
    return-void
.end method

.method public static getCmdMsg()Lcom/android/internal/telephony/cat/CatCmdMessage;
    .registers 3

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 124
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    const/16 v1, 0x70

    iput v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 125
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    new-instance v2, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    return-object v1
.end method


# virtual methods
.method public convertToCatCmdMessage(Lcom/android/internal/telephony/cat/CommandParams;Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .registers 6
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "mtkCmdMsg"    # Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 93
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-eqz p2, :cond_6e

    .line 94
    iget-object v1, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 95
    iget-object v1, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 96
    new-instance v1, Lcom/android/internal/telephony/cat/Menu;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/Menu;-><init>()V

    .line 97
    .local v1, "menu":Lcom/android/internal/telephony/cat/Menu;
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v2, :cond_54

    .line 98
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 99
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    .line 100
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 101
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 102
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 103
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget v2, v2, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    iput v2, v1, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 104
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 105
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 106
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 107
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 109
    :cond_54
    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 110
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 111
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 112
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 113
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 114
    iget-object v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 115
    iget-boolean v2, p2, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mLoadIconFailed:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    .line 117
    .end local v1    # "menu":Lcom/android/internal/telephony/cat/Menu;
    :cond_6e
    return-object v0
.end method

.method public getCmdQualifier()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/MtkCatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method
