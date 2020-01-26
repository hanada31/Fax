.class public Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;
.super Landroid/widget/FrameLayout;
.source "NineFrameLayout.java"


# static fields
.field private static superGetAlphaMethod:Ljava/lang/reflect/Method;

.field private static superGetTranslationYMethod:Ljava/lang/reflect/Method;

.field private static superOnHoverEventMethod:Ljava/lang/reflect/Method;

.field private static superSetAlphaMethod:Ljava/lang/reflect/Method;

.field private static superSetTranslationYMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    .line 18
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetTranslationYMethod:Ljava/lang/reflect/Method;

    .line 19
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetTranslationYMethod:Ljava/lang/reflect/Method;

    .line 20
    sput-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superOnHoverEventMethod:Ljava/lang/reflect/Method;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 25
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->loadStaticMethods()V

    .line 26
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->loadStaticMethods()V

    .line 31
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->loadStaticMethods()V

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStaticMethods()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const-class v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;

    .line 42
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 43
    const-string v1, "getAlpha"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    .line 44
    const-string v1, "setAlpha"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string v1, "getTranslationY"

    new-array v2, v4, [Ljava/lang/Class;

    .line 45
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetTranslationYMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v1, "setTranslationY"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 47
    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetTranslationYMethod:Ljava/lang/reflect/Method;

    .line 52
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 53
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superOnHoverEventMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 54
    const-string v1, "onHoverEvent"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/view/MotionEvent;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyGetSuperclassMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superOnHoverEventMethod:Ljava/lang/reflect/Method;

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public getSupportAlpha()F
    .locals 3

    .prologue
    .line 71
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 74
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 75
    .local v0, "res":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportTranslationY()F
    .locals 3

    .prologue
    .line 91
    sget-boolean v1, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 94
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superGetTranslationYMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 95
    .local v0, "res":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSupportAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 83
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSupportTranslationY(F)V
    .locals 4
    .param p1, "translationY"    # F

    .prologue
    .line 102
    sget-boolean v0, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->superSetTranslationYMethod:Ljava/lang/reflect/Method;

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
    .line 60
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    .line 61
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->clearAnimation()V

    .line 67
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 68
    return-void

    .line 63
    :cond_1
    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->mProxy:Lcom/actionbarsherlock/internal/nineoldandroids/view/animation/AnimatorProxy;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/nineoldandroids/widget/NineFrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
