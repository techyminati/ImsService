.class Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;IFZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # F
    .param p4, "arg2"    # Z

    .line 58
    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;"
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;->this$0:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;->this$0:Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    # getter for: Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->access$000(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
