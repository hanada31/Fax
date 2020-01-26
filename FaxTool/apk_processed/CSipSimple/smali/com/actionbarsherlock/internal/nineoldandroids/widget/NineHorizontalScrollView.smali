.class public Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "NineHorizontalScrollView.java"


# static fields
.field private static superGetAlphaMethod:Ljava/lang/reflect/Method;

.field private static superSetAlphaMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 19
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 20
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->loadStaticMethods()V

    .line 21
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStaticMethods()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    const-class v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;

    .line 26
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 27
    const-string v1, "getAlpha"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    .line 28
    const-string v1, "setAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportAlpha()F
    .locals 3

    .prologue
    .line 46
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 49
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 50
    .local v0, "res":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 69
    return-void
.end method

.method public setSupportAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 58
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->superSetAlphaMethod:Ljava/lang/reflect/Method;

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
    .line 35
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 36
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->clearAnimation()V

    .line 42
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 43
    return-void

    .line 38
    :cond_1
    if-nez p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineHorizontalScrollView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
