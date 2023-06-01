.class Lcom/mediatek/internal/telephony/NrMap$CitySQL;
.super Ljava/lang/Object;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CitySQL"
.end annotation


# instance fields
.field private final COLUMN_COUNTRY_NAME:Ljava/lang/String;

.field private final COLUMN_ID:Ljava/lang/String;

.field private final COLUMN_ISO:Ljava/lang/String;

.field private final COLUMN_MCCMNC:Ljava/lang/String;

.field private final COLUMN_NR:Ljava/lang/String;

.field private final TABLE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/NrMap;Landroid/content/Context;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;

    .line 262
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const-string v0, "table_nr_city"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->TABLE_NAME:Ljava/lang/String;

    .line 256
    const-string v0, "_id"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->COLUMN_ID:Ljava/lang/String;

    .line 257
    const-string v0, "mccmnc"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->COLUMN_MCCMNC:Ljava/lang/String;

    .line 258
    const-string v0, "iso"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->COLUMN_ISO:Ljava/lang/String;

    .line 259
    const-string v0, "country_name"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->COLUMN_COUNTRY_NAME:Ljava/lang/String;

    .line 260
    const-string v0, "nr"

    iput-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->COLUMN_NR:Ljava/lang/String;

    .line 263
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 264
    :try_start_22
    const-string v1, "mtk_nr_city_sql.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    # setter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, v1}, Lcom/mediatek/internal/telephony/NrMap;->access$402(Lcom/mediatek/internal/telephony/NrMap;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 265
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Lcom/mediatek/internal/telephony/NrMap;->access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "CREATE TABLE IF NOT EXISTS table_nr_city (_id INTEGER PRIMARY KEY AUTOINCREMENT, mccmnc VARCHAR(8), iso VARCHAR(8), country_name VARCHAR(32), nr INT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_38

    throw p1
.end method


# virtual methods
.method public findByCityName(Ljava/lang/String;)Z
    .registers 15
    .param p1, "country_name"    # Ljava/lang/String;

    .line 318
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "table_nr_city"

    const/4 v5, 0x0

    const-string v6, "country_name=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 319
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 329
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_32

    .line 330
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "findByCityName cursor null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    monitor-exit v0

    return v12

    .line 333
    :cond_32
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 334
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v3, :cond_ca

    .line 335
    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 336
    iget-object v5, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findByCityName Record["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 337
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mccmnc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mccmnc"

    .line 338
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "iso"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "iso"

    .line 339
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "country_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "country_name"

    .line 340
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_37

    .line 342
    .end local v4    # "i":I
    :cond_ca
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 343
    if-lez v3, :cond_d0

    goto :goto_d1

    :cond_d0
    move v1, v12

    :goto_d1
    monitor-exit v0

    return v1

    .line 344
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "count":I
    :catchall_d3
    move-exception v1

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_5 .. :try_end_d5} :catchall_d3

    throw v1
.end method

.method public findByIsoName(Ljava/lang/String;)Z
    .registers 15
    .param p1, "iso"    # Ljava/lang/String;

    .line 288
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 289
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "table_nr_city"

    const/4 v5, 0x0

    const-string v6, "iso=?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 289
    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 299
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_32

    .line 300
    iget-object v1, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "findByIsoName cursor null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    monitor-exit v0

    return v12

    .line 303
    :cond_32
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 304
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v3, :cond_ca

    .line 305
    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    iget-object v5, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findByIsoName Record["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 307
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mccmnc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mccmnc"

    .line 308
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "iso"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "iso"

    .line 309
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "country_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "country_name"

    .line 310
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_37

    .line 312
    .end local v4    # "i":I
    :cond_ca
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 313
    if-lez v3, :cond_d0

    goto :goto_d1

    :cond_d0
    move v1, v12

    :goto_d1
    monitor-exit v0

    return v1

    .line 314
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "count":I
    :catchall_d3
    move-exception v1

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_5 .. :try_end_d5} :catchall_d3

    throw v1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "country_name"    # Ljava/lang/String;
    .param p4, "nr"    # Z

    .line 275
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 276
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "mccmnc"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "iso"

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "country_name"

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "nr"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 281
    :try_start_2b
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql_data:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$400(Lcom/mediatek/internal/telephony/NrMap;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "table_nr_city"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 282
    .local v2, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_41

    const/4 v4, 0x1

    monitor-exit v1

    return v4

    .line 283
    :cond_41
    const/4 v4, 0x0

    monitor-exit v1

    return v4

    .line 284
    .end local v2    # "id":J
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_44

    throw v2
.end method
