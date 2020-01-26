.class public Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NineLinearLayout.java"


# static fields
.field private static superGetAlphaMethod:Ljava/lang/reflect/Method;

.field private static superGetTranslationXMethod:Ljava/lang/reflect/Method;

.field private static superSetAlphaMethod:Ljava/lang/reflect/Method;

.field private static superSetTranslationXMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 24
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->loadStaticMethods()V

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 32
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->loadStaticMethods()V

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStaticMethods()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 39
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 40
    const-string v1, "getAlpha"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    .line 41
    const-string v1, "setAlpha"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    .line 44
    const-string v1, "getTranslationX"

    new-array v2, v4, [Ljava/lang/Class;

    .line 43
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superGetTranslationXMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string v1, "setTranslationX"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 45
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superSetTranslationXMethod:Ljava/lang/reflect/Method;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportAlpha()F
    .locals 3

    .prologue
    .line 63
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 66
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 67
    .local v0, "res":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportTranslationX()F
    .locals 3

    .prologue
    .line 83
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 86
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superGetTranslationXMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 87
    .local v0, "res":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    return-void
.end method

.method public setSupportAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 75
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportTranslationX(F)V
    .locals 4
    .param p1, "translationX"    # F

    .prologue
    .line 95
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->superSetTranslationXMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 53
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->clearAnimation()V

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    return-void

    .line 55
    :cond_1
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
