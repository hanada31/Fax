.class public Lcom/csipsimple/utils/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Theme"


# instance fields
.field private pInfos:Landroid/content/pm/PackageInfo;

.field private final pm:Landroid/content/pm/PackageManager;

.field private remoteRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v5, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    .line 57
    iput-object v5, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/utils/Theme;->pm:Landroid/content/pm/PackageManager;

    .line 62
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/csipsimple/utils/Theme;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    .line 66
    iget-object v2, p0, Lcom/csipsimple/utils/Theme;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Theme"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Impossible to get resources from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object v5, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    .line 70
    iput-object v5, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    goto :goto_0
.end method

.method public static fixRepeatableBackground(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 241
    invoke-static {}, Lcom/csipsimple/utils/Theme;->needRepeatableFix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/csipsimple/utils/Theme;->fixRepeatableDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static fixRepeatableBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2
    .param p0, "d"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 273
    invoke-static {}, Lcom/csipsimple/utils/Theme;->needRepeatableFix()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0
.end method

.method public static fixRepeatableDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 253
    invoke-static {}, Lcom/csipsimple/utils/Theme;->needRepeatableFix()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local p0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 257
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 258
    .local v1, "layer":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 259
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/csipsimple/utils/Theme;->fixRepeatableDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 262
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/csipsimple/utils/Theme;->fixRepeatableBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method public static getAvailableThemes(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .param p0, "ctxt"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, ""

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 88
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.csipsimple.themes.GET_DRAWABLES"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "it":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "availables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v8, "Theme"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "We found "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "themes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 103
    return-object v7

    .line 92
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v6, "resInfo":Landroid/content/pm/ResolveInfo;
    const-string v9, "Theme"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "We have -- "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 95
    .local v0, "actInfos":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v2, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    .local v4, "label":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 98
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "label":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 100
    .restart local v4    # "label":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCurrentTheme(Landroid/content/Context;)Lcom/csipsimple/utils/Theme;
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v1, "selected_theme"

    invoke-static {p0, v1}, Lcom/csipsimple/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "themeName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/csipsimple/utils/Theme;

    invoke-direct {v1, p0, v0}, Lcom/csipsimple/utils/Theme;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static needRepeatableFix()Z
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/csipsimple/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;
    .param p2, "res"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0, p2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_0
    return-void
.end method

.method public applyBackgroundStateListDrawable(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_press"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 145
    .local v2, "pressed":Landroid/graphics/drawable/Drawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_focus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    .local v0, "focused":Landroid/graphics/drawable/Drawable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_normal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    .local v1, "normal":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 148
    move-object v0, v2

    .line 150
    :cond_0
    const/4 v3, 0x0

    .line 151
    .local v3, "std":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 152
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    .end local v3    # "std":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 153
    .restart local v3    # "std":Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 154
    new-array v4, v7, [I

    const v5, 0x101009c

    aput v5, v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 155
    new-array v4, v6, [I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_1
    if-eqz v3, :cond_2

    .line 159
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_2
    return-void
.end method

.method public applyBackgroundStateListSelectableDrawable(Landroid/view/View;Ljava/lang/String;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_press"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    .local v1, "pressed":Landroid/graphics/drawable/Drawable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "focused":Landroid/graphics/drawable/Drawable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_selected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 168
    .local v2, "selected":Landroid/graphics/drawable/Drawable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_unselected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 169
    .local v4, "unselected":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 170
    move-object v0, v1

    .line 172
    :cond_0
    const/4 v3, 0x0

    .line 173
    .local v3, "std":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 174
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    .end local v3    # "std":Landroid/graphics/drawable/StateListDrawable;
    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 175
    .restart local v3    # "std":Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 176
    new-array v5, v8, [I

    const v6, 0x101009c

    aput v6, v5, v7

    invoke-virtual {v3, v5, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 177
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v3, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 178
    new-array v5, v7, [I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_1
    if-eqz v3, :cond_2

    .line 182
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v5

    invoke-virtual {v5, p1, v3}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_2
    return-void
.end method

.method public applyImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "subV"    # Landroid/widget/ImageView;
    .param p2, "res"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0, p2}, Lcom/csipsimple/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    return-void
.end method

.method public applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 189
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_top"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 194
    .local v6, "marginTop":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_bottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 195
    .local v3, "marginBottom":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_right"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 196
    .local v5, "marginRight":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_left"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 197
    .local v4, "marginLeft":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 200
    :cond_0
    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 203
    :cond_1
    if-eqz v5, :cond_2

    .line 204
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 206
    :cond_2
    if-eqz v4, :cond_3

    .line 207
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 209
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-void

    .line 190
    .end local v3    # "marginBottom":Ljava/lang/Integer;
    .end local v4    # "marginLeft":Ljava/lang/Integer;
    .end local v5    # "marginRight":Ljava/lang/Integer;
    .end local v6    # "marginTop":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v7, "Theme"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Trying to apply layout params to invalid layout "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/csipsimple/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public applyLayoutSize(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 217
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    .local v2, "width":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_height"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/csipsimple/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    .local v0, "height":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    :cond_0
    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void
.end method

.method public getDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    const-string v2, "dimen"

    iget-object v3, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "id":I
    if-lez v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    .end local v0    # "id":I
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const-string v1, "Theme"

    const-string v2, "No results yet !! "

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->remoteRes:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "id":I
    iget-object v1, p0, Lcom/csipsimple/utils/Theme;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/csipsimple/utils/Theme;->pInfos:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    .end local v0    # "id":I
    :goto_0
    return-object v1

    .line 111
    :cond_0
    const-string v1, "Theme"

    const-string v2, "No results yet !! "

    invoke-static {v1, v2}, Lcom/csipsimple/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method
