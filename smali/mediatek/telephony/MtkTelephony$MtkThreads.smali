.class public final Lmediatek/telephony/MtkTelephony$MtkThreads;
.super Ljava/lang/Object;
.source "MtkTelephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmediatek/telephony/MtkTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MtkThreads"
.end annotation


# static fields
.field public static final CELL_BROADCAST_THREAD:I = 0x3

.field public static final DATE_SENT:Ljava/lang/String; = "date_sent"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IP_MESSAGE_GUIDE_THREAD:I = 0xa

.field public static final READ_COUNT:Ljava/lang/String; = "readcount"

.field public static final STATUS:Ljava/lang/String; = "status"

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;

.field public static final WAPPUSH_THREAD:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 714
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$MtkThreads;->ID_PROJECTION:[Ljava/lang/String;

    .line 720
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmediatek/telephony/MtkTelephony$MtkThreads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)J
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "backupRestoreIndex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 742
    .local p1, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lmediatek/telephony/MtkTelephony$MtkThreads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 744
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 745
    const-string v1, "backupRestoreIndex"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 748
    :cond_13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 749
    .local v2, "recipient":Ljava/lang/String;
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 750
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 752
    :cond_2d
    const-string v3, "recipient"

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 753
    .end local v2    # "recipient":Ljava/lang/String;
    goto :goto_17

    .line 754
    :cond_33
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 755
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lmediatek/telephony/MtkTelephony$MtkThreads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, v1

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 757
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, "MtkTelephony"

    if-eqz v2, :cond_7f

    .line 759
    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrCreateThreadId for BackupRestore threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 760
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_7a

    .line 767
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 762
    return-wide v3

    .line 764
    :cond_71
    :try_start_71
    const-string v4, "getOrCreateThreadId for BackupRestore returned no rows!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_7a

    .line 767
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 768
    goto :goto_7f

    .line 767
    :catchall_7a
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 768
    throw v3

    .line 770
    :cond_7f
    :goto_7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrCreateThreadId for BackupRestore failed with uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to find or allocate a thread ID."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipient"    # Ljava/lang/String;

    .line 783
    const-string v0, "content://sms/thread_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 785
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 786
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 789
    :cond_14
    const-string v1, "recipient"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 791
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 793
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lmediatek/telephony/MtkTelephony$MtkThreads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 795
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v3, "MtkTelephony"

    if-eqz v2, :cond_4d

    .line 797
    :try_start_30
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 798
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_48

    .line 803
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 798
    return-wide v3

    .line 800
    :cond_3f
    :try_start_3f
    const-string v4, "getThreadId returned no rows!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_48

    .line 803
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 804
    goto :goto_4d

    .line 803
    :catchall_48
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 804
    throw v3

    .line 807
    :cond_4d
    :goto_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getThreadId failed with uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to find a thread ID."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
