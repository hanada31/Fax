.class public Lcom/csipsimple/utils/ExtraPlugins;
.super Ljava/lang/Object;
.source "ExtraPlugins.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    }
.end annotation


# static fields
.field private static CACHED_RESOLUTION:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final THIS_FILE:Ljava/lang/String; = "ExtraPlugins"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/csipsimple/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDynPlugins()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/csipsimple/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 102
    invoke-static {}, Lcom/csipsimple/pjsip/PjSipService;->resetCodecs()V

    .line 103
    return-void
.end method

.method public static getDynPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    sget-object v9, Lcom/csipsimple/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 116
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v7, "plugins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 119
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, "it":Landroid/content/Intent;
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 135
    sget-object v9, Lcom/csipsimple/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "it":Landroid/content/Intent;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "plugins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_1
    sget-object v9, Lcom/csipsimple/utils/ExtraPlugins;->CACHED_RESOLUTION:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    return-object v9

    .line 122
    .restart local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "it":Landroid/content/Intent;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "plugins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 123
    .local v8, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 124
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    const-string v10, "android.permission.CONFIGURE_SIP"

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 125
    new-instance v2, Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v2, "cmp":Landroid/content/ComponentName;
    :try_start_0
    new-instance v3, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;

    invoke-direct {v3, p0, v2}, Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 129
    .local v3, "dynInfos":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v3    # "dynInfos":Lcom/csipsimple/utils/ExtraPlugins$DynCodecInfos;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ExtraPlugins"

    const-string v11, "Error while retrieving infos from dyn codec "

    invoke-static {v10, v11, v4}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
