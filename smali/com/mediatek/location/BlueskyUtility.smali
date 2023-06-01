.class public Lcom/mediatek/location/BlueskyUtility;
.super Ljava/lang/Object;
.source "BlueskyUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBlueskyBroadcast(Landroid/content/Context;)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    move-object/from16 v0, p0

    const-string v1, "com.google.android.gms.phenotype.FLAG_OVERRIDE"

    .line 48
    .local v1, "ACTION_GMS_FLAG_OVERRIDE":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.phenotype.FLAG_OVERRIDE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v4, "package"

    const-string v5, "com.google.android.location"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 50
    const-string v6, "user"

    const-string v7, "*"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 51
    const-string v8, "flags"

    const-string v9, "Bluesky__bluesky_enable_for_driving"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    const-string v9, "values"

    const-string v10, "true"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 53
    const-string v11, "types"

    const-string v12, "boolean"

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 54
    .local v2, "intent":Landroid/content/Intent;
    const-string v13, "com.google.android.gms"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v14, Landroid/os/UserHandle;

    const/4 v15, -0x2

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 57
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 59
    invoke-virtual {v14, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 60
    const-string v15, "Bluesky__driving_max_speed_for_corrections_mps"

    invoke-virtual {v14, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 61
    const-string v15, "60"

    invoke-virtual {v14, v9, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 62
    const-string v15, "long"

    invoke-virtual {v14, v11, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance v14, Landroid/os/UserHandle;

    const/4 v15, -0x2

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 66
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 69
    const-string v4, "Bluesky__driving_ignore_chipset_driving_capability_bit"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 74
    return-void
.end method
