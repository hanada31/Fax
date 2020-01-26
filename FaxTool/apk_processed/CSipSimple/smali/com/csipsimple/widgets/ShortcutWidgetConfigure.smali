.class public Lcom/csipsimple/widgets/ShortcutWidgetConfigure;
.super Lcom/actionbarsherlock/app/SherlockListActivity;
.source "ShortcutWidgetConfigure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;
    }
.end annotation


# static fields
.field private static KEY_INDEX:Ljava/lang/String; = null

.field private static KEY_TITLE:Ljava/lang/String; = null

.field public static SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut; = null

.field private static final THIS_FILE:Ljava/lang/String; = "ShortcutWidgetConfigure"

.field private static final WIDGET_PREFS:Ljava/lang/String; = "widget_shortcut_prefs"


# instance fields
.field private appWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 50
    const-string v0, "title"

    sput-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_TITLE:Ljava/lang/String;

    .line 51
    const-string v0, "index"

    sput-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_INDEX:Ljava/lang/String;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const/4 v1, 0x0

    .line 66
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b01e0

    const v4, 0x7f020095

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.DIALER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 67
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b01e1

    const v4, 0x7f020098

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.CALLLOG"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 68
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b01e3

    const v4, 0x7f020097

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.FAVORITES"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 69
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b01e2

    const v4, 0x7f020099

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.phone.action.MESSAGES"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 70
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b0095

    const v4, 0x7f0200c4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.ui.action.PREFS_FAST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 71
    new-instance v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    const v3, 0x7f0b0094

    const v4, 0x1080042

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.csipsimple.ui.action.PREFS_GLOBAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;-><init>(IILandroid/content/Intent;)V

    aput-object v2, v0, v1

    .line 65
    sput-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    .line 44
    return-void
.end method

.method public static deleteWidget(Landroid/content/Context;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "widgetId"    # I

    .prologue
    .line 118
    const-string v2, "widget_shortcut_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public static getActionForWidget(Landroid/content/Context;I)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "widgetId"    # I

    .prologue
    .line 112
    const-string v1, "widget_shortcut_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getPrefsKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "widgetId"    # I

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shortcut"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 80
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 81
    .local v7, "extras":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 83
    const-string v0, "appWidgetId"

    .line 82
    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    .line 88
    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v6, "cancelResultValue":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    .line 90
    iget v1, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    .line 89
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v12, v6}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 94
    .local v11, "r":Landroid/content/res/Resources;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "datas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 101
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 102
    const v3, 0x1090003

    new-array v4, v5, [Ljava/lang/String;

    sget-object v1, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_TITLE:Ljava/lang/String;

    aput-object v1, v4, v12

    .line 103
    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    return-void

    .line 96
    :cond_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_INDEX:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_TITLE:Ljava/lang/String;

    sget-object v1, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    aget-object v1, v1, v8

    iget v1, v1, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->nameRes:I

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 127
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 129
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->KEY_INDEX:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 131
    .local v1, "index":Ljava/lang/Integer;
    iget v5, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    if-eqz v5, :cond_0

    .line 132
    const-string v5, "widget_shortcut_prefs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 133
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget v5, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    invoke-static {v5}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getPrefsKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v4, "resultValue":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    .line 140
    iget v6, p0, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->appWidgetId:I

    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->setResult(ILandroid/content/Intent;)V

    .line 143
    invoke-static {p0}, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->finish()V

    .line 149
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "resultValue":Landroid/content/Intent;
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v5, "ShortcutWidgetConfigure"

    const-string v6, "Invalid widget ID here..."

    invoke-static {v5, v6}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
