.class public Lcom/csipsimple/widgets/AccountWidgetConfigure;
.super Lcom/csipsimple/ui/account/AccountsChooserListActivity;
.source "AccountWidgetConfigure.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Widget config"

.field private static final WIDGET_PREFS:Ljava/lang/String; = "widget_prefs"


# instance fields
.field private appWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/csipsimple/ui/account/AccountsChooserListActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    .line 34
    return-void
.end method

.method public static deleteWidget(Landroid/content/Context;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "widgetId"    # I

    .prologue
    .line 72
    const-string v2, "widget_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public static getAccountForWidget(Landroid/content/Context;I)J
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "widgetId"    # I

    .prologue
    .line 66
    const-string v1, "widget_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getPrefsKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "widgetId"    # I

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "widget"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAccountClicked(J)V
    .locals 5
    .param p1, "accountId"    # J

    .prologue
    .line 82
    iget v3, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "widget_prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget v3, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    invoke-static {v3}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v2, "resultValue":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    .line 91
    iget v4, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-static {p0}, Lcom/csipsimple/widgets/AccountWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 96
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->finish()V

    .line 100
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "resultValue":Landroid/content/Intent;
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v3, "Widget config"

    const-string v4, "Invalid widget ID here..."

    invoke-static {v3, v4}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/csipsimple/ui/account/AccountsChooserListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 45
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 48
    const-string v3, "appWidgetId"

    .line 47
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    .line 53
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "cancelResultValue":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    .line 55
    iget v4, p0, Lcom/csipsimple/widgets/AccountWidgetConfigure;->appWidgetId:I

    .line 54
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v5, v0}, Lcom/csipsimple/widgets/AccountWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 58
    return-void
.end method
