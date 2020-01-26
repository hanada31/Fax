.class public Lcom/csipsimple/widgets/ShortcutWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ShortcutWidgetProvider.java"


# static fields
.field static THIS_APPWIDGET:Landroid/content/ComponentName; = null

.field private static final THIS_FILE:Ljava/lang/String; = "ShortcutWidgetProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v6, 0x0

    .line 98
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 99
    const v5, 0x7f03005a

    .line 98
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v3, "views":Landroid/widget/RemoteViews;
    invoke-static {p0, p1}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->getActionForWidget(Landroid/content/Context;I)I

    move-result v0

    .line 103
    .local v0, "action":I
    if-ltz v0, :cond_0

    sget-object v4, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 104
    sget-object v4, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->SHORTCUTS:[Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;

    aget-object v2, v4, v0

    .line 105
    .local v2, "sh":Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;
    iget-object v4, v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->intent:Landroid/content/Intent;

    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 106
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const v4, 0x7f060103

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 107
    const v4, 0x7f0600ff

    iget v5, v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->iconRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 108
    const v4, 0x7f060100

    iget v5, v2, Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;->nameRes:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "sh":Lcom/csipsimple/widgets/ShortcutWidgetConfigure$Shortcut;
    :goto_0
    return-object v3

    .line 110
    :cond_0
    const-string v4, "ShortcutWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid action id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/csipsimple/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 86
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    sget-object v4, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    .line 87
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/csipsimple/widgets/ShortcutWidgetProvider;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v4, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 89
    :cond_0
    sget-object v4, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 90
    .local v0, "appWidgetIds":[I
    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 94
    return-void

    .line 90
    :cond_1
    aget v3, v0, v4

    .line 91
    .local v3, "widgetId":I
    invoke-static {p0, v3}, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 92
    .local v2, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 54
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 57
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 58
    return-void

    .line 54
    :cond_0
    aget v0, p2, v1

    .line 55
    .local v0, "widgetId":I
    invoke-static {p1, v0}, Lcom/csipsimple/widgets/ShortcutWidgetConfigure;->deleteWidget(Landroid/content/Context;I)V

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "act":Ljava/lang/String;
    const-string v2, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_0

    .line 72
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v1, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 75
    .end local v1    # "appWidgetId":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 46
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 50
    return-void

    .line 46
    :cond_0
    aget v1, p3, v2

    .line 47
    .local v1, "widgetId":I
    invoke-static {p1, v1}, Lcom/csipsimple/widgets/ShortcutWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/widget/RemoteViews;
    invoke-virtual {p2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
