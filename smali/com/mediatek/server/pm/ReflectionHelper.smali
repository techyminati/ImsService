.class Lcom/mediatek/server/pm/ReflectionHelper;
.super Ljava/lang/Object;
.source "PmsExtImpl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "ret":Ljava/lang/Object;
    if-eqz p0, :cond_39

    .line 1349
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 1350
    const-string v1, "PmsExtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_2a} :catch_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_2a} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_39

    .line 1356
    :catch_2b
    move-exception v1

    .line 1357
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_39

    .line 1354
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_30
    move-exception v1

    .line 1355
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_39

    .line 1352
    :catch_35
    move-exception v1

    .line 1353
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1360
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_39
    :goto_39
    return-object v0
.end method

.method public static getBooleanValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "tarObject"    # Ljava/lang/Object;

    .line 1321
    invoke-static {p0, p1}, Lcom/mediatek/server/pm/ReflectionHelper;->getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1322
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, p2}, Lcom/mediatek/server/pm/ReflectionHelper;->getBooleanValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static getBooleanValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "tarObject"    # Ljava/lang/Object;

    .line 1288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1289
    const/4 v0, 0x0

    .line 1291
    .local v0, "result":Z
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    .line 1296
    :goto_a
    goto :goto_15

    .line 1294
    :catch_b
    move-exception v1

    .line 1295
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_15

    .line 1292
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_10
    move-exception v1

    .line 1293
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a

    .line 1297
    :goto_15
    return v0
.end method

.method public static getIntValue(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1326
    invoke-static {p0, p1}, Lcom/mediatek/server/pm/ReflectionHelper;->getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1327
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, p0}, Lcom/mediatek/server/pm/ReflectionHelper;->getIntValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static getIntValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)I
    .registers 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "tarObject"    # Ljava/lang/Object;

    .line 1301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1302
    const/4 v0, 0x0

    .line 1304
    .local v0, "result":I
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_9} :catch_b

    move v0, v1

    .line 1309
    :goto_a
    goto :goto_15

    .line 1307
    :catch_b
    move-exception v1

    .line 1308
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_15

    .line 1305
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_10
    move-exception v1

    .line 1306
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a

    .line 1310
    :goto_15
    return v0
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 1332
    const/4 v0, 0x0

    .line 1334
    .local v0, "retMethod":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .line 1335
    if-eqz v0, :cond_c

    .line 1336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_c} :catch_d

    .line 1340
    :cond_c
    goto :goto_11

    .line 1338
    :catch_d
    move-exception v1

    .line 1339
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1341
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_11
    return-object v0
.end method

.method public static getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 1265
    const/4 v0, 0x0

    .line 1267
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 1270
    goto :goto_b

    .line 1268
    :catch_7
    move-exception v1

    .line 1269
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 1271
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_b
    return-object v0
.end method

.method public static getNonPublicInnerClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 8
    .param p0, "targetCls"    # Ljava/lang/Class;
    .param p1, "innerClsName"    # Ljava/lang/String;

    .line 1253
    const/4 v0, 0x0

    .line 1254
    .local v0, "innerCls":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 1255
    .local v1, "innerClasses":[Ljava/lang/Class;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 1256
    .local v4, "cls":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1257
    move-object v0, v4

    .line 1258
    goto :goto_1a

    .line 1255
    .end local v4    # "cls":Ljava/lang/Class;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1261
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static getObjectValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "targetObject"    # Ljava/lang/Object;

    .line 1315
    invoke-static {p0, p1}, Lcom/mediatek/server/pm/ReflectionHelper;->getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1316
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0, p2}, Lcom/mediatek/server/pm/ReflectionHelper;->getObjectValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getObjectValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "targetObject"    # Ljava/lang/Object;

    .line 1275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1276
    const/4 v0, 0x0

    .line 1278
    .local v0, "result":Ljava/lang/Object;
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_9} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 1283
    :goto_a
    goto :goto_15

    .line 1281
    :catch_b
    move-exception v1

    .line 1282
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_15

    .line 1279
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_10
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_a

    .line 1284
    :goto_15
    return-object v0
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 1365
    const/4 v0, 0x0

    .line 1367
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 1368
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1369
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_d} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_1c

    .line 1374
    :catch_e
    move-exception v1

    .line 1375
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1d

    .line 1372
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_13
    move-exception v1

    .line 1373
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1c

    .line 1370
    :catch_18
    move-exception v1

    .line 1371
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 1376
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1c
    nop

    .line 1377
    :goto_1d
    return-void
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/mediatek/server/pm/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1381
    return-void
.end method
