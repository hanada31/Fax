.class public Lcom/actionbarsherlock/internal/utils/Utility11;
.super Lcom/actionbarsherlock/internal/utils/Utility9;
.source "Utility11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/utils/Utility9;-><init>()V

    return-void
.end method


# virtual methods
.method public buildPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/PopupWindow;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 84
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public combineMeasuredStates(II)I
    .locals 1
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 99
    invoke-static {p1, p2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public getActivityLogo(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "mLogo":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 67
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 68
    .local v3, "pm":Landroid/content/pm/PackageManager;
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 70
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 78
    :cond_1
    return-object v2

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Utility"

    const-string v5, "Activity component name not found!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1
    .param p1, "vcfg"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 56
    return-void
.end method

.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "indeterminateDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 61
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "state"    # I

    .prologue
    .line 89
    invoke-static {p1, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/LinearLayout;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 104
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/internal/utils/Utility9;->setLinearLayoutDividerDrawable(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method

.method public viewSetActivated(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    .prologue
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 45
    return-void
.end method
