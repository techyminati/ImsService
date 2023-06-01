.class Lcom/mediatek/server/audio/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/server/audio/ReflectionHelper$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFailure:Lcom/mediatek/server/audio/ReflectionHelper$Result;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AS."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/mediatek/server/audio/ReflectionHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/mediatek/server/audio/ReflectionHelper$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/server/audio/ReflectionHelper$Result;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/mediatek/server/audio/ReflectionHelper;->sFailure:Lcom/mediatek/server/audio/ReflectionHelper$Result;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/mediatek/server/audio/ReflectionHelper$Result;
    .registers 11
    .param p0, "classPackage"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    .line 261
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz p0, :cond_15

    .line 262
    :try_start_3
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-class v2, Lcom/mediatek/server/audio/ReflectionHelper;

    .line 263
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 264
    .local v1, "loader":Ldalvik/system/PathClassLoader;
    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 265
    .local v1, "clazz":Ljava/lang/Class;
    goto :goto_19

    .line 266
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_15
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 268
    .restart local v1    # "clazz":Ljava/lang/Class;
    :goto_19
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/Class;

    .line 269
    .local v2, "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, p3

    if-ge v3, v4, :cond_2b

    .line 270
    aget-object v4, p3, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 272
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 273
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 274
    const/4 v5, 0x0

    invoke-virtual {v3, v5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 275
    .local v5, "ret":Ljava/lang/Object;
    new-instance v6, Lcom/mediatek/server/audio/ReflectionHelper$Result;

    invoke-direct {v6, v4, v5}, Lcom/mediatek/server/audio/ReflectionHelper$Result;-><init>(ZLjava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3d} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3d} :catch_44
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3d} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3d} :catch_3e

    return-object v6

    .line 285
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ret":Ljava/lang/Object;
    :catch_3e
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    goto :goto_67

    .line 283
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_41
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_66

    .line 278
    :catch_44
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[callMethod]Exception occurred to the invoke of throw it className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "methodName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    throw v1

    .line 276
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_64
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    .line 287
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_66
    nop

    .line 288
    :goto_67
    sget-object v1, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[callMethod]Failed to call className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", methodName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v1, Lcom/mediatek/server/audio/ReflectionHelper;->sFailure:Lcom/mediatek/server/audio/ReflectionHelper$Result;

    return-object v1
.end method

.method public static varargs callMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 191
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 192
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz p0, :cond_3f

    if-nez p1, :cond_8

    goto :goto_3f

    .line 197
    :cond_8
    if-eqz p0, :cond_3e

    .line 199
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_e} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_e} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_e} :catch_11

    move-object v0, v3

    .line 200
    const/4 v1, 0x1

    .line 207
    :goto_10
    goto :goto_1a

    .line 205
    :catch_11
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v3

    goto :goto_1a

    .line 203
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_14
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v3

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_10

    .line 201
    :catch_17
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_10

    .line 208
    :goto_1a
    if-nez v1, :cond_3e

    .line 209
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to callMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3e
    return-object v0

    .line 193
    :cond_3f
    :goto_3f
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getField, failed  method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v0
.end method

.method public static callSetBoolean(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 9
    .param p0, "fieldName"    # Ljava/lang/reflect/Field;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "status"    # Ljava/lang/Boolean;

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 220
    .local v1, "success":Z
    const/4 v2, 0x0

    .line 221
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz p0, :cond_4c

    if-nez p1, :cond_8

    goto :goto_4c

    .line 226
    :cond_8
    if-eqz p0, :cond_4b

    .line 228
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 229
    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_2b

    .line 231
    :cond_1e
    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_2b} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2b} :catch_2d

    .line 233
    :goto_2b
    const/4 v1, 0x1

    goto :goto_32

    .line 236
    :catch_2d
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v3

    goto :goto_33

    .line 234
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_30
    move-exception v3

    .line 235
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 238
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_32
    nop

    .line 239
    :goto_33
    if-nez v1, :cond_4b

    .line 240
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to callSetBoolean:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_4b
    return-void

    .line 222
    :cond_4c
    :goto_4c
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSetBoolean, failed  fieldName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public static varargs callStaticMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/mediatek/server/audio/ReflectionHelper$Result;
    .registers 5
    .param p0, "classPackage"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 305
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/server/audio/ReflectionHelper;->callMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/mediatek/server/audio/ReflectionHelper$Result;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 8
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 333
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 334
    .local v1, "paraClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 335
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 336
    new-array v0, v0, [Ljava/lang/Object;

    .line 337
    .local v0, "noObject":[Ljava/lang/Object;
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 338
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1d} :catch_1e

    return v4

    .line 343
    .end local v0    # "noObject":[Ljava/lang/Object;
    .end local v1    # "paraClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_1e
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2d

    .line 341
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_23
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2c

    .line 339
    :catch_28
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 345
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_2c
    nop

    .line 346
    :goto_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs getField(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 9
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 100
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 101
    .local v2, "retField":Ljava/lang/reflect/Field;
    if-eqz p0, :cond_3e

    if-nez p1, :cond_8

    goto :goto_3e

    .line 108
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    .line 109
    if-eqz v2, :cond_17

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_17} :catch_19

    .line 112
    :cond_17
    const/4 v0, 0x1

    .line 115
    goto :goto_1d

    .line 113
    :catch_19
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 116
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    if-nez v0, :cond_3d

    .line 117
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getField, failed Obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", fieldName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3d
    return-object v2

    .line 102
    :cond_3e
    :goto_3e
    sget-object v3, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getField, failed  obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", methodName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v2
.end method

.method public static varargs getFieldObject(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "retField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 128
    .local v1, "retFieldObj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 129
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 130
    .local v3, "t":Ljava/lang/Throwable;
    if-eqz p0, :cond_4a

    if-nez p1, :cond_9

    goto :goto_4a

    .line 136
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    .line 137
    if-eqz v0, :cond_18

    .line 138
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    :cond_18
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_1c} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_1c} :catch_1f

    move-object v1, v4

    .line 141
    const/4 v2, 0x1

    goto :goto_28

    .line 144
    :catch_1f
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_29

    .line 142
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_24
    move-exception v4

    .line 143
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 146
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :goto_28
    nop

    .line 147
    :goto_29
    if-nez v2, :cond_49

    .line 148
    sget-object v4, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldObject, failed Obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "fieldName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_49
    return-object v1

    .line 131
    :cond_4a
    :goto_4a
    sget-object v4, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getField, failed  Obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v1
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "retMethod":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .line 59
    if-eqz v0, :cond_c

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_c} :catch_d

    .line 64
    :cond_c
    goto :goto_11

    .line 62
    :catch_d
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 65
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_11
    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 73
    .local v2, "retMethod":Ljava/lang/reflect/Method;
    const-string v3, ", methodName="

    const-string v4, "getMethod, failed  Obj="

    if-eqz p0, :cond_3e

    if-nez p1, :cond_c

    goto :goto_3e

    .line 80
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v2, v5

    .line 81
    if-eqz v2, :cond_1b

    .line 82
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_1b} :catch_1d

    .line 84
    :cond_1b
    const/4 v0, 0x1

    .line 87
    goto :goto_21

    .line 85
    :catch_1d
    move-exception v5

    .line 86
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 88
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_21
    if-nez v0, :cond_3d

    .line 89
    sget-object v5, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3d
    return-object v2

    .line 74
    :cond_3e
    :goto_3e
    sget-object v5, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object v2
.end method

.method public static getNonPublicField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 321
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 323
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v0, v1

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_a} :catch_b

    .line 327
    goto :goto_f

    .line 325
    :catch_b
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 328
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_f
    return-object v0
.end method

.method public static replaceStaticField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "newInstance"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 167
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 168
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 169
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_12} :catch_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_12} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_14

    .line 171
    const/4 v0, 0x1

    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    goto :goto_1c

    .line 176
    :catch_14
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v2

    goto :goto_1d

    .line 174
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_17
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    move-object v1, v2

    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1c

    .line 172
    :catch_1a
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v2

    .line 178
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1c
    nop

    .line 179
    :goto_1d
    if-nez v0, :cond_45

    .line 180
    sget-object v2, Lcom/mediatek/server/audio/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to replace static field for className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fieldName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",newInstance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_45
    return-void
.end method
