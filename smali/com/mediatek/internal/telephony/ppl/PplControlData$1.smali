.class Lcom/mediatek/internal/telephony/ppl/PplControlData$1;
.super Ljava/lang/Object;
.source "PplControlData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ppl/PplControlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 328
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplControlData$1;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .registers 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 332
    invoke-static {p1, p2}, Lcom/mediatek/internal/telephony/ppl/PplControlData;->compareSIMFingerprints([B[B)I

    move-result v0

    return v0
.end method
