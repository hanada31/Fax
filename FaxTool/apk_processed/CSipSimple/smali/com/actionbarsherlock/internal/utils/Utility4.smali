.class public Lcom/actionbarsherlock/internal/utils/Utility4;
.super Lcom/actionbarsherlock/internal/utils/UtilityWrapper;
.source "Utility4.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Utility4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;-><init>()V

    return-void
.end method

.method private static loadLogoFromManifest(Landroid/app/Activity;)I
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    const/4 v8, 0x0

    .line 91
    .local v8, "logo":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "thisPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v10, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 95
    .local v10, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {p0, v10, v13}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 96
    .local v2, "am":Landroid/content/res/AssetManager;
    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 98
    .local v12, "xml":Landroid/content/res/XmlResourceParser;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    .line 99
    .local v5, "eventType":I
    :goto_0
    const/4 v13, 0x1

    if-ne v5, v13, :cond_0

    .line 156
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "eventType":I
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "thisPackage":Ljava/lang/String;
    .end local v12    # "xml":Landroid/content/res/XmlResourceParser;
    :goto_1
    return v8

    .line 100
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v5    # "eventType":I
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "thisPackage":Ljava/lang/String;
    .restart local v12    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    const/4 v13, 0x2

    if-ne v5, v13, :cond_1

    .line 101
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "name":Ljava/lang/String;
    const-string v13, "application"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 107
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_2
    if-gez v6, :cond_2

    .line 150
    .end local v6    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    :goto_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v5

    goto :goto_0

    .line 110
    .restart local v6    # "i":I
    .restart local v9    # "name":Ljava/lang/String;
    :cond_2
    const-string v13, "logo"

    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 111
    const/4 v13, 0x0

    invoke-interface {v12, v6, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v8

    .line 112
    goto :goto_3

    .line 107
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 115
    .end local v6    # "i":I
    :cond_4
    const-string v13, "activity"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "activityLogo":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 120
    .local v1, "activityPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 122
    .local v7, "isOurActivity":Z
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .restart local v6    # "i":I
    :goto_4
    if-gez v6, :cond_6

    .line 143
    :cond_5
    if-eqz v7, :cond_1

    goto :goto_1

    .line 126
    :cond_6
    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "attrName":Ljava/lang/String;
    const-string v13, "logo"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 128
    const/4 v13, 0x0

    invoke-interface {v12, v6, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 138
    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 122
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 129
    :cond_9
    const-string v13, "name"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 130
    invoke-interface {v12, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->cleanActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_5

    .line 134
    const/4 v7, 0x1

    goto :goto_5

    .line 152
    .end local v0    # "activityLogo":Ljava/lang/Integer;
    .end local v1    # "activityPackage":Ljava/lang/String;
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v6    # "i":I
    .end local v7    # "isOurActivity":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "thisPackage":Ljava/lang/String;
    .end local v12    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public buildPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/PopupWindow;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 170
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 171
    .local v0, "wrapped":Landroid/content/Context;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v1
.end method

.method public combineMeasuredStates(II)I
    .locals 0
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 192
    return p2
.end method

.method public getActivityLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 70
    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/actionbarsherlock/internal/utils/Utility4;->loadLogoFromManifest(Landroid/app/Activity;)I

    move-result v0

    .line 71
    .local v0, "resId":I
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .end local v0    # "resId":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .param p1, "vcfg"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    return-void
.end method

.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indeterminateDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "state"    # I

    .prologue
    .line 182
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method

.method public setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/LinearLayout;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 214
    instance-of v0, p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    if-eqz v0, :cond_0

    .line 215
    check-cast p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .end local p1    # "l":Landroid/widget/LinearLayout;
    invoke-virtual {p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setLinearLayoutDividerPadding(Landroid/widget/LinearLayout;I)V
    .locals 1
    .param p1, "l"    # Landroid/widget/LinearLayout;
    .param p2, "padding"    # I

    .prologue
    .line 207
    instance-of v0, p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .end local p1    # "l":Landroid/widget/LinearLayout;
    invoke-virtual {p1, p2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setDividerPadding(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public stringToUpper(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public viewSetActivated(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    .prologue
    .line 53
    return-void
.end method
