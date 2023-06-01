.class Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;
.super Ljava/lang/Object;
.source "MtkUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "File"
.end annotation


# instance fields
.field public mAnrIndex:I

.field private final mEfid:I

.field private final mIndex:I

.field private final mParentTag:I

.field public mPbrRecord:I

.field private final mSfi:I

.field public mTag:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;IIII)V
    .registers 6
    .param p2, "parentTag"    # I
    .param p3, "efid"    # I
    .param p4, "sfi"    # I
    .param p5, "index"    # I

    .line 205
    iput-object p1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->this$0:Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p2, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mParentTag:I

    .line 207
    iput p3, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mEfid:I

    .line 208
    iput p4, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mSfi:I

    .line 209
    iput p5, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mIndex:I

    .line 210
    return-void
.end method


# virtual methods
.method public getEfid()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mEfid:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mIndex:I

    return v0
.end method

.method public getParentTag()I
    .registers 2

    .line 212
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mParentTag:I

    return v0
.end method

.method public getSfi()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mSfi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParentTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mParentTag:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mEfid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mEfid:I

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mSfi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mSfi:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPbrRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mPbrRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAnrIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mAnrIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/phb/MtkUsimPhoneBookManager$File;->mTag:I

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method
