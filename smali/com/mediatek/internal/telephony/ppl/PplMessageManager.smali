.class public Lcom/mediatek/internal/telephony/ppl/PplMessageManager;
.super Ljava/lang/Object;
.source "PplMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ppl/PplMessageManager$PendingMessage;,
        Lcom/mediatek/internal/telephony/ppl/PplMessageManager$Type;
    }
.end annotation


# static fields
.field private static final SMS_PATTERNS:[Ljava/lang/String;

.field public static final SMS_SENT_ACTION:Ljava/lang/String; = "com.mediatek.ppl.SMS_SENT"

.field private static final SMS_TEMPLATES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessagePatterns:[Ljava/util/regex/Pattern;

.field private final mMessageTemplates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 30
    const-string v0, "\u6211\u7684\u624b\u673a\u53ef\u80fd\u88ab\u76d7\uff0c\u8bf7\u4fdd\u7559\u53d1\u9001\u6b64\u77ed\u4fe1\u7684\u53f7\u7801\u3002"

    const-string v1, "#suoding#"

    const-string v2, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u9501\u5c4f\u6307\u4ee4\uff0c\u9501\u5c4f\u6210\u529f\u3002"

    const-string v3, "#jiesuo#"

    const-string v4, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u89e3\u9501\u6307\u4ee4\uff0c\u89e3\u9501\u6210\u529f\u3002"

    const-string v5, "#mima#"

    const-string v6, "\u60a8\u7684\u624b\u673a\u9632\u76d7\u5bc6\u7801\u4e3a%s\u3002"

    const-string v7, "#xiaohui#"

    const-string v8, "\u8fdc\u7a0b\u5220\u9664\u6570\u636e\u5df2\u5f00\u59cb\u3002"

    const-string v9, "\u8fdc\u7a0b\u6570\u636e\u5220\u9664\u5df2\u5b8c\u6210\uff0c\u60a8\u7684\u9690\u79c1\u5f97\u5230\u4fdd\u62a4\uff0c\u8bf7\u653e\u5fc3\u3002"

    const-string v10, "\u6211\u5f00\u542f\u4e86\u624b\u673a\u9632\u76d7\u529f\u80fd\uff0c\u5df2\u5c06\u4f60\u7684\u624b\u673a\u53f7\u7801\u8bbe\u7f6e\u4e3a\u7d27\u6025\u8054\u7cfb\u4eba\u53f7\u7801\uff0c\u8fd9\u6837\u624b\u673a\u4e22\u5931\u4e5f\u80fd\u591f\u8fdc\u7a0b\u63a7\u5236\u5566\u3002\n\u4ee5\u4e0b\u662f\u76f8\u5173\u6307\u4ee4\uff1a\n\u8fdc\u7a0b\u9501\u5b9a\uff1a #suoding#\n\u8fdc\u7a0b\u9500\u6bc1\u6570\u636e\uff1a #xiaohui#\n\u627e\u56de\u5bc6\u7801\uff1a #mima#"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_TEMPLATES:[Ljava/lang/String;

    .line 45
    const-string v1, "\u6211\u7684\u624b\u673a\u53ef\u80fd\u88ab\u76d7\uff0c\u8bf7\u4fdd\u7559\u53d1\u9001\u6b64\u77ed\u4fe1\u7684\u53f7\u7801\u3002"

    const-string v2, " *#suoding# *"

    const-string v3, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u9501\u5c4f\u6307\u4ee4\uff0c\u9501\u5c4f\u6210\u529f\u3002"

    const-string v4, " *#jiesuo# *"

    const-string v5, "\u5df2\u63a5\u53d7\u5230\u60a8\u7684\u89e3\u9501\u6307\u4ee4\uff0c\u89e3\u9501\u6210\u529f\u3002"

    const-string v6, " *#mima# *"

    const-string v7, "\u60a8\u7684\u624b\u673a\u9632\u76d7\u5bc6\u7801\u4e3a[0-9]*\u3002"

    const-string v8, " *#xiaohui# *"

    const-string v9, "\u8fdc\u7a0b\u5220\u9664\u6570\u636e\u5df2\u5f00\u59cb\u3002"

    const-string v10, "\u8fdc\u7a0b\u6570\u636e\u5220\u9664\u5df2\u5b8c\u6210\uff0c\u60a8\u7684\u9690\u79c1\u5f97\u5230\u4fdd\u62a4\uff0c\u8bf7\u653e\u5fc3\u3002"

    const-string v11, "\u6211\u5f00\u542f\u4e86\u624b\u673a\u9632\u76d7\u529f\u80fd\uff0c\u5df2\u5c06\u4f60\u7684\u624b\u673a\u53f7\u7801\u8bbe\u7f6e\u4e3a\u7d27\u6025\u8054\u7cfb\u4eba\u53f7\u7801\uff0c\u8fd9\u6837\u624b\u673a\u4e22\u5931\u4e5f\u80fd\u591f\u8fdc\u7a0b\u63a7\u5236\u5566\u3002\n\u4ee5\u4e0b\u662f\u76f8\u5173\u6307\u4ee4\uff1a\n\u8fdc\u7a0b\u9501\u5b9a\uff1a #suoding#\n\u8fdc\u7a0b\u9500\u6bc1\u6570\u636e\uff1a #xiaohui#\n\u627e\u56de\u5bc6\u7801\uff1a #mima#"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    .local v0, "resources":Landroid/content/res/Resources;
    sget-object v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_TEMPLATES:[Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessageTemplates:[Ljava/lang/String;

    .line 193
    sget-object v1, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->SMS_PATTERNS:[Ljava/lang/String;

    .line 194
    .local v1, "patternStrings":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Ljava/util/regex/Pattern;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v1

    if-ge v2, v3, :cond_26

    .line 196
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    aget-object v4, v1, v2

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 198
    .end local v2    # "i":I
    :cond_26
    return-void
.end method


# virtual methods
.method public varargs buildMessage(B[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # B
    .param p2, "args"    # [Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->getMessageTemplate(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTemplate(B)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # B

    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessageTemplates:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMessageType(Ljava/lang/String;)B
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 210
    const/4 v0, -0x1

    .line 211
    .local v0, "result":B
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ppl/PplMessageManager;->mMessagePatterns:[Ljava/util/regex/Pattern;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 212
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 213
    move v0, v1

    .line 214
    goto :goto_19

    .line 211
    :cond_15
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_2

    .line 217
    .end local v1    # "i":B
    :cond_19
    :goto_19
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1f

    .line 218
    const/16 v0, 0xa

    .line 220
    :cond_1f
    return v0
.end method
