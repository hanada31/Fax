.class public Lcom/csipsimple/utils/RewriterPlugin;
.super Ljava/lang/Object;
.source "RewriterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;
    }
.end annotation


# static fields
.field private static AVAILABLE_REWRITERS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field private static final THIS_FILE:Ljava/lang/String; = "RewriterPlugin"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAvailableRewriters()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static getAvailableRewriters(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v6, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 82
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.REWRITE_NUMBER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, "it":Landroid/content/Intent;
    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    .end local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    sget-object v6, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    return-object v6

    .line 88
    .restart local v1    # "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "it":Landroid/content/Intent;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v5, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 90
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    const-string v6, "RewriterPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found rewriter "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 92
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 93
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 93
    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "packagedActivityName":Ljava/lang/String;
    sget-object v8, Lcom/csipsimple/utils/RewriterPlugin;->AVAILABLE_REWRITERS:Ljava/util/Map;

    .line 96
    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static rewriteNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 61
    .local v8, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.csipsimple.phone.action.REWRITE_NUMBER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "it":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    new-instance v3, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;

    invoke-direct {v3, p2}, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "resultTreater":Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 67
    const/4 v5, -0x1

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    .line 66
    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {v3}, Lcom/csipsimple/utils/RewriterPlugin$OnRewriteReceiver;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
