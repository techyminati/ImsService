.class Lmediatek/app/MtkSystemServiceRegistry$3;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "MtkSystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmediatek/app/MtkSystemServiceRegistry;->registerOmadmService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Ljava/util/Optional;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lmediatek/app/MtkSystemServiceRegistry$3;->val$constructor:Ljava/lang/reflect/Constructor;

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lmediatek/app/MtkSystemServiceRegistry$3;->createService()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public createService()Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 145
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 146
    .local v0, "optObj":Ljava/util/Optional;
    const/4 v1, 0x0

    .line 148
    .local v1, "obj":Ljava/lang/Object;
    :try_start_5
    iget-object v2, p0, Lmediatek/app/MtkSystemServiceRegistry$3;->val$constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 149
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    move-object v0, v2

    .line 152
    goto :goto_1d

    .line 150
    :catch_15
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MtkSystemServiceRegistry"

    const-string v4, "Exception while creating OmadmManager object"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1d
    return-object v0
.end method
